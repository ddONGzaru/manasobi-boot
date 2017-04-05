package io.manasobi.core.logging;

import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.classic.spi.StackTraceElementProxy;
import ch.qos.logback.core.UnsynchronizedAppenderBase;
import ch.qos.logback.core.util.ContextUtil;
import io.manasobi.config.PropsConfig;
import io.manasobi.core.domain.log.BaseErrorLog;
import io.manasobi.core.domain.log.BaseErrorLogService;
import io.manasobi.utils.JsonUtils;
import io.manasobi.utils.MDCUtils;
import io.manasobi.utils.PhaseUtils;
import lombok.Getter;
import lombok.Setter;
import net.gpedro.integrations.slack.SlackApi;
import net.gpedro.integrations.slack.SlackAttachment;
import net.gpedro.integrations.slack.SlackField;
import net.gpedro.integrations.slack.SlackMessage;
import org.apache.commons.lang3.StringUtils;

import javax.annotation.PostConstruct;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Setter
@Getter
public class LogbackAppender extends UnsynchronizedAppenderBase<ILoggingEvent> {

    private BaseErrorLogService errorLogService;

    private PropsConfig propsConfig;

    private PropsConfig.Logging loggingConfig;

    public LogbackAppender(BaseErrorLogService errorLogService, PropsConfig propsConfig) {
        this.errorLogService = errorLogService;
        this.propsConfig = propsConfig;
        this.loggingConfig = propsConfig.getLoggingConfig();
    }

    @PostConstruct
    public void created() {
        this.loggingConfig = propsConfig.getLoggingConfig();
    }

    @Override
    public void doAppend(ILoggingEvent eventObject) {
        super.doAppend(eventObject);
    }

    @Override
    protected void append(ILoggingEvent loggingEvent) {

        if (loggingEvent.getLevel().isGreaterOrEqual(loggingConfig.getLevel())) {

            BaseErrorLog errorLog = getErrorLog(loggingEvent);

            if (loggingConfig.getDatabase().isEnabled()) {
                if (loggingConfig.getSlack().isEnabled()) {
                    errorLog.setAlertYn("Y");
                }
                toDatabase(errorLog);
            }

            if (loggingConfig.getSlack().isEnabled()) {
                toSlack(errorLog);
            }

            if (loggingConfig.getJandi().isEnable()) {
                toJandi(errorLog);
            }
        }
    }

    private void toJandi(BaseErrorLog errorLog) {

    }

    private void toSlack(BaseErrorLog errorLog) {
        SlackApi slackApi = new SlackApi(loggingConfig.getSlack().getWebHookUrl());

        List<SlackField> fields = new ArrayList<>();

        SlackField message = new SlackField();
        message.setTitle("에러내용");
        message.setValue(errorLog.getMessage());
        message.setShorten(false);
        fields.add(message);

        SlackField path = new SlackField();
        path.setTitle("요청 URL");
        path.setValue(errorLog.getPath());
        path.setShorten(false);
        fields.add(path);

        SlackField date = new SlackField();
        date.setTitle("발생시간");

        LocalDateTime localDateTime = LocalDateTime.ofInstant(errorLog.getErrorDatetime(), ZoneId.of("Asia/Seoul"));
        date.setValue(localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        date.setShorten(true);
        fields.add(date);

        SlackField profile = new SlackField();
        profile.setTitle("프로파일");
        profile.setValue(errorLog.getPhase());
        profile.setShorten(true);
        fields.add(profile);

        SlackField system = new SlackField();
        system.setTitle("시스템명");
        system.setValue(errorLog.getSystem());
        system.setShorten(true);
        fields.add(system);

        SlackField serverName = new SlackField();
        serverName.setTitle("서버명");
        serverName.setValue(errorLog.getServerName());
        serverName.setShorten(true);
        fields.add(serverName);

        SlackField hostName = new SlackField();
        hostName.setTitle("호스트명");
        hostName.setValue(errorLog.getHostName());
        hostName.setShorten(false);
        fields.add(hostName);

        if (errorLog.getUserInfo() != null) {
            SlackField userInformation = new SlackField();
            userInformation.setTitle("사용자 정보");
            userInformation.setValue(JsonUtils.toPrettyJson(errorLog.getUserInfo()));
            userInformation.setShorten(false);
            fields.add(userInformation);
        }

        String title = errorLog.getMessage();

        SlackAttachment slackAttachment = new SlackAttachment();
        slackAttachment.setFallback("에러발생!! 확인요망");
        slackAttachment.setColor("danger");
        slackAttachment.setFields(fields);
        slackAttachment.setTitle(title);

        if (StringUtils.isNotEmpty(propsConfig.getLoggingConfig().getAdminUrl())) {
            slackAttachment.setTitleLink(propsConfig.getLoggingConfig().getAdminUrl());
        }

        slackAttachment.setText(errorLog.getTrace());

        SlackMessage slackMessage = new SlackMessage("");

        String channel = loggingConfig.getSlack().getChannel();

        if (!loggingConfig.getSlack().getChannel().startsWith("#")) {
            channel = "#" + channel;
        }

        slackMessage.setChannel(channel);
        slackMessage.setUsername(String.format("[%s] - ErrorReportBot", errorLog.getPhase()));
        slackMessage.setIcon(":exclamation:");
        slackMessage.setAttachments(Collections.singletonList(slackAttachment));

        slackApi.call(slackMessage);
    }

    private void toDatabase(BaseErrorLog errorLog) {
        errorLogService.save(errorLog);
    }

    public BaseErrorLog getErrorLog(ILoggingEvent loggingEvent) {

        BaseErrorLog errorLog = new BaseErrorLog();
        errorLog.setPhase(PhaseUtils.phase());
        errorLog.setSystem(propsConfig.getSystemName());
        errorLog.setLoggerName(loggingEvent.getLoggerName());
        errorLog.setServerName(propsConfig.getServerName());
        errorLog.setHostName(getHostName());
        errorLog.setPath(MDCUtils.get(MDCUtils.REQUEST_URI_MDC));
        errorLog.setMessage(loggingEvent.getFormattedMessage());
        errorLog.setHeaderMap(MDCUtils.get(MDCUtils.HEADER_MAP_MDC));
        errorLog.setParameterMap(MDCUtils.get(MDCUtils.PARAMETER_BODY_MDC));
        errorLog.setUserInfo(MDCUtils.get(MDCUtils.USER_INFO_MDC));

        if (loggingEvent.getThrowableProxy() != null) {
            errorLog.setTrace(getStackTrace(loggingEvent.getThrowableProxy().getStackTraceElementProxyArray()));
        }

        return errorLog;
    }

    public String getHostName() {
        try {
            return ContextUtil.getLocalHostName();
        } catch (Exception e) {
            // ignored
        }
        return null;
    }

    public String getStackTrace(StackTraceElementProxy[] stackTraceElements) {
        if (stackTraceElements == null || stackTraceElements.length == 0) {
            return null;
        }

        StringBuilder sb = new StringBuilder();
        for (StackTraceElementProxy element : stackTraceElements) {
            sb.append(element.toString());
            sb.append("\n");
        }
        return sb.toString();
    }
}
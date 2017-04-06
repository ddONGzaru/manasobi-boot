package io.manasobi.domain.mng.etc.sh04001130;

import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

@Slf4j
@Service
public class Sh04001130Service extends BaseService<Sh04001130, Sh04001130.Sh04001130Id> {

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.batch.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.batch.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/etc/sh04001130";
    }
    
    @Inject
    public Sh04001130Service(Sh04001130Repository sh04001130Repository) {
        super(sh04001130Repository);
    }

    public Page<Sh04001130> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, Sh04001130.class);
    }

    public Page<Sh04001130> find(Pageable pageable, RequestParams<Sh04001130> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        Timestamp startDate = requestParams.getTimestamp("startDate");
        Timestamp endDate = requestParams.getTimestamp("endDate");

        QSh04001130 qSh04001130 = QSh04001130.sh04001130;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh04001130.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh04001130.branchCode.eq(branchCode));
        }

        if (startDate != null && endDate != null) {
            builder.and(qSh04001130.serviceFeeCalcYearMonth.between(startDate, endDate));
        }

        List<Sh04001130> resultList = select().from(qSh04001130).where(builder).fetch();

        return filter(resultList, pageable, filter, Sh04001130.class);
    }

    public List<Sh04001130> find(RequestParams<Sh04001130VO> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        Timestamp startDate = requestParams.getTimestamp("startDate");
        Timestamp endDate = requestParams.getTimestamp("endDate");

        QSh04001130 qSh04001130 = QSh04001130.sh04001130;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh04001130.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh04001130.branchCode.eq(branchCode));
        }

        if (startDate != null && endDate != null) {
            builder.and(qSh04001130.serviceFeeCalcYearMonth.between(startDate, endDate));
        }

        List<Sh04001130> resultList = select().from(qSh04001130).where(builder).fetch();

        return resultList;
    }

    public ApiResponse sendAndReceive(Sh04001130VO vo) {

        if (vo.getServiceFeeCalcYearMonth().length() == 8) {
            vo.setServiceFeeCalcYearMonth(vo.getServiceFeeCalcYearMonth().substring(0,6));
        }

        String basicServiceFee = vo.getBasicServiceFee();
        if (!StringUtils.isEmpty(basicServiceFee) && basicServiceFee.contains(",")) {
            basicServiceFee = StringUtils.replace(basicServiceFee, ",", "");
            vo.setBasicServiceFee(basicServiceFee);
        }
        String terminalAddServiceFee = vo.getTerminalAddServiceFee();
        if (!StringUtils.isEmpty(terminalAddServiceFee) && terminalAddServiceFee.contains(",")) {
            terminalAddServiceFee = StringUtils.replace(terminalAddServiceFee, ",", "");
            vo.setTerminalAddServiceFee(terminalAddServiceFee);
        }

        String timeAddServiceFee = vo.getTimeAddServiceFee();
        if (!StringUtils.isEmpty(timeAddServiceFee) && timeAddServiceFee.contains(",")) {
            timeAddServiceFee = StringUtils.replace(timeAddServiceFee, ",", "");
            vo.setTimeAddServiceFee(timeAddServiceFee);
        }

        String checkAddServiceFee = vo.getCheckAddServiceFee();
        if (!StringUtils.isEmpty(checkAddServiceFee) && checkAddServiceFee.contains(",")) {
            checkAddServiceFee = StringUtils.replace(checkAddServiceFee, ",", "");
            vo.setCheckAddServiceFee(checkAddServiceFee);
        }

        String monthServiceFee = vo.getMonthServiceFee();
        if (!StringUtils.isEmpty(monthServiceFee) && monthServiceFee.contains(",")) {
            monthServiceFee = StringUtils.replace(monthServiceFee, ",", "");
            vo.setMonthServiceFee(monthServiceFee);
        }

        String totalGiveServiceFee = vo.getTotalGiveServiceFee();
        if (!StringUtils.isEmpty(totalGiveServiceFee) && totalGiveServiceFee.contains(",")) {
            totalGiveServiceFee = StringUtils.replace(totalGiveServiceFee, ",", "");
            vo.setTotalGiveServiceFee(totalGiveServiceFee);
        }

        ResponseEntity<ApiResponse> apiResponseEntity;

        try {
            apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
        } catch (RestClientException e) {
            log.error("Sh04001130Service-sendAndReceive :: {}", e.getMessage());
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "용역료관리 전문응답코드가 99입니다.");
        }

        return apiResponseEntity.getBody();
    }
}
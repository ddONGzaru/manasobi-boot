
package io.manasobi.core.domain.log;

import io.manasobi.core.annotations.Comment;
import io.manasobi.core.base.model.SimpleJpaModel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.time.Clock;
import java.time.Instant;

@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@EqualsAndHashCode(callSuper = true)
@ToString
@Table(name = "ATMS_ERROR_LOG")
@SequenceGenerator(name = "ERROR_LOG_SEQ_GENERATOR", sequenceName = "SEQ_ERROR_LOG", allocationSize = 1)
@Comment(value = "에러로그")
public class ErrorLog extends SimpleJpaModel<Long> {

    @Id
    @Column(name = "ID", precision = 20)
    @Comment(value = "ID")
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ERROR_LOG_SEQ_GENERATOR")
    private Long id;

    @Column(name = "PHASE", length = 10)
    @Comment(value = "PHASE")
    private String phase;

    @Column(name = "SYSTEM", length = 50)
    @Comment(value = "SYSTEM")
    private String system;

    @Column(name = "LOGGER_NAME", length = 300)
    @Comment(value = "Logger Name")
    private String loggerName;

    @Column(name = "SERVER_NAME", length = 50)
    @Comment(value = "서버명")
    private String serverName;

    @Column(name = "HOST_NAME", length = 50)
    @Comment(value = "호스트 명")
    private String hostName;

    @Column(name = "PATH", length = 2048)
    @Comment(value = "ERROR PATH")
    private String path;

    @Column(name = "MESSAGE", columnDefinition = "TEXT")
    @Comment(value = "메시지")
    private String message;

    @Column(name = "TRACE", columnDefinition = "TEXT")
    @Comment(value = "STACK TRACE")
    private String trace;

    @Column(name = "ERROR_DATETIME")
    @Comment(value = "에러일시")
    private Instant errorDatetime = Instant.now(Clock.systemUTC());

    @Column(name = "ALERT_YN", length = 1)
    @Comment(value = "알람여부")
    private String alertYn = "N";

    @Column(name = "HEADER_MAP", columnDefinition = "TEXT")
    @Comment(value = "헤더 정보")
    private String headerMap;

    @Column(name = "PARAMETER_MAP", columnDefinition = "TEXT")
    @Comment(value = "파라미터 정보")
    private String parameterMap;

    @Column(name = "USER_INFO", columnDefinition = "TEXT")
    @Comment(value = "사용자 정보")
    private String userInfo;

    @Override
    public Long getId() {
        return id;
    }
}

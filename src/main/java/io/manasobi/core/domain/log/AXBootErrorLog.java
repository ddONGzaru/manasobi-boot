
package io.manasobi.core.domain.log;

import lombok.Data;

import java.time.Clock;
import java.time.Instant;

@Data
public class AXBootErrorLog {

    private String phase;
    private String system;
    private String loggerName;
    private String serverName;
    private String hostName;
    private String path;
    private String message;
    private String trace;
    private Instant errorDatetime = Instant.now(Clock.systemUTC());
    private String alertYn = "N";
    private String headerMap;
    private String parameterMap;
    private String userInfo;
}

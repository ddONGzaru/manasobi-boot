package io.manasobi.config;

import ch.qos.logback.classic.Level;
import io.manasobi.core.code.Types;
import io.manasobi.core.mybatis.typehandler.*;
import lombok.AccessLevel;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.TypeHandler;
import org.hibernate.cfg.Environment;
import org.hibernate.dialect.*;
import org.springframework.beans.BeansException;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.util.StringUtils;

import java.util.Properties;

@Data
@ConfigurationProperties(prefix = "appConfig", ignoreInvalidFields = true)
@NoArgsConstructor
public class PropsConfig implements ApplicationContextAware {

    private static ApplicationContext applicationContext;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

    @Getter
    private String serverName = System.getProperty("server.name", "localhost");

    private String systemName;

    private Logging log;

    private Modeler modeler;

    private static PropsConfig instance;

    public Logging getLoggingConfig() {
        return log == null ? new Logging() : log;
    }

    public Modeler getModelerConfig() {
        return modeler == null ? new Modeler() : modeler;
    }

    public TypeHandler<?>[] getMyBatisTypeHandlers() {

        return new TypeHandler<?>[]{
                new InstantTypeHandler(),
                new LocalDateTimeTypeHandler(),
                new LocalDateTypeHandler(),
                new LocalTimeTypeHandler(),
                new OffsetDateTimeTypeHandler(),
                new ZonedDateTimeTypeHandler()
        };
    }

    @Data
    public static class Logging {

        private Level level;
        private Slack slack;
        private Jandi jandi;
        private Database database;
        private String adminUrl;

        @Data
        public static class Slack {
            private boolean enabled = false;
            private String webHookUrl = "";
            private String channel = "";
        }

        @Data
        public static class Jandi {
            private boolean enable = false;
            private String webHookUrl = "";
        }

        @Data
        public static class Database {
            private boolean enabled = false;
            private String level = "ERROR";
        }
    }

    @Data
    public static class Modeler {

        private boolean output = false;

        @Getter(AccessLevel.NONE)
        private String outputDir;

        public String getOutputDir() {
            if (outputDir == null) {
                return System.getProperty("user.home") + "/Desktop/output/";
            }
            return outputDir;
        }
    }


}



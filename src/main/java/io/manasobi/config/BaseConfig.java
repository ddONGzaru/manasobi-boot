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
@ConfigurationProperties(prefix = "baseConfig", ignoreInvalidFields = true)
@NoArgsConstructor
public class BaseConfig implements ApplicationContextAware {

    private static ApplicationContext applicationContext;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

    @Getter
    private String serverName = System.getProperty("server.name", "localhost");

    private String systemName;

    private DataSourceConfig dataSource;

    private Logging log;

    private Modeler modeler;

    private static BaseConfig instance;

    public DataSourceConfig getDataSourceConfig() {
        return dataSource;
    }

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

    @Data
    @NoArgsConstructor
    public static class DataSourceConfig {

        @Getter(AccessLevel.NONE)
        private String databaseType;
        private String username;
        private String password;
        private String url;
        private String driverClassName;
        private int initialSize = 5;
        private int maxTotal = 10;
        private int maxWaitMillis = 3000;
        private boolean sqlOutput = true;
        private long slowQueryThreshold = 5000;
        private long timeBetweenEvictionRunsMillis = 300000;
        private boolean testOnBorrow = false;
        private boolean testOnReturn = false;
        private boolean testWhileIdle = true;
        private long defaultQueryTimeout = 30000;

        @Getter(AccessLevel.NONE)
        private String validationQuery;

        private HibernateConfig hibernate;

        public String getValidationQuery() {

            String _driverClassName = driverClassName.toLowerCase();

            if (_driverClassName.contains("mysql") ||
                    _driverClassName.contains("mariadb") ||
                    _driverClassName.contains("microsft") ||
                    _driverClassName.contains("sqlserver")) {
                return "SELECT 1";
            }

            if (_driverClassName.contains("oracle")) {
                return "SELECT 1 FROM DUAL";
            }

            if (_driverClassName.contains("postgres") || _driverClassName.contains("pg")) {
                return "";
            }

            return "SELECT 1";
        }

        public HibernateConfig getHibernateConfig() {
            return hibernate == null ? new HibernateConfig() : hibernate;
        }

        @Data
        public static class HibernateConfig {

            private String databaseType;
            private boolean l2Cache = false;
            private boolean queryCache = false;
            private String dialect;
            private String hbm2ddlAuto = "none";

            public HibernateJpaVendorAdapter getHibernateJpaVendorAdapter() {

                HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();

                switch (databaseType.toLowerCase()) {
                    case Types.DatabaseType.MSSQL:
                        vendorAdapter.setDatabase(Database.SQL_SERVER);
                        break;

                    case Types.DatabaseType.MYSQL:
                        vendorAdapter.setDatabase(Database.MYSQL);
                        break;

                    case Types.DatabaseType.ORACLE:
                        vendorAdapter.setDatabase(Database.ORACLE);
                        break;

                    case Types.DatabaseType.POSTGRESQL:
                        vendorAdapter.setDatabase(Database.POSTGRESQL);
                        break;

                    case Types.DatabaseType.H2:
                        vendorAdapter.setDatabase(Database.H2);
                        break;
                }

                if (StringUtils.isEmpty(dialect)) {

                    switch (databaseType.toLowerCase()) {
                        case Types.DatabaseType.MSSQL:
                            vendorAdapter.setDatabase(Database.SQL_SERVER);
                            vendorAdapter.setDatabasePlatform(SQLServer2005Dialect.class.getName());
                            break;

                        case Types.DatabaseType.MYSQL:
                            vendorAdapter.setDatabase(Database.MYSQL);
                            vendorAdapter.setDatabasePlatform(MySQL57InnoDBDialect.class.getName());
                            break;

                        case Types.DatabaseType.ORACLE:
                            vendorAdapter.setDatabase(Database.ORACLE);
                            vendorAdapter.setDatabasePlatform(Oracle10gDialect.class.getName());
                            break;

                        case Types.DatabaseType.POSTGRESQL:
                            vendorAdapter.setDatabase(Database.POSTGRESQL);
                            vendorAdapter.setDatabasePlatform(PostgreSQL9Dialect.class.getName());
                            break;

                        case Types.DatabaseType.H2:
                            vendorAdapter.setDatabase(Database.H2);
                            vendorAdapter.setDatabasePlatform(H2Dialect.class.getName());
                    }

                } else {

                    try {
                        vendorAdapter.setDatabasePlatform(Class.forName("org.hibernate.dialect." + dialect).getName());
                    } catch (ClassNotFoundException e) {
                        try {
                            vendorAdapter.setDatabasePlatform(Class.forName(String.format("com.chequer.axboot.core.db.dialect.%s", dialect)).getName());
                        } catch (ClassNotFoundException e1) {
                            e1.printStackTrace();
                        }
                    }
                }

                return vendorAdapter;
            }

            public Properties getAdditionalProperties() {

                Properties additionalProperties = new Properties();

                additionalProperties.put(Environment.USE_SECOND_LEVEL_CACHE, this.isL2Cache());
                additionalProperties.put(Environment.USE_QUERY_CACHE, isQueryCache());
                additionalProperties.put(Environment.HBM2DDL_AUTO, getHbm2ddlAuto());

                return additionalProperties;
            }
        }

    }

    /*private Application application = new Application();*/

    /*@Data
    public static class Application {
        public Application() {
            this.name = "AXBOOT";
        }

        private String name;
    }*/
}



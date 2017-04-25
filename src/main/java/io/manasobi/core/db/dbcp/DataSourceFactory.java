package io.manasobi.core.db.dbcp;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import io.manasobi.config.PropsConfig;
import io.manasobi.core.code.Types;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;

import javax.sql.DataSource;
import java.sql.Connection;

@Slf4j
public class DataSourceFactory {

    public static DataSource create(Types.DataSource dataSourceType) throws Exception {

        /*if (dataSourceType == Types.DataSource.DBCP2) {
            return createDBCP2(dataSourceConfig);
        } else if (dataSourceType == Types.DataSource.HIKARI) {
            return createHikari(dataSourceConfig);
        }*/

        log.error("DataSourceFactory-create :: 지원하지 않는 DataSource 타입입니다. [{}]", dataSourceType);
        return null;
    }

    public static DBCP2DataSource createDBCP2() throws Exception {

        /*try {
            DBCP2DataSource DBCP2DataSource = new ModelMapper().map(dataSourceConfig, DBCP2DataSource.class);
            DBCP2DataSource.setDatabaseType(dataSourceConfig.getHibernateConfig().getDatabaseType());
            Connection conn = DBCP2DataSource.getConnection();
            conn.close();
            log.info("DataSourceFactory-create :: success to create DataSource(DBCP2)");
            return DBCP2DataSource;

        } catch (Exception exception) {
            log.error("DataSourceFactory-create :: fail to create DataSource(DBCP2) - {}", exception);
            throw exception;
        }*/

        return null;
    }

    public static DataSource createHikari() throws Exception {

        /*HikariConfig config = new HikariConfig();

        config.setJdbcUrl(dataSourceConfig.getUrl());
        config.setUsername(dataSourceConfig.getUsername());
        config.setPassword(dataSourceConfig.getPassword());
        config.addDataSourceProperty("cachePrepStmts", "true");
        config.addDataSourceProperty("prepStmtCacheSize", "250");
        config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

        return new HikariDataSource(config);*/

        return null;
    }
}

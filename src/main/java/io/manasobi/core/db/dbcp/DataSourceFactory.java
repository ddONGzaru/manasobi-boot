package io.manasobi.core.db.dbcp;

import io.manasobi.config.PropsConfig;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;

import java.sql.Connection;

@Slf4j
public class DataSourceFactory {

    public static DBCP2DataSource create(String dataSourceId, PropsConfig.DataSourceConfig dataSourceConfig) throws Exception {

        try {
            DBCP2DataSource DBCP2DataSource = new ModelMapper().map(dataSourceConfig, DBCP2DataSource.class);
            DBCP2DataSource.setDatabaseType(dataSourceConfig.getHibernateConfig().getDatabaseType());
            Connection conn = DBCP2DataSource.getConnection();
            conn.close();
            log.info("DataSourceFactory-create :: success to create DataSource('{}')", dataSourceId);
            return DBCP2DataSource;

        } catch (Exception exception) {
            log.error("DataSourceFactory-create :: fail to create DataSource('{}')", dataSourceId, exception);
            throw exception;
        }
    }

    public static DBCP2DataSource create(PropsConfig.DataSourceConfig dataSourceConfig) throws Exception {
        return create("MainDataSource", dataSourceConfig);
    }
}

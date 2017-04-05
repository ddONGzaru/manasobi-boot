package io.manasobi.core.db.monitor;

import io.manasobi.core.db.SqlMonitoringLogUtils;
import io.manasobi.core.db.dbcp.DBCP2DataSource;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

import javax.sql.DataSource;
import java.util.Collections;
import java.util.List;

public class SqlMonitoringService implements InitializingBean, DisposableBean {

	private DBCP2DataSource dataSource;

	private SqlMonitoringLogUtils sqlMonitoringLogUtils;

	public SqlMonitoringService(DataSource dataSource) {
		if (dataSource instanceof DBCP2DataSource) {
			this.dataSource = (DBCP2DataSource) dataSource;
		}
	}

	public List<SqlExecutionInfo> getSqlExecutionInfos() {
		if (this.dataSource != null) {
			return this.dataSource.getSqlTaskPool().getSqlExecutionInfoList();
		} else {
			return Collections.emptyList();
		}
	}

	public void saveAll() {
		sqlMonitoringLogUtils.saveSqlMonitoringInfo();
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		if (this.dataSource != null) {
			sqlMonitoringLogUtils = new SqlMonitoringLogUtils(this.dataSource.getSqlTaskPool().getSqlExecutionInfoList());
		}
	}

	@Override
	public void destroy() throws Exception {
		if (this.dataSource != null) {
			saveAll();
		}
	}
}

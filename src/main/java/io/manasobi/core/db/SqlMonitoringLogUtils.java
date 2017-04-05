package io.manasobi.core.db;

import io.manasobi.core.db.monitor.SqlExecutionInfo;
import org.apache.commons.lang3.SystemUtils;

import java.util.List;

public class SqlMonitoringLogUtils {

	private List<SqlExecutionInfo> sqlExecutionInfoList;

	public SqlMonitoringLogUtils(List<SqlExecutionInfo> sqlExecutionInfoList) {
		this.sqlExecutionInfoList = sqlExecutionInfoList;
	}

	public void saveSqlMonitoringInfo() {

		if (this.sqlExecutionInfoList == null) {
			return;
		}
		StringBuilder stringBuilder = new StringBuilder("[SqlMonitoringInfo]");
		stringBuilder.append(SystemUtils.LINE_SEPARATOR);
	}
}

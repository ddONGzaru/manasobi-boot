package io.manasobi.core.domain.log;

public interface AXBootErrorLogService {

    void save(AXBootErrorLog errorLog);

    void deleteAllLogs();

    void deleteLog(Long id);
}

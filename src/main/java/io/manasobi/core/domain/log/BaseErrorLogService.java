package io.manasobi.core.domain.log;

public interface BaseErrorLogService {

    void save(BaseErrorLog errorLog);

    void deleteAllLogs();

    void deleteLog(Long id);
}

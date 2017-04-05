package io.manasobi.core.domain.log;

import io.manasobi.core.base.BaseService;
import io.manasobi.utils.ModelMapperUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import javax.persistence.Query;


@Service
public class ErrorLogService extends BaseService<ErrorLog, Long> implements AXBootErrorLogService {

    private ErrorLogRepo errorLogRepo;

    @Inject
    public ErrorLogService(ErrorLogRepo errorLogRepo) {
        super(errorLogRepo);
        this.errorLogRepo = errorLogRepo;
    }

    @Override
    public void save(AXBootErrorLog axBootErrorLog) {
        ErrorLog errorLog = ModelMapperUtils.map(axBootErrorLog, ErrorLog.class);
        save(errorLog);
    }

    @Transactional
    public void deleteAllLogs() {
        Query query = em.createNativeQuery("DELETE FROM ERROR_LOG_M");
        query.executeUpdate();
    }

    @Override
    public void deleteLog(Long id) {
        delete(id);
    }
}

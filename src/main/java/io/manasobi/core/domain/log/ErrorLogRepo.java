package io.manasobi.core.domain.log;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface ErrorLogRepo extends BaseJPAQueryDSLRepo<ErrorLog, Long> {
}

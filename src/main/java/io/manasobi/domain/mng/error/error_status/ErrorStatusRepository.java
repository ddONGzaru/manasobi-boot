package io.manasobi.domain.mng.error.error_status;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface ErrorStatusRepository extends BaseJPAQueryDSLRepo<ErrorStatus, ErrorStatus.ErrorStatusId> {
}

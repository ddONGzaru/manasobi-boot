package io.manasobi.domain.mng.error.error_handle_mng;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface ErrorHandleMngRepository extends BaseJPAQueryDSLRepo<ErrorHandleMng, ErrorHandleMng.ErrorHandleMngId> {
}

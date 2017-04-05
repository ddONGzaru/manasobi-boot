package io.manasobi.core.domain.code;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface CommonCodeRepo extends BaseJPAQueryDSLRepo<CommonCode, CommonCode.CommonCodeId> {
}

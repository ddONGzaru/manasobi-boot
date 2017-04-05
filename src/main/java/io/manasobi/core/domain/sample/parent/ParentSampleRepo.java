package io.manasobi.core.domain.sample.parent;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface ParentSampleRepo extends BaseJPAQueryDSLRepo<ParentSample, String> {
}

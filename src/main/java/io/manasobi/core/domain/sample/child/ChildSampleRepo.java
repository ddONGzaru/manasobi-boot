package io.manasobi.core.domain.sample.child;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

@Repository
public interface ChildSampleRepo extends BaseJPAQueryDSLRepo<ChildSample, String> {

    Page<ChildSample> findByParentKey(String parentKey, Pageable pageable);
}

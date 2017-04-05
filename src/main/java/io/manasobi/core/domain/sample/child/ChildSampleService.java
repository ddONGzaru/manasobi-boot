package io.manasobi.core.domain.sample.child;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

@Service
public class ChildSampleService extends BaseService<ChildSample, String> {

    private ChildSampleRepo childSampleRepo;

    @Inject
    public ChildSampleService(ChildSampleRepo childSampleRepo) {
        super(childSampleRepo);
        this.childSampleRepo = childSampleRepo;
    }


    public Page<ChildSample> findByParentKeyWithPaging(String parentKey, Pageable pageable) {
        return childSampleRepo.findByParentKey(parentKey, pageable);
    }

    @Transactional
    public void deleteByKeys(List<String> keys) {
        keys.forEach(this::delete);
    }
}

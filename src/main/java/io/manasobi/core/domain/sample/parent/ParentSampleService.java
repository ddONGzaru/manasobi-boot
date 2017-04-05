package io.manasobi.core.domain.sample.parent;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

@Service
public class ParentSampleService extends BaseService<ParentSample, String> {

	@Inject
	public ParentSampleService(ParentSampleRepo parentRepository) {
		super(parentRepository);
	}

	@Transactional
	public void deleteByKeys(List<String> keys) {
		keys.forEach(this::delete);
	}

	public Page<ParentSample> find(Pageable pageable, String filter) {
		return filter(findAll(), pageable, filter, ParentSample.class);
	}

}

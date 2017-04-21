package io.manasobi.domain.mng.sla.sh_sla_30;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSla30Service extends BaseService<ShSla30, String> {

    @Inject
    public ShSla30Service(ShSla30Repository shSla30Repository) {
        super(shSla30Repository);
    }

    public Page<ShSla30> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSla30.class);
    }
}
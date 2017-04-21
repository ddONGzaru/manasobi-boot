package io.manasobi.domain.mng.sla.sh_sla_70;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSla70Service extends BaseService<ShSla70, ShSla70.ShSla70Id> {

    @Inject
    public ShSla70Service(ShSla70Repository shSla70Repository) {
        super(shSla70Repository);
    }

    public Page<ShSla70> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSla70.class);
    }
}
package io.manasobi.domain.mng.sla.sh_sla_60;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSla60Service extends BaseService<ShSla60, ShSla60.ShSla60Id> {

    @Inject
    public ShSla60Service(ShSla60Repository shSla60Repository) {
        super(shSla60Repository);
    }

    public Page<ShSla60> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSla60.class);
    }
}
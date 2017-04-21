package io.manasobi.domain.mng.sla.sh_sla_80;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSla80Service extends BaseService<ShSla80, ShSla80.ShSla80Id> {

    @Inject
    public ShSla80Service(ShSla80Repository shSla80Repository) {
        super(shSla80Repository);
    }

    public Page<ShSla80> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSla80.class);
    }
}
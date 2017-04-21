package io.manasobi.domain.mng.sla.sh_sla_a0;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSlaA0Service extends BaseService<ShSlaA0, ShSlaA0.ShSlaA0Id> {

    @Inject
    public ShSlaA0Service(ShSlaA0Repository shSlaA0Repository) {
        super(shSlaA0Repository);
    }

    public Page<ShSlaA0> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSlaA0.class);
    }
}
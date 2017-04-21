package io.manasobi.domain.mng.sla.sh_sla_f0;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSlaF0Service extends BaseService<ShSlaF0, ShSlaF0.ShSlaF0Id> {

    @Inject
    public ShSlaF0Service(ShSlaF0Repository shSlaF0Repository) {
        super(shSlaF0Repository);
    }

    public Page<ShSlaF0> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSlaF0.class);
    }
}
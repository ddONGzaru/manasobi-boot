package io.manasobi.domain.mng.sla.sh_sla_e0;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSlaE0Service extends BaseService<ShSlaE0, ShSlaE0.ShSlaE0Id> {

    @Inject
    public ShSlaE0Service(ShSlaE0Repository shSlaE0Repository) {
        super(shSlaE0Repository);
    }

    public Page<ShSlaE0> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSlaE0.class);
    }
}
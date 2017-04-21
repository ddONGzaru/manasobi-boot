package io.manasobi.domain.mng.sla.sh_sla_b0;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSlaB0Service extends BaseService<ShSlaB0, ShSlaB0.ShSlaB0Id> {

    @Inject
    public ShSlaB0Service(ShSlaB0Repository shSlaB0Repository) {
        super(shSlaB0Repository);
    }

    public Page<ShSlaB0> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSlaB0.class);
    }
}
package io.manasobi.domain.mng.sla.sh_sla_20;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSla20Service extends BaseService<ShSla20, ShSla20.ShSla20Id> {

    @Inject
    public ShSla20Service(ShSla20Repository shSla20Repository) {
        super(shSla20Repository);
    }

    public Page<ShSla20> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSla20.class);
    }
}
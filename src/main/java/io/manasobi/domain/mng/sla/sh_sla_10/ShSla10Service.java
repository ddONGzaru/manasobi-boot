package io.manasobi.domain.mng.sla.sh_sla_10;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSla10Service extends BaseService<ShSla10, ShSla10.ShSla10Id> {

    @Inject
    public ShSla10Service(ShSla10Repository shSla10Repository) {
        super(shSla10Repository);
    }

    public Page<ShSla10> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSla10.class);
    }
}
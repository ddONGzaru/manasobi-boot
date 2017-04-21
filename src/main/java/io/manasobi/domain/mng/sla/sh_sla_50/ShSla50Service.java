package io.manasobi.domain.mng.sla.sh_sla_50;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSla50Service extends BaseService<ShSla50, ShSla50.ShSla50Id> {

    @Inject
    public ShSla50Service(ShSla50Repository shSla50Repository) {
        super(shSla50Repository);
    }

    public Page<ShSla50> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSla50.class);
    }
}
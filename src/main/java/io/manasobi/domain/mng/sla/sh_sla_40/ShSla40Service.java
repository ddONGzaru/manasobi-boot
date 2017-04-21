package io.manasobi.domain.mng.sla.sh_sla_40;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSla40Service extends BaseService<ShSla40, String> {

    @Inject
    public ShSla40Service(ShSla40Repository shSla40Repository) {
        super(shSla40Repository);
    }

    public Page<ShSla40> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSla40.class);
    }
}
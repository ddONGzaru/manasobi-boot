package io.manasobi.domain.mng.sla.sh_sla_g1;

import io.manasobi.core.base.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShSlaG1Service extends BaseService<ShSlaG1, ShSlaG1.ShSlaG1Id> {

    @Inject
    public ShSlaG1Service(ShSlaG1Repository shSlaG1Repository) {
        super(shSlaG1Repository);
    }

    public Page<ShSlaG1> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, ShSlaG1.class);
    }
}
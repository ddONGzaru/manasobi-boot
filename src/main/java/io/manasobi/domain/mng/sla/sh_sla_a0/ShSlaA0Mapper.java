package io.manasobi.domain.mng.sla.sh_sla_a0;

import io.manasobi.core.mybatis.MyBatisMapper;
import java.util.List;


public interface ShSlaA0Mapper extends MyBatisMapper {

    List<ShSlaA0> findAll();

    ShSlaA0 findOne(ShSlaA0 shSlaA0);

    int update(ShSlaA0 shSlaA0);

    int delete(ShSlaA0 shSlaA0);

    int insert(ShSlaA0 shSlaA0);
}
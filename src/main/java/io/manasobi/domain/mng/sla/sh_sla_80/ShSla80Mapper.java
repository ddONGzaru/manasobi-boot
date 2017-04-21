package io.manasobi.domain.mng.sla.sh_sla_80;

import io.manasobi.core.mybatis.MyBatisMapper;
import java.util.List;


public interface ShSla80Mapper extends MyBatisMapper {

    List<ShSla80> findAll();

    ShSla80 findOne(ShSla80 shSla80);

    int update(ShSla80 shSla80);

    int delete(ShSla80 shSla80);

    int insert(ShSla80 shSla80);
}
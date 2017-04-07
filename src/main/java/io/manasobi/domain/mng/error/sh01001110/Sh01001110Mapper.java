package io.manasobi.domain.mng.error.sh01001110;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh01001110Mapper extends MyBatisMapper {

    List<Sh01001110> findAll(Sh01001110 sh01001110);

    Sh01001110 findOne(Sh01001110 sh01001110);

}
package io.manasobi.domain.mng.error.sh01001140;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh01001140Mapper extends MyBatisMapper {

    List<Sh01001140> findAll();

    Sh01001140 findOne(Sh01001140 sh01001140);

    int update(Sh01001140 sh01001140);

    int delete(Sh01001140 sh01001140);

    int insert(Sh01001140 sh01001140);
}
package io.manasobi.domain.mng.cash.sh03001140;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh03001140Mapper extends MyBatisMapper {

    List<Sh03001140> findAll();

    Sh03001140 findOne(Sh03001140 sh03001140);

    int update(Sh03001140 sh03001140);

    int delete(Sh03001140 sh03001140);

    int insert(Sh03001140 sh03001140);
}
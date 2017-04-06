package io.manasobi.domain.mng.cash.sh03001190;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh03001190Mapper extends MyBatisMapper {

    List<Sh03001190> findAll();

    Sh03001190 findOne(Sh03001190 sh03001190);

    int update(Sh03001190 sh03001190);

    int delete(Sh03001190 sh03001190);

    int insert(Sh03001190 sh03001190);
}
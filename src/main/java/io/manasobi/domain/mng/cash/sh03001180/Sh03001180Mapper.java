package io.manasobi.domain.mng.cash.sh03001180;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh03001180Mapper extends MyBatisMapper {

    List<Sh03001180> findAll(Sh03001180 sh03001180);

    Sh03001180 findOne(Sh03001180 sh03001180);

    int update(Sh03001180 sh03001180);

    int delete(Sh03001180 sh03001180);

    int insert(Sh03001180 sh03001180);
}
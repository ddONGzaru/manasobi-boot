package io.manasobi.domain.mng.equip.sh05001120;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh05001120Mapper extends MyBatisMapper {

    List<Sh05001120> findAll();

    Sh05001120 findOne(Sh05001120 sh05001120);

    int update(Sh05001120 sh05001120);

    int delete(Sh05001120 sh05001120);

    int insert(Sh05001120 sh05001120);
}
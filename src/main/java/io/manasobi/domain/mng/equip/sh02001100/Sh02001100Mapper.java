package io.manasobi.domain.mng.equip.sh02001100;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh02001100Mapper extends MyBatisMapper {

    List<Sh02001100> findAll();

    Sh02001100 findOne(Sh02001100 sh02001100);

    int update(Sh02001100 sh02001100);

    int delete(Sh02001100 sh02001100);

    int insert(Sh02001100 sh02001100);
}
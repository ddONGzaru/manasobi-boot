package io.manasobi.domain.mng.etc.sh04001120;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh04001120Mapper extends MyBatisMapper {

    List<Sh04001120> findAll();

    Sh04001120 findOne(Sh04001120 sh04001120);

    int update(Sh04001120 sh04001120);

    int delete(Sh04001120 sh04001120);

    int insert(Sh04001120 sh04001120);
}
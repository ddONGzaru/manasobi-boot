package io.manasobi.domain.mng.etc.sh04001140;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface Sh04001140Mapper extends MyBatisMapper {

    List<Sh04001140> findAll();

    Sh04001140 findOne(Sh04001140 sh04001140);

    int update(Sh04001140 sh04001140);

    int delete(Sh04001140 sh04001140);

    int insert(Sh04001140 sh04001140);
}
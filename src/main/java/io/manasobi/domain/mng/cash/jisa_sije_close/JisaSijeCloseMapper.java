package io.manasobi.domain.mng.cash.jisa_sije_close;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface JisaSijeCloseMapper extends MyBatisMapper {

    List<JisaSijeClose> findAll(JisaSijeClose jisaSijeCloseVO);

    JisaSijeClose findOne(JisaSijeClose jisaSijeClose);

    int update(JisaSijeClose jisaSijeClose);

    int delete(JisaSijeClose jisaSijeClose);

    int insert(JisaSijeClose jisaSijeClose);
}
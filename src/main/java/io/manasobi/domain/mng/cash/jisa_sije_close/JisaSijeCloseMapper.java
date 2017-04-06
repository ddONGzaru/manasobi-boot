package io.manasobi.domain.mng.cash.jisa_sije_close;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;

public interface JisaSijeCloseMapper extends MyBatisMapper {

    List<JisaSijeClose> findAll(JisaSijeClose jisaSijeCloseVO);

}
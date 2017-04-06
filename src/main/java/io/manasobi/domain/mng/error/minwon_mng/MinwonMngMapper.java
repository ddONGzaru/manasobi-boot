package io.manasobi.domain.mng.error.minwon_mng;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface MinwonMngMapper extends MyBatisMapper {

    List<MinwonMng> findAll();

    MinwonMng findOne(MinwonMng minwonMng);

    int update(MinwonMng minwonMng);

    int delete(MinwonMng minwonMng);

    int insert(MinwonMng minwonMng);
}
package io.manasobi.domain.mng.error.error_status;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface ErrorStatusMapper extends MyBatisMapper {

    List<ErrorStatus> findAll();

    List<ErrorStatus> findHistory(ErrorStatus errorStatus);

    ErrorStatus findOne(ErrorStatus errorStatus);

}
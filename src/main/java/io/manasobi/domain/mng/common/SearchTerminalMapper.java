package io.manasobi.controller.api.mng.common;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface SearchTerminalMapper extends MyBatisMapper {

    List<SearchTerminalVO> findAllTerminal(SearchTerminalVO searchTerminalVO);

    List<SearchTerminalVO> findAllBranch(SearchTerminalVO searchTerminalVO);
}
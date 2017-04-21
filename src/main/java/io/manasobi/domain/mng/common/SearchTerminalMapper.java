package io.manasobi.domain.mng.common;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface SearchTerminalMapper extends MyBatisMapper {
    List<SearchTerminalVO> findAllTerminal(SearchTerminalVO searchTerminalVO);

    List<SearchTerminalVO> findAllBranch(SearchTerminalVO searchTerminalVO);

    List<SearchTerminalVO> findAllCorner(SearchTerminalVO searchTerminalVO);
}
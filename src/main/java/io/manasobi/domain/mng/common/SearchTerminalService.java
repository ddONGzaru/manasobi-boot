package io.manasobi.domain.mng.common;

import io.manasobi.core.base.BaseService;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class SearchTerminalService extends BaseService {

    @Inject
    public SearchTerminalMapper searchTerminalMapper;

    public List<SearchTerminalVO> findAllTerminal(SearchTerminalVO searchTerminalVO) {
        return searchTerminalMapper.findAllTerminal(searchTerminalVO);
    }

    public List<SearchTerminalVO> findAllBranch(SearchTerminalVO searchTerminalVO) {
        return searchTerminalMapper.findAllBranch(searchTerminalVO);
    }

    public Page<SearchTerminalVO> findAllTerminal(Pageable pageable, RequestParams<SearchTerminalVO> requestParams) {
        String filter = requestParams.getString("filter");

        SearchTerminalVO searchTerminalVO = new SearchTerminalVO();
        searchTerminalVO.setJisaCode(requestParams.getString("jisa"));

        return filter(findAllTerminal(searchTerminalVO), pageable, filter, SearchTerminalVO.class);
    }

    public Page<SearchTerminalVO> findAllBranch(Pageable pageable, RequestParams<SearchTerminalVO> requestParams) {
        String filter = requestParams.getString("filter");

        SearchTerminalVO searchTerminalVO = new SearchTerminalVO();
        searchTerminalVO.setJisaCode(requestParams.getString("jisa"));

        return filter(findAllBranch(searchTerminalVO), pageable, filter, SearchTerminalVO.class);
    }
}
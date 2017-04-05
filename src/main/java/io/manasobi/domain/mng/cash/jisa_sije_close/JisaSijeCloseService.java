package io.manasobi.domain.mng.cash.jisa_sije_close;

import io.manasobi.core.base.BaseService;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class JisaSijeCloseService extends BaseService<JisaSijeClose, JisaSijeClose.JisaSijeCloseId> {

    @Inject
    public JisaSijeCloseMapper jisaSijeCloseMapper;

    @Inject
    public JisaSijeCloseService(JisaSijeCloseRepo jisaSijeCloseRepo) {
        super(jisaSijeCloseRepo);
    }

    public Page<JisaSijeClose> find(Pageable pageable, RequestParams<JisaSijeClose> requestParams) {

        JisaSijeClose jisaSijeClose = new JisaSijeClose();
        jisaSijeClose.setCloseDate(requestParams.getTimestamp("closeDate"));

        List<JisaSijeClose> resultList = jisaSijeCloseMapper.findAll(jisaSijeClose);

        return filter(resultList, pageable, null, JisaSijeClose.class);
    }
}
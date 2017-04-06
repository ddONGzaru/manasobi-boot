package io.manasobi.domain.mng.error.sh01001160;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.OrderSpecifier;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

@Service
public class Sh01001160Service extends BaseService<Sh01001160, Sh01001160.Sh01001160Id> {

    @Inject
    public Sh01001160Service(Sh01001160Repository sh01001160Repository) {
        super(sh01001160Repository);
    }

    public Page<Sh01001160> find(Pageable pageable, RequestParams<Sh01001160VO> requestParams) {
        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String cornerCode = requestParams.getString("cornerCode");
        String terminalNo = requestParams.getString("terminalNo");
        Timestamp startDate = requestParams.getTimestamp("startDate");
        Timestamp endDate = requestParams.getTimestamp("endDate");

        QSh01001160 qSh01001160 = QSh01001160.sh01001160;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh01001160.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh01001160.branchCode.eq(branchCode));
        }

        if (isNotEmpty(cornerCode)) {
            builder.and(qSh01001160.cornerCode.eq(cornerCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh01001160.terminalNo.eq(terminalNo));
        }

        if (startDate != null && endDate != null) {
            builder.and(qSh01001160.errorDatetime.between(startDate, endDate));
        }

        OrderSpecifier<Timestamp> sortOrder = qSh01001160.errorDatetime.desc();
        List<Sh01001160> resultList = select().from(qSh01001160).where(builder).orderBy(sortOrder).fetch();

        return filter(resultList, pageable, filter, Sh01001160.class);
    }
}
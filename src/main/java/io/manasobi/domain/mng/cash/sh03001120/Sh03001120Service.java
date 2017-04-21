package io.manasobi.domain.mng.cash.sh03001120;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.OrderSpecifier;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.utils.DateUtils;
import io.manasobi.utils.ModelMapperUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

@Slf4j
@Service
public class Sh03001120Service extends BaseService<Sh03001120, Sh03001120.Sh03001120Id> {

    @Autowired
    private Sh03001120Repo sh03001120Repo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.online.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.online.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001120";
    }

    @Inject
    public Sh03001120Service(Sh03001120Repo sh03001120Repository) {
        super(sh03001120Repository);
    }

    public Page<Sh03001120> find(Pageable pageable, RequestParams<Sh03001120VO> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        Timestamp referDate = requestParams.getTimestamp("referDate");

        String referStatementNo = requestParams.getString("referStatementNo");
        Timestamp dealStartTime = DateUtils.convertToTimestamp(requestParams.getString("referDate") + ' ' + requestParams.getString("referStartTime"), "yyyy-MM-dd HH:mm");
        Timestamp dealEndTime = DateUtils.convertToTimestamp(requestParams.getString("referDate") + ' ' + requestParams.getString("referEndTime"), "yyyy-MM-dd HH:mm");

        QSh03001120 qSh03001120 = QSh03001120.sh03001120;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001120.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001120.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001120.terminalNo.eq(terminalNo));
        }

        if (isNotEmpty(referStatementNo)) {
            builder.and(qSh03001120.referStatementNo.eq(referStatementNo));
        }

        if (referDate != null) {
            builder.and(qSh03001120.referDate.eq(referDate));
        }

        if (dealStartTime != null && dealEndTime != null) {
            builder.and(qSh03001120.dealTime.between(dealStartTime, dealEndTime));
        }

        OrderSpecifier<Timestamp> sortOrder = qSh03001120.dealTime.desc();

        List<Sh03001120> resultList = select().from(qSh03001120).where(builder).orderBy(sortOrder).fetch();

        return filter(resultList, pageable, filter, Sh03001120.class);
    }

    public ApiResponse findOne(Sh03001120VO vo) {

        boolean error = false;

        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh03001120Service-sendAndReceive :: {}", e.getMessage());
            error = true;
        }

        if(error){
            return ApiResponse.of(ApiStatus.SYSTEM_ERROR, "거래내역조회 전문응답코드가 99입니다.");
        } else {
            return ApiResponse.of(ApiStatus.SUCCESS, "SUCCESS");
        }
    }

    private Sh03001120 findResult(Sh03001120VO vo) {

        Sh03001120 Sh03001120 = ModelMapperUtils.map(vo, Sh03001120.class);

        return Sh03001120;
    }

    public List<Sh03001120> findExcel(RequestParams<Sh03001120VO> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        Timestamp referDate = requestParams.getTimestamp("referDate");

        String referStatementNo = requestParams.getString("referStatementNo");
        Timestamp dealStartTime = DateUtils.convertToTimestamp(requestParams.getString("referDate") + ' ' + requestParams.getString("referStartTime"), "yyyy-MM-dd HH:mm");
        Timestamp dealEndTime = DateUtils.convertToTimestamp(requestParams.getString("referDate") + ' ' + requestParams.getString("referEndTime"), "yyyy-MM-dd HH:mm");

        QSh03001120 qSh03001120 = QSh03001120.sh03001120;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001120.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001120.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001120.terminalNo.eq(terminalNo));
        }

        if (isNotEmpty(referStatementNo)) {
            builder.and(qSh03001120.referStatementNo.eq(referStatementNo));
        }

        if (referDate != null) {
            builder.and(qSh03001120.referDate.eq(referDate));
        }

        if (dealStartTime != null && dealEndTime != null) {
            builder.and(qSh03001120.dealTime.between(dealStartTime, dealEndTime));
        }

        List<Sh03001120> resultList = select().from(qSh03001120).where(builder).fetch();

        return filter(resultList, filter);
    }
}
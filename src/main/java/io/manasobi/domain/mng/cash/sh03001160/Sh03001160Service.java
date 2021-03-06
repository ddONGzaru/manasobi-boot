package io.manasobi.domain.mng.cash.sh03001160;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.OrderSpecifier;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.utils.ModelMapperUtils;
import lombok.extern.slf4j.Slf4j;
import ma.glasnost.orika.BoundMapperFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

@Slf4j
@Service
public class Sh03001160Service extends BaseService<Sh03001160, Sh03001160.Sh03001160Id> {

    @Inject
    public Sh03001160Mapper sh03001160Mapper;

    @Inject
    public Sh03001160Service(Sh03001160Repo sh03001160Repo) {
        super(sh03001160Repo);
    }

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.batch.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.batch.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001160";
    }

    public ApiResponse sendAndReceive(Sh03001160VO vo) {
        ResponseEntity<ApiResponse> apiResponseEntity;

        try {
            Sh03001160VO sh03001160VO = ModelMapperUtils.map(vo, Sh03001160VO.class);

            apiResponseEntity = restTemplate.postForEntity(url, sh03001160VO, ApiResponse.class);
        } catch (RestClientException e) {
            log.error("sh03001160Service-sendAndReceive :: {}", e.getMessage());
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        return apiResponseEntity.getBody();
    }

    public Page<Sh03001160> find(Pageable pageable, RequestParams<Sh03001160> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        Timestamp cashSendingDate = requestParams.getTimestamp("cashSendingDate");

        QSh03001160 qSh03001160 = QSh03001160.sh03001160;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001160.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001160.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001160.terminalNo.eq(terminalNo));
        }

        if (cashSendingDate != null) {
            builder.and(qSh03001160.cashSendingDate.eq(cashSendingDate));
        }

        OrderSpecifier<String> sortOrder = qSh03001160.addCashSendingSeqNo.asc();
        List<Sh03001160> resultList = select().from(qSh03001160).where(builder).orderBy(sortOrder).fetch();

        return filter(resultList, pageable, filter, Sh03001160.class);
    }

    public Sh03001160VO nextSeqNo(RequestParams<Sh03001160VO> requestParams) {

        Sh03001160 sh03001160 = new Sh03001160();

        sh03001160.setCashSendingDate(requestParams.getTimestamp("cashSendingDate"));
        sh03001160.setJisaCode(requestParams.getString("jisaCode"));
        sh03001160.setBranchCode(requestParams.getString("branchCode"));
        sh03001160.setTerminalNo(requestParams.getString("terminalNo"));

        return buildVO(sh03001160Mapper.nextSeqNo(sh03001160));
    }

    private Sh03001160VO buildVO(Sh03001160 sh03001160) {

        if (sh03001160 == null) {
            return new Sh03001160VO();
        } else {
            BoundMapperFacade<Sh03001160, Sh03001160VO> mapper =
                    ModelMapperUtils.getMapper("Sh03001160", this.getClass().getPackage().getName());
            return mapper.map(sh03001160);
        }
    }
}
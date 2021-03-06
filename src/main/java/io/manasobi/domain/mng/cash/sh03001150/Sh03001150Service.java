package io.manasobi.domain.mng.cash.sh03001150;

import com.querydsl.core.BooleanBuilder;
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
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

@Slf4j
@Service
public class Sh03001150Service extends BaseService<Sh03001150, Sh03001150.Sh03001150Id> {

    @Inject
    public Sh03001150Mapper sh03001150Mapper;

    @Autowired
    private Sh03001150Repo sh03001150Repo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.batch.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.batch.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001150";
    }

    @Inject
    public Sh03001150Service(Sh03001150Repo sh03001150Repo) {
        super(sh03001150Repo);
    }

    public Page<Sh03001150> find(Pageable pageable, RequestParams<Sh03001150> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        String dealType = requestParams.getString("dealType");
        Timestamp dealDate = requestParams.getTimestamp("dealDate");

        QSh03001150 qSh03001150 = QSh03001150.sh03001150;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001150.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001150.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001150.terminalNo.eq(terminalNo));
        }

        if (isNotEmpty(dealType)) {
            builder.and(qSh03001150.dealType.eq(dealType));
        }

        if (dealDate != null) {
            builder.and(qSh03001150.dealDate.eq(dealDate));
        }

        List<Sh03001150> resultList = select().from(qSh03001150).where(builder).fetch();

        return filter(resultList, pageable, filter, Sh03001150.class);
    }

    public Sh03001150VO nextSeqNo(RequestParams<Sh03001150VO> requestParams) {

        Sh03001150 sh03001150 = new Sh03001150();

        sh03001150.setDealDate(requestParams.getTimestamp("dealDate"));
        sh03001150.setJisaCode(requestParams.getString("jisaCode"));
        sh03001150.setBranchCode(requestParams.getString("branchCode"));
        sh03001150.setTerminalNo(requestParams.getString("terminalNo"));

        return buildVO(sh03001150Mapper.nextSeqNo(sh03001150));
    }

    private Sh03001150VO buildVO(Sh03001150 Sh03001150) {

        if (Sh03001150 == null) {
            return new Sh03001150VO();
        } else {
            BoundMapperFacade<Sh03001150, Sh03001150VO> mapper =
                    ModelMapperUtils.getMapper("Sh03001150", this.getClass().getPackage().getName());
            return mapper.map(Sh03001150);
        }
    }

    public Sh03001150VO findOne(Sh03001150VO vo) {

        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh01001120Service-sendAndReceive :: {}", e);
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        Sh03001150 sh03001150 = findResult(vo);

        return Sh03001150VO.of(sh03001150);
    }

    private Sh03001150 findResult(Sh03001150VO vo) {

        Sh03001150.Sh03001150Id id = new Sh03001150.Sh03001150Id();

        return sh03001150Repo.findOne(id);
    }
}
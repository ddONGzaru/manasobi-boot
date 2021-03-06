package io.manasobi.domain.mng.cash.sh03001140;

import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
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
public class Sh03001140Service extends BaseService<Sh03001140, Sh03001140.Sh03001140Id> {

    @Autowired
    private Sh03001140Repo sh03001140Repo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.batch.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.batch.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001140";
    }
    
    @Inject
    public Sh03001140Service(Sh03001140Repo sh03001140Repo) {
        super(sh03001140Repo);
    }

    public Page<Sh03001140> find(Pageable pageable, RequestParams<Sh03001140> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        Timestamp startDate = requestParams.getTimestamp("startDate");
        Timestamp endDate = requestParams.getTimestamp("endDate");

        QSh03001140 qSh03001140 = QSh03001140.sh03001140;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001140.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001140.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001140.terminalNo.eq(terminalNo));
        }

        if (startDate != null && endDate != null) {
            builder.and(qSh03001140.closeDate.between(startDate, endDate));
        }

        List<Sh03001140> resultList = select().from(qSh03001140).where(builder).fetch();

        return filter(resultList, pageable, filter, Sh03001140.class);
    }

    public Sh03001140VO save(Sh03001140VO vo) {

        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh03001140Service-sendAndReceive :: {}", e.getMessage());

            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        Sh03001140 sh03001140 = findResult(vo);

        return Sh03001140VO.of(sh03001140);
    }

    private Sh03001140 findResult(Sh03001140VO vo) {

        Sh03001140 sh03001140 = ModelMapperUtils.map(vo, Sh03001140.class);

        return sh03001140;
    }
}
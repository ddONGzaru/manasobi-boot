package io.manasobi.domain.mng.cash.sh03001190;

import com.bgf.shbank.utils.ModelMapperUtils;
import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.utils.ModelMapperUtils;
import io.onsemiro.core.api.ApiException;
import io.onsemiro.core.api.response.ApiResponse;
import io.onsemiro.core.code.ApiStatus;
import io.onsemiro.core.domain.BaseService;
import io.onsemiro.core.parameter.RequestParams;
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
public class Sh03001190Service extends BaseService<Sh03001190, Sh03001190.Sh03001190Id> {

    @Autowired
    private Sh03001190Repository sh03001190Repo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.batch.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.batch.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001190";
    }

    @Inject
    public Sh03001190Service(Sh03001190Repository sh03001190Repository) {
        super(sh03001190Repository);
    }

    public Page<Sh03001190> find(Pageable pageable, RequestParams<Sh03001190> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        Timestamp startDate = requestParams.getTimestamp("startDate");
        Timestamp endDate = requestParams.getTimestamp("endDate");

        QSh03001190 qSh03001190 = QSh03001190.sh03001190;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001190.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001190.branchCode.eq(branchCode));
        }

        if (startDate != null && endDate != null) {
            builder.and(qSh03001190.reqDate.between(startDate, endDate));
        }

        List<Sh03001190> resultList = select().from(qSh03001190).where(builder).fetch();

        return filter(resultList, pageable, filter, Sh03001190.class);
    }

    public Sh03001190VO findOne(Sh03001190VO vo) {

        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh03001190Service-sendAndReceive :: {}", e.getMessage());
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        Sh03001190 sh03001190 = findResult(vo);

        return Sh03001190VO.of(sh03001190);
    }

    private Sh03001190 findResult(Sh03001190VO vo) {

        Sh03001190 sh03001190 = ModelMapperUtils.map(vo, Sh03001190.class);

        return sh03001190;
    }
}

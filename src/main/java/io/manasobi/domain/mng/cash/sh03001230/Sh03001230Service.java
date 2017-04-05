package io.manasobi.domain.mng.cash.sh03001230;

import com.bgf.shbank.utils.ModelMapperUtils;
import com.querydsl.core.BooleanBuilder;
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
public class Sh03001230Service extends BaseService<Sh03001230, Sh03001230.Sh03001230Id> {

    @Autowired
    private Sh03001230Repository sh03001230Repo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.online.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.online.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001230";
    }

    @Inject
    public Sh03001230Service(Sh03001230Repository sh03001230Repository) {
        super(sh03001230Repository);
    }

    public Page<Sh03001230> find(Pageable pageable, RequestParams<Sh03001230> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        Timestamp startDate = requestParams.getTimestamp("startDate");
        Timestamp endDate = requestParams.getTimestamp("endDate");

        QSh03001230 qSh03001230 = QSh03001230.sh03001230;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001230.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001230.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001230.terminalNo.eq(terminalNo));
        }

        if (startDate != null && endDate != null) {
            builder.and(qSh03001230.rtnDate.between(startDate, endDate));
        }

        List<Sh03001230> resultList = select().from(qSh03001230).where(builder).fetch();

        return filter(resultList, pageable, filter, Sh03001230.class);
    }

    public Sh03001230VO save(Sh03001230VO vo) {

        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh03001230Service-sendAndReceive :: {}", e);
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        Sh03001230 sh03001230 = findResult(vo);

        return Sh03001230VO.of(sh03001230);
    }

    private Sh03001230 findResult(Sh03001230VO vo) {

        Sh03001230 sh03001230 = ModelMapperUtils.map(vo, Sh03001230.class);

        return sh03001230;
    }
}
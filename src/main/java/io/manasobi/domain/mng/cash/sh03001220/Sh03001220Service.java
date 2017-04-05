package io.manasobi.domain.mng.cash.sh03001220;

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
public class Sh03001220Service extends BaseService<Sh03001220, Sh03001220.Sh03001220Id> {

    @Autowired
    private Sh03001220Repository sh003001220Repo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.online.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.online.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001220";
    }

    @Inject
    public Sh03001220Service(Sh03001220Repository sh03001220Repository) {
        super(sh03001220Repository);
    }

    public Page<Sh03001220> find(Pageable pageable, RequestParams<Sh03001220> requestParams) {

        String filter = requestParams.getString("filter");

        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String cornerCode = requestParams.getString("cornerCode");
        String terminalNo = requestParams.getString("terminalNo");
        String reqGubun = requestParams.getString("reqGubun");
        Timestamp reqDate = requestParams.getTimestamp("reqDate");

        QSh03001220 qSh03001220 = QSh03001220.sh03001220;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001220.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001220.branchCode.eq(branchCode));
        }

        if (isNotEmpty(cornerCode)) {
            builder.and(qSh03001220.cornerCode.eq(cornerCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001220.terminalNo.eq(terminalNo));
        }

        if (isNotEmpty(reqGubun)) {
            builder.and(qSh03001220.reqGubun.eq(reqGubun));
        }

        if (reqDate != null) {
            builder.and(qSh03001220.reqDate.eq(reqDate));
        }

        List<Sh03001220> resultList = select().from(qSh03001220).where(builder).fetch();

        return filter(resultList, pageable, filter, Sh03001220.class);
    }

    public Sh03001220VO save(Sh03001220VO vo) {

        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh03001220Service-sendAndReceive :: {}", e.getMessage());
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        Sh03001220 sh03001220 = findResult(vo);

        return Sh03001220VO.of(sh03001220);
    }

    private Sh03001220 findResult(Sh03001220VO vo) {

        Sh03001220 sh03001220 = ModelMapperUtils.map(vo, Sh03001220.class);

        return sh03001220;
    }
}
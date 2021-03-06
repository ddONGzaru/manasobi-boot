package io.manasobi.domain.mng.equip.sh02001230;

import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import lombok.extern.slf4j.Slf4j;
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
public class Sh02001230Service extends BaseService<Sh02001230, Timestamp> {

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.online.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.online.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/equip/sh02001230";
    }

    @Inject
    public Sh02001230Service(Sh02001230Repository sh02001230Repository) {
        super(sh02001230Repository);
    }

    public Page<Sh02001230> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, Sh02001230.class);
    }

    public Page<Sh02001230> find(Pageable pageable, RequestParams<Sh02001230> requestParams) {

        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String cornerCode = requestParams.getString("cornerCode");

        QSh02001230 qSh02001230 = QSh02001230.sh02001230;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(branchCode)) {
            builder.and(qSh02001230.branchCode.eq(branchCode));
        }

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh02001230.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(cornerCode)) {
            builder.and(qSh02001230.cornerCode.eq(cornerCode));
        }

        List<Sh02001230> resultList = select().from(qSh02001230).where(builder).fetch();

        return filter(resultList, pageable, "", Sh02001230.class);
    }

    public List<Sh02001230> find(RequestParams<Sh02001230VO> requestParams) {

        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String cornerCode = requestParams.getString("cornerCode");

        QSh02001230 qSh02001230 = QSh02001230.sh02001230;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(branchCode)) {
            builder.and(qSh02001230.branchCode.eq(branchCode));
        }

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh02001230.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(cornerCode)) {
            builder.and(qSh02001230.cornerCode.eq(cornerCode));
        }

        List<Sh02001230> resultList = select().from(qSh02001230).where(builder).fetch();

        return resultList;
    }

    public ApiResponse sendAndReceive(Sh02001230VO vo) {

        if (vo.getChangeDate().contains("-")) {
            vo.setChangeDate(vo.getChangeDate().replace("-", ""));
        }

        if (vo.getChangeTime().contains(":")) {
            vo.setChangeTime(vo.getChangeTime().replace(":", ""));
        }

        ResponseEntity<ApiResponse> apiResponseEntity;

        try {
            apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
        } catch (RestClientException e) {
            log.error("Sh02001230Service-sendAndReceive :: {}", e.getMessage());
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "신규설치기기정보 전문응답코드가 99입니다.");
        }

        return apiResponseEntity.getBody();
    }
}
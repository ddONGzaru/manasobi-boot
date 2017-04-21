package io.manasobi.domain.mng.cash.sh03001220;

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
import java.util.List;

@Slf4j
@Service
public class Sh03001220Service extends BaseService<Sh03001220, Sh03001220.Sh03001220Id> {

    @Inject
    public Sh03001220Mapper sh03001220Mapper;

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

        Sh03001220 sh03001220 = new Sh03001220();

        sh03001220.setJisaCode(requestParams.getString("jisaCode"));
        sh03001220.setReqGubun(requestParams.getString("reqGubun"));
        sh03001220.setReqDate(requestParams.getTimestamp("reqDate"));

        List<Sh03001220> resultList = sh03001220Mapper.findAll(sh03001220);

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
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "운영자금인수정보 전문응답코드가 99입니다.");
        }

        Sh03001220 sh03001220 = findResult(vo);

        return Sh03001220VO.of(sh03001220);
    }

    private Sh03001220 findResult(Sh03001220VO vo) {

        Sh03001220 sh03001220 = ModelMapperUtils.map(vo, Sh03001220.class);

        return sh03001220;
    }
}
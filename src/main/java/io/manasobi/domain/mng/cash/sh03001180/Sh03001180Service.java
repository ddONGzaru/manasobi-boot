package io.manasobi.domain.mng.cash.sh03001180;

import com.bgf.shbank.utils.ModelMapperUtils;
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
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.util.List;

@Slf4j
@Service
public class Sh03001180Service extends BaseService<Sh03001180, Sh03001180.Sh03001180Id> {

    @Inject
    public Sh03001180Mapper sh03001180Mapper;

    @Inject
    public Sh03001180Service(Sh03001180Repository sh03001180Repository) {
        super(sh03001180Repository);
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
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001180";
    }

    public ApiResponse sendAndReceive(Sh03001180VO vo) {
        ResponseEntity<ApiResponse> apiResponseEntity;

        try {
            Sh03001180VO sh03001180VO = ModelMapperUtils.map(vo, Sh03001180VO.class);

            apiResponseEntity = restTemplate.postForEntity(url, sh03001180VO, ApiResponse.class);
        } catch (RestClientException e) {
            log.error("sh03001180Service-sendAndReceive :: {}", e.getMessage());
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        return apiResponseEntity.getBody();
    }

    public Page<Sh03001180> find(Pageable pageable, String filter) {
        return filter(findAll(), pageable, filter, Sh03001180.class);
    }

    public Page<Sh03001180> findAll(Pageable pageable, RequestParams<Sh03001180VO> requestParams) {

        String filter = requestParams.getString("filter");

        Sh03001180 sh03001180 = new Sh03001180();

        sh03001180.setJisaCode(requestParams.getString("jisaCode"));
        sh03001180.setBranchCode(requestParams.getString("branchCode"));
        sh03001180.setTerminalNo(requestParams.getString("terminalNo"));
        sh03001180.setCashSendingDate(requestParams.getTimestamp("startDate"));

        List<Sh03001180> resultList = sh03001180Mapper.findAll(sh03001180);

        return filter(resultList, pageable, filter, Sh03001180.class);
    }
}
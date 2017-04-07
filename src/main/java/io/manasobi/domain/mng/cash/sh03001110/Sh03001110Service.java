package io.manasobi.domain.mng.cash.sh03001110;

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
public class Sh03001110Service extends BaseService<Sh03001110, Sh03001110.Sh03001110Id> {

    @Inject
    private Sh03001110Mapper sh03001110Mapper;

    @Autowired
    private Sh03001110Repo sh03001110Repo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.online.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.online.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001110";
    }

    @Inject
    public Sh03001110Service(Sh03001110Repo sh03001110Repo) {
        super(sh03001110Repo);
    }

    public Page<Sh03001110> find(Pageable pageable, RequestParams<Sh03001110> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        Timestamp startDate = requestParams.getTimestamp("startDate");
        Timestamp endDate = requestParams.getTimestamp("endDate");

        QSh03001110 qSh03001110 = QSh03001110.sh03001110;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001110.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001110.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001110.terminalNo.eq(terminalNo));
        }

        if (startDate != null && endDate != null) {
            builder.and(qSh03001110.referDate.between(startDate, endDate));
        }

        List<Sh03001110> resultList = select().from(qSh03001110).where(builder).fetch();

        return filter(resultList, pageable, filter, Sh03001110.class);
    }

    public Page<Sh03001110> findPage(Pageable pageable, RequestParams<Sh03001110VO> requestParams) {

        String filter = requestParams.getString("filter");

        Sh03001110 sh03001110 = new Sh03001110();

        sh03001110.setJisaCode(requestParams.getString("jisaCode"));
        sh03001110.setBranchCode(requestParams.getString("branchCode"));
        sh03001110.setTerminalNo(requestParams.getString("terminalNo"));
        sh03001110.setStartDate(requestParams.getTimestamp("startDate"));
        sh03001110.setEndDate(requestParams.getTimestamp("endDate"));

        List<Sh03001110> resultList = sh03001110Mapper.findAll(sh03001110);

        return filter(resultList, pageable, filter, Sh03001110.class);
    }

    public Sh03001110VO findOne(Sh03001110VO sh03001190VO) {

        Sh03001110 sh03001110 = ModelMapperUtils.map(sh03001190VO, Sh03001110.class);

        return buildVO(sh03001110Mapper.findOne(sh03001110));
    }

    private Sh03001110VO buildVO(Sh03001110 sh03001110) {

        if (sh03001110 == null) {
            return new Sh03001110VO();
        } else {
            /*BoundMapperFacade<Sh03001110, Sh03001110VO> mapper =
                    ModelMapperUtils.getMapper("Sh03001110", this.getClass().getPackage().getName());
            return mapper.map(Sh03001110);*/
            return ModelMapperUtils.map(sh03001110, Sh03001110VO.class);
        }
    }

    public Sh03001110VO findModal(Sh03001110VO vo) {

        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh01001120Service-sendAndReceive :: {}", e.getMessage());
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        return vo;
    }

    public Sh03001110VO findAll(Sh03001110VO vo) {
        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh03001110Service-sendAndReceive :: {}", e);
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "Socket 통신 중에 오류가 발생하였습니다.");
        }

        return vo;
    }

    public List<Sh03001110> findExcel(RequestParams<Sh03001110VO> requestParams) {

        String filter = requestParams.getString("filter");

        Sh03001110 sh03001110 = new Sh03001110();

        sh03001110.setJisaCode(requestParams.getString("jisaCode"));
        sh03001110.setBranchCode(requestParams.getString("branchCode"));
        sh03001110.setTerminalNo(requestParams.getString("terminalNo"));
        sh03001110.setStartDate(requestParams.getTimestamp("startDate"));
        sh03001110.setEndDate(requestParams.getTimestamp("endDate"));

        List<Sh03001110> resultList = sh03001110Mapper.findAll(sh03001110);

        return filter(resultList, filter);
    }
}
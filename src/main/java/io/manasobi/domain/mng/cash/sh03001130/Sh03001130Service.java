package io.manasobi.domain.mng.cash.sh03001130;

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
public class Sh03001130Service extends BaseService<Sh03001130, Sh03001130.Sh03001130Id> {

    @Inject
    private Sh03001130Mapper sh03001130Mapper;

    @Autowired
    private Sh03001130Repo sh03001130Repo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${msg.exchange.gateway.online.ip}")
    private String ip;

    @Value("${msg.exchange.gateway.online.port}")
    private String port;

    private String url;

    @PostConstruct
    private void buildUrl() {
        url = "http://" + ip + ":" + port + "/api/v1/mng/cash/sh03001130";
    }

    @Inject
    public Sh03001130Service(Sh03001130Repo sh03001130Repository) {
        super(sh03001130Repository);
    }

    public Page<Sh03001130> find(Pageable pageable, RequestParams<Sh03001130> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        String closeGubun = requestParams.getString("closeGubun");
        Timestamp reqDate = requestParams.getTimestamp("reqDate");

        QSh03001130 qSh03001130 = QSh03001130.sh03001130;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001130.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001130.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001130.terminalNo.eq(terminalNo));
        }

        if (isNotEmpty(closeGubun)) {
            builder.and(qSh03001130.closeGubun.eq(closeGubun));
        }

        if (reqDate != null) {
            builder.and(qSh03001130.reqDate.eq(reqDate));
        }

        List<Sh03001130> resultList = select().from(qSh03001130).where(builder).fetch();

        return filter(resultList, pageable, filter, Sh03001130.class);
    }

    public Sh03001130VO findCloseAmt(RequestParams<Sh03001130VO> requestParams) {

        String filter = requestParams.getString("filter");
        String jisaCode = requestParams.getString("jisaCode");
        String branchCode = requestParams.getString("branchCode");
        String terminalNo = requestParams.getString("terminalNo");
        String closeGubun = requestParams.getString("closeGubun");
        Timestamp reqDate = requestParams.getTimestamp("reqDate");

        QSh03001130 qSh03001130 = QSh03001130.sh03001130;

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(jisaCode)) {
            builder.and(qSh03001130.jisaCode.eq(jisaCode));
        }

        if (isNotEmpty(branchCode)) {
            builder.and(qSh03001130.branchCode.eq(branchCode));
        }

        if (isNotEmpty(terminalNo)) {
            builder.and(qSh03001130.terminalNo.eq(terminalNo));
        }

        if (isNotEmpty(closeGubun)) {
            builder.and(qSh03001130.closeGubun.eq(closeGubun));
        }

        if (reqDate != null) {
            builder.and(qSh03001130.reqDate.eq(reqDate));
        }

        List<Sh03001130> resultList = select().from(qSh03001130).where(builder).fetch();

        if (resultList.isEmpty()) {
            return null;
        }

        return buildVO(resultList.get(0));
    }

    public Page<Sh03001130> findPage(Pageable pageable, RequestParams<Sh03001130VO> requestParams) {

        String filter = requestParams.getString("filter");

        Sh03001130 sh03001130 = new Sh03001130();

        sh03001130.setJisaCode(requestParams.getString("jisaCode"));
        sh03001130.setBranchCode(requestParams.getString("branchCode"));
        sh03001130.setTerminalNo(requestParams.getString("terminalNo"));
        sh03001130.setCloseGubun(requestParams.getString("closeGubun"));
        sh03001130.setReqDate(requestParams.getTimestamp("reqDate"));

        List<Sh03001130> resultList = sh03001130Mapper.findAll(sh03001130);

        return filter(resultList, pageable, filter, Sh03001130.class);
    }

    public Sh03001130VO findOne(Sh03001130VO vo) {
        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh03001130Service-sendAndReceive :: {}", e);
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "마감조회(단건) 전문응답코드가 99입니다.");
        }

        return vo;
    }

    public Sh03001130VO findAll(Sh03001130VO vo) {
        try {

            ResponseEntity<ApiResponse> apiResponseEntity = restTemplate.postForEntity(url, vo, ApiResponse.class);
            ApiResponse apiResponse = apiResponseEntity.getBody();

            if (apiResponse.getStatus() == -1) {
                throw new Exception();
            }

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Sh03001130Service-sendAndReceive :: {}", e);
            throw new ApiException(ApiStatus.SYSTEM_ERROR, "마감조회(전체) 전문응답코드가 99입니다.");
        }

        return vo;
    }

    private Sh03001130VO buildVO(Sh03001130 sh03001130) {

        if (sh03001130 == null) {
            return new Sh03001130VO();
        } else {
            BoundMapperFacade<Sh03001130, Sh03001130VO> mapper =
                    ModelMapperUtils.getMapper("Sh03001130", this.getClass().getPackage().getName());
            return mapper.map(sh03001130);
        }
    }
}
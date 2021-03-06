package io.manasobi.domain.mng.error.minwon_mng;

import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.NoArgsConstructor;
import ma.glasnost.orika.BoundMapperFacade;
import org.springframework.data.domain.Page;

import java.util.List;

import static java.util.stream.Collectors.*;


@Data
@NoArgsConstructor
public class MinwonMngVO extends BaseVO {

    private String jisaCode;

    private String branchCode;

    private String cornerCode;

    private String terminalNo;

    private String regDatetime;

    private String minwonType;

    private String minwonStatus;

    private String minwonContent;

    private String handleContent;

    private String updateDatetime;

    private String lastModifyEmpName;


    public static MinwonMngVO of(MinwonMng minwonMng) {
        BoundMapperFacade<MinwonMng, MinwonMngVO> mapper =
                ModelMapperUtils.getMapper("MinwonMng", MinwonMngVO.class.getPackage().getName());

        return mapper.map(minwonMng);
    }

    public static List<MinwonMngVO> of(List<MinwonMng> minwonMngList) {
        return minwonMngList.stream().map(minwonMng -> of(minwonMng)).collect(toList());
    }

    public static List<MinwonMngVO> of(Page<MinwonMng> minwonMngPage) {
        return minwonMngPage.getContent().stream().map(minwonMng -> of(minwonMng)).collect(toList());
    }
}
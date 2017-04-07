package io.manasobi.domain.mng.equip.corner_status;

import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import ma.glasnost.orika.BoundMapperFacade;
import org.springframework.data.domain.Page;

import java.util.List;

import static java.util.stream.Collectors.*;


@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class CornerStatusVO extends BaseVO {

	private String jisaCode;
	private String jisaCodeName;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String placeGubun;
	private String placeGubunName;

	private String branchGubun;
	private String branchGubunName;

	private String specialStyleGubun;
	private String specialStyleGubunName;

	private String operTimeGubun;
	private String operTimeGubunName;

	private String operStartTime;

	private String operEndTime;

	private String checkOperEnable;
	private String checkOperEnableName;

	private String seviceFee;

	private String securityCorpCode;
	private String securityCorpCodeName;

	private String facHireEnable;
	private String facHireEnableName;

	private String addr;

	private String unusl;

	private String operDay;


    public static CornerStatusVO of(CornerStatus cornerStatus) {
		/*BoundMapperFacade<CornerStatus, CornerStatusVO> mapper =
				ModelMapperUtils.getMapper("CornerStatus", CornerStatusVO.class.getPackage().getName());
		CornerStatusVO cornerStatusVO = mapper.map(cornerStatus);
		return cornerStatusVO;*/
		return ModelMapperUtils.map(cornerStatus, CornerStatusVO.class);
    }

    public static List<CornerStatusVO> of(List<CornerStatus> cornerStatusList) {
        return cornerStatusList.stream().map(cornerStatus -> of(cornerStatus)).collect(toList());
    }

    public static List<CornerStatusVO> of(Page<CornerStatus> cornerStatusPage) {
        return cornerStatusPage.getContent().stream().map(cornerStatus -> of(cornerStatus)).collect(toList());
    }
}
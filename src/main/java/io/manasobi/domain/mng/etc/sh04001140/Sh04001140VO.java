package io.manasobi.domain.mng.etc.sh04001140;

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
public class Sh04001140VO extends BaseVO {

	private String seqNo;

	private String jisaCode;
	private String jisaCodeName;

	private String branchCode;
	private String branchCodeName;

	private String mngBranchCode;
	private String mngBranchCodeName;

	private String cornerCode;

	private String terminalNo;

	private String modelCode;
	private String modelCodeName;

	private String overhaulCorp;
	private String overhaulCorpName;

	private String overhaulEmpName;

	private String inspectionEmpName;

	private String inspectionCorp;
	private String inspectionCorpName;

	private String overhaulGubun;
	private String overhaulGubunName;

	private String overhaulDate;

	private String overhaulStartTime;

	private String overhaulEndTime;

	private String overhaulHandleContent;

	private String inspectionOpinion;


    public static Sh04001140VO of(Sh04001140 sh04001140) {
		/*BoundMapperFacade<Sh04001140, Sh04001140VO> mapper =
				ModelMapperUtils.getMapper("Sh04001140", Sh04001140VO.class.getPackage().getName());
		return mapper.map(sh04001140);*/
		return ModelMapperUtils.map(sh04001140, Sh04001140VO.class);
    }

    public static List<Sh04001140VO> of(List<Sh04001140> sh04001140List) {
        return sh04001140List.stream().map(sh04001140 -> of(sh04001140)).collect(toList());
    }

    public static List<Sh04001140VO> of(Page<Sh04001140> sh04001140Page) {
        return sh04001140Page.getContent().stream().map(sh04001140 -> of(sh04001140)).collect(toList());
    }
}
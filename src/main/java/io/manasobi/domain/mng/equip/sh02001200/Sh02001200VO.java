package io.manasobi.domain.mng.equip.sh02001200;

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
public class Sh02001200VO extends BaseVO {

	private String stextNoticeDatetime;

	private String stextGubun;

	private String jisaCode;

	private String branchCode;

	private String cornerCode;

	private String cornerName;

	private String placeGubun;

	private String branchGubun;

	private String operStartGubun;

	private String operStartTime;

	private String operEndTime;

	private String securityCorpCode;

	private String checkOperEnable;

	private String operDay;

	private String addr;

	private String installPlace;

	private String detailFacInfo;


    public static Sh02001200VO of(Sh02001200 sh02001200) {
		/*BoundMapperFacade<Sh02001200, Sh02001200VO> mapper =
				ModelMapperUtils.getMapper("Sh02001200", Sh02001200VO.class.getPackage().getName());
		return mapper.map(sh02001200);*/
		return ModelMapperUtils.map(sh02001200, Sh02001200VO.class);
    }

    public static List<Sh02001200VO> of(List<Sh02001200> sh02001200List) {
        return sh02001200List.stream().map(sh02001200 -> of(sh02001200)).collect(toList());
    }

    public static List<Sh02001200VO> of(Page<Sh02001200> sh02001200Page) {
        return sh02001200Page.getContent().stream().map(sh02001200 -> of(sh02001200)).collect(toList());
    }
}
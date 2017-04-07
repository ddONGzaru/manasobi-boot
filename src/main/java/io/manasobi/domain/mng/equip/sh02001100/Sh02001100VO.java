package io.manasobi.domain.mng.equip.sh02001100;

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
public class Sh02001100VO extends BaseVO {

	private String workSeqNo;

	private String changeChasu;

	private String stextGubun;

	private String workGubun;

	private String noticeDatetime;

	private String taskApplyDate;

	private String workDate;

	private String installTerminalCount;

	private String installFacCount;

	private String branchName;

	private String cornerName;

	private String bizManagerName;

	private String managerTelno;

	private String workContent;


    public static Sh02001100VO of(Sh02001100 sh02001100) {
		/*BoundMapperFacade<Sh02001100, Sh02001100VO> mapper =
				ModelMapperUtils.getMapper("Sh02001100", Sh02001100VO.class.getPackage().getName());
		return mapper.map(sh02001100);*/
		return ModelMapperUtils.map(sh02001100, Sh02001100VO.class);
    }

    public static List<Sh02001100VO> of(List<Sh02001100> sh02001100List) {
        return sh02001100List.stream().map(sh02001100 -> of(sh02001100)).collect(toList());
    }

    public static List<Sh02001100VO> of(Page<Sh02001100> sh02001100Page) {
        return sh02001100Page.getContent().stream().map(sh02001100 -> of(sh02001100)).collect(toList());
    }
}
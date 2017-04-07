package io.manasobi.domain.mng.equip.sh02001280;

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
public class Sh02001280VO extends BaseVO {

	private String workSeqNo;

	private String chasu;

	private String jisaCode;

	private String branchCode;

	private String cornerCode;

	private String cornerName;

	private String workDate;

	private String workContent;


    public static Sh02001280VO of(Sh02001280 sh02001280) {
        BoundMapperFacade<Sh02001280, Sh02001280VO> mapper =
                ModelMapperUtils.getMapper("Sh02001280", Sh02001280VO.class.getPackage().getName());
        return mapper.map(sh02001280);
    }

    public static List<Sh02001280VO> of(List<Sh02001280> sh02001280List) {
        return sh02001280List.stream().map(sh02001280 -> of(sh02001280)).collect(toList());
    }

    public static List<Sh02001280VO> of(Page<Sh02001280> sh02001280Page) {
        return sh02001280Page.getContent().stream().map(sh02001280 -> of(sh02001280)).collect(toList());
    }
}
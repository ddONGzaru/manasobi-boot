package io.manasobi.domain.mng.equip.sh02001190;

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
public class Sh02001190VO extends BaseVO {

	private String txId;

	private String stextGubun;

	private String changeBeforeFacGubunCode;
    private String changeBeforeFacGubunCodeName;

	private String changeBeforeFacCode;
    private String changeBeforeFacCodeName;

	private String changeAfterFacGubunCode;
    private String changeAfterFacGubunCodeName;

	private String changeAfterFacCode;

	private String changeAfterFacName;

	private String changeAfterCorpName;

	private String changeAfterHireFee;


    public static Sh02001190VO of(Sh02001190 sh02001190) {

        BoundMapperFacade<Sh02001190, Sh02001190VO> mapper =
                ModelMapperUtils.getMapper("Sh02001190", Sh02001190VO.class.getPackage().getName());
        return mapper.map(sh02001190);
    }

    public static List<Sh02001190VO> of(List<Sh02001190> sh02001190List) {
        return sh02001190List.stream().map(sh02001190 -> of(sh02001190)).collect(toList());
    }

    public static List<Sh02001190VO> of(Page<Sh02001190> sh02001190Page) {
        return sh02001190Page.getContent().stream().map(sh02001190 -> of(sh02001190)).collect(toList());
    }
}
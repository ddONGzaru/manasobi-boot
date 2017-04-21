package io.manasobi.domain.mng.sla.sh_sla_a0;

import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Page;
import java.util.List;
import java.sql.Timestamp;
import static java.util.stream.Collectors.toList;


@Data
@NoArgsConstructor
public class ShSlaA0VO extends BaseVO {

	private Timestamp regDatetime;

	private String jisaCode;

	private String branchCode;

	private String cornerCode;

	private Timestamp overhaulDate;

	private String branchName;

	private String cornerName;

	private Timestamp operDate;

	private String branchGubun;

	private String corpCode;

	private String takePhotoEnable;

	private String successCount;

	private String overhaulCount;

	private String overhaulResult;

	private String overhaulUnusl;

	private String submitTargetCount;

	private String submitCount;

	private String productCondt;

	private String terminalCondt;

	private String groundCondt;

	private String garbageCondt;

	private String cashEnvelopeCondt;

	private String posterCondt;


    public static ShSlaA0VO of(ShSlaA0 shSlaA0) {
        ShSlaA0VO shSlaA0VO = ModelMapperUtils.map(shSlaA0, ShSlaA0VO.class);
        return shSlaA0VO;
    }

    public static List<ShSlaA0VO> of(List<ShSlaA0> shSlaA0List) {
        return shSlaA0List.stream().map(shSlaA0 -> of(shSlaA0)).collect(toList());
    }

    public static List<ShSlaA0VO> of(Page<ShSlaA0> shSlaA0Page) {
        return shSlaA0Page.getContent().stream().map(shSlaA0 -> of(shSlaA0)).collect(toList());
    }
}
package io.manasobi.domain.mng.sla.sh_sla_b0;

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
public class ShSlaB0VO extends BaseVO {

	private String txId;

	private String totalCorp;

	private String jisaCode;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String terminalNo;

	private String mngGubun;

	private String operTimeGubun;

	private String terminalCorpName;

	private String modelName;

	private String atmGubun;

	private Timestamp overhaulDatetime;


    public static ShSlaB0VO of(ShSlaB0 shSlaB0) {
        ShSlaB0VO shSlaB0VO = ModelMapperUtils.map(shSlaB0, ShSlaB0VO.class);
        return shSlaB0VO;
    }

    public static List<ShSlaB0VO> of(List<ShSlaB0> shSlaB0List) {
        return shSlaB0List.stream().map(shSlaB0 -> of(shSlaB0)).collect(toList());
    }

    public static List<ShSlaB0VO> of(Page<ShSlaB0> shSlaB0Page) {
        return shSlaB0Page.getContent().stream().map(shSlaB0 -> of(shSlaB0)).collect(toList());
    }
}
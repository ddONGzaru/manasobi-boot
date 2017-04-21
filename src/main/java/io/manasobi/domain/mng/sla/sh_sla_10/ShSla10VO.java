package io.manasobi.domain.mng.sla.sh_sla_10;

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
public class ShSla10VO extends BaseVO {

	private String txId;

	private Timestamp errorDatetime;

	private String calleeChasu;

	private String calleeGubun;

	private String jisaCode;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String terminalNo;

	private String securityCorp;

	private String calleeReqReason;

	private Timestamp calleeReqDatetime;

	private Timestamp arrivalDatetime;

	private String elapsedTime;

	private String report;

	private String accept;

	private String refuseReason;


    public static ShSla10VO of(ShSla10 shSla10) {
        ShSla10VO shSla10VO = ModelMapperUtils.map(shSla10, ShSla10VO.class);
        return shSla10VO;
    }

    public static List<ShSla10VO> of(List<ShSla10> shSla10List) {
        return shSla10List.stream().map(shSla10 -> of(shSla10)).collect(toList());
    }

    public static List<ShSla10VO> of(Page<ShSla10> shSla10Page) {
        return shSla10Page.getContent().stream().map(shSla10 -> of(shSla10)).collect(toList());
    }
}
package io.manasobi.domain.mng.sla.sh_sla_70;

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
public class ShSla70VO extends BaseVO {

	private String txId;

	private Timestamp errorDatetime;

	private String calleeChasu;

	private String customerWait;

	private String evalType;

	private String corpCode;

	private String calleeType;

	private String jisaCode;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String location;

	private String area;

	private String terminalNo;

	private String calleeGubun;

	private Timestamp calleeReqDatetime;

	private Timestamp arrivalPlanDatetime;

	private Timestamp arrivalDatetime;

	private String arrivalType;

	private String calleeReqElapsedTime;

	private String calleeReqElapsedSeconds;

	private String arrivalElapsedTime;

	private String arrivalElapsedSeconds;

	private Timestamp reportDatetime;

	private String errorContent;

	private String modelName;

	private String accept;

	private String refuseReason;


    public static ShSla70VO of(ShSla70 shSla70) {
        ShSla70VO shSla70VO = ModelMapperUtils.map(shSla70, ShSla70VO.class);
        return shSla70VO;
    }

    public static List<ShSla70VO> of(List<ShSla70> shSla70List) {
        return shSla70List.stream().map(shSla70 -> of(shSla70)).collect(toList());
    }

    public static List<ShSla70VO> of(Page<ShSla70> shSla70Page) {
        return shSla70Page.getContent().stream().map(shSla70 -> of(shSla70)).collect(toList());
    }
}
package io.manasobi.domain.mng.sla.sh_sla_80;

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
public class ShSla80VO extends BaseVO {

	private String txId;

	private Timestamp errorDatetime;

	private String calleeChasu;

	private String customerWaitEnable;

	private String corpCode;

	private String calleeReqGubun;

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

	private String handleMethod;

	private String calleeElapsedTime;

	private String calleeElapsedSeconds;

	private String arrivalElapsedTime;

	private String arrivalElapsedSeconds;

	private Timestamp arrivalPlanReportDatetime;

	private String errorContent;

	private String modelName;


    public static ShSla80VO of(ShSla80 shSla80) {
        ShSla80VO shSla80VO = ModelMapperUtils.map(shSla80, ShSla80VO.class);
        return shSla80VO;
    }

    public static List<ShSla80VO> of(List<ShSla80> shSla80List) {
        return shSla80List.stream().map(shSla80 -> of(shSla80)).collect(toList());
    }

    public static List<ShSla80VO> of(Page<ShSla80> shSla80Page) {
        return shSla80Page.getContent().stream().map(shSla80 -> of(shSla80)).collect(toList());
    }
}
package io.manasobi.domain.mng.sla.sh_sla_f0;

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
public class ShSlaF0VO extends BaseVO {

	private String txId;

	private Timestamp errorDatetime;

	private String calleeChasu;

	private String corpCode;

	private String jisaCode;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String location;

	private String area;

	private String terminalNo;

	private String calleeGubun;

	private String calleeResult;

	private Timestamp calleeReqDatetime;

	private Timestamp arrivalDatetime;

	private Timestamp handleDatetime;

	private Timestamp recoverDatetime;

	private String elapsedTime;

	private String elapsedSeconds;

	private String errorContent;

	private String modelName;

	private String accept;

	private String refuseReason;


    public static ShSlaF0VO of(ShSlaF0 shSlaF0) {
        ShSlaF0VO shSlaF0VO = ModelMapperUtils.map(shSlaF0, ShSlaF0VO.class);
        return shSlaF0VO;
    }

    public static List<ShSlaF0VO> of(List<ShSlaF0> shSlaF0List) {
        return shSlaF0List.stream().map(shSlaF0 -> of(shSlaF0)).collect(toList());
    }

    public static List<ShSlaF0VO> of(Page<ShSlaF0> shSlaF0Page) {
        return shSlaF0Page.getContent().stream().map(shSlaF0 -> of(shSlaF0)).collect(toList());
    }
}
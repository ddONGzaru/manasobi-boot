package io.manasobi.domain.mng.sla.sh_sla_20;

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
public class ShSla20VO extends BaseVO {

	private String txId;

	private Timestamp errorDatetime;

	private String corpCode;

	private String jisaCode;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String terminalNo;

	private Timestamp recoveryDatetime;

	private String elapsedTime;

	private String elapsedSeconds;

	private String errorContent;

	private String modelName;

	private String accept;

	private String refuseReason;


    public static ShSla20VO of(ShSla20 shSla20) {
        ShSla20VO shSla20VO = ModelMapperUtils.map(shSla20, ShSla20VO.class);
        return shSla20VO;
    }

    public static List<ShSla20VO> of(List<ShSla20> shSla20List) {
        return shSla20List.stream().map(shSla20 -> of(shSla20)).collect(toList());
    }

    public static List<ShSla20VO> of(Page<ShSla20> shSla20Page) {
        return shSla20Page.getContent().stream().map(shSla20 -> of(shSla20)).collect(toList());
    }
}
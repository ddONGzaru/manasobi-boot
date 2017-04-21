package io.manasobi.domain.mng.sla.sh_sla_e0;

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
public class ShSlaE0VO extends BaseVO {

	private Timestamp stndDate;

	private String txId;

	private String corpCode;

	private String jisaCode;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String terminalNo;

	private String operStartTime;

	private String operEndTime;

	private String modelName;

	private String totalOperTime;

	private String realOperTime;

	private String noneOperTime;


    public static ShSlaE0VO of(ShSlaE0 shSlaE0) {
        ShSlaE0VO shSlaE0VO = ModelMapperUtils.map(shSlaE0, ShSlaE0VO.class);
        return shSlaE0VO;
    }

    public static List<ShSlaE0VO> of(List<ShSlaE0> shSlaE0List) {
        return shSlaE0List.stream().map(shSlaE0 -> of(shSlaE0)).collect(toList());
    }

    public static List<ShSlaE0VO> of(Page<ShSlaE0> shSlaE0Page) {
        return shSlaE0Page.getContent().stream().map(shSlaE0 -> of(shSlaE0)).collect(toList());
    }
}
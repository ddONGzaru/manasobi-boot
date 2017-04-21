package io.manasobi.domain.mng.sla.sh_sla_40;

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
public class ShSla40VO extends BaseVO {

	private String seqNo;

	private String corpCode;

	private String gubun;

	private String jisaCode;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String terminalNo;

	private Timestamp calleeReqDatetime;

	private String checkpointScore1;

	private String checkpointScore2;

	private String checkpointScore3;

	private String checkpointScore4;

	private String happycallAgent;

	private Timestamp happycallDatetime;

	private Timestamp errorDatetime;

	private String calleeReqUser;

	private String customer;

	private String telNo;

	private String content;


    public static ShSla40VO of(ShSla40 shSla40) {
        ShSla40VO shSla40VO = ModelMapperUtils.map(shSla40, ShSla40VO.class);
        return shSla40VO;
    }

    public static List<ShSla40VO> of(List<ShSla40> shSla40List) {
        return shSla40List.stream().map(shSla40 -> of(shSla40)).collect(toList());
    }

    public static List<ShSla40VO> of(Page<ShSla40> shSla40Page) {
        return shSla40Page.getContent().stream().map(shSla40 -> of(shSla40)).collect(toList());
    }
}
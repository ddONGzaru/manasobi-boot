package io.manasobi.domain.mng.sla.sh_sla_g1;

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
public class ShSlaG1VO extends BaseVO {

	private Timestamp withdrawDatetime;

	private String realClassify;

	private String realNo;

	private String issueOrg;

	private String withdrawOrg;

	private String txId;

	private String jisaCode;

	private String progressStatus;

	private String withdrawEmpName;

	private String transferEmpName;

	private String takeoverEmpName;

	private String returnEmpName;

	private String receiveEmpName;

	private Timestamp transferDatetime;

	private Timestamp returnDatetime;

	private String storageUnusl;


    public static ShSlaG1VO of(ShSlaG1 shSlaG1) {
        ShSlaG1VO shSlaG1VO = ModelMapperUtils.map(shSlaG1, ShSlaG1VO.class);
        return shSlaG1VO;
    }

    public static List<ShSlaG1VO> of(List<ShSlaG1> shSlaG1List) {
        return shSlaG1List.stream().map(shSlaG1 -> of(shSlaG1)).collect(toList());
    }

    public static List<ShSlaG1VO> of(Page<ShSlaG1> shSlaG1Page) {
        return shSlaG1Page.getContent().stream().map(shSlaG1 -> of(shSlaG1)).collect(toList());
    }
}
package io.manasobi.domain.mng.sla.sh_sla_30;

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
public class ShSla30VO extends BaseVO {

	private String seqNo;

	private Timestamp minwonDatetime;

	private String jisaCode;

	private String branchCode;

	private String branchName;

	private String cornerCode;

	private String cornerName;

	private String corpCode;

	private String regType;

	private String handleType;

	private String minwonType;

	private String content;

	private Timestamp regDatetime;


    public static ShSla30VO of(ShSla30 shSla30) {
        ShSla30VO shSla30VO = ModelMapperUtils.map(shSla30, ShSla30VO.class);
        return shSla30VO;
    }

    public static List<ShSla30VO> of(List<ShSla30> shSla30List) {
        return shSla30List.stream().map(shSla30 -> of(shSla30)).collect(toList());
    }

    public static List<ShSla30VO> of(Page<ShSla30> shSla30Page) {
        return shSla30Page.getContent().stream().map(shSla30 -> of(shSla30)).collect(toList());
    }
}
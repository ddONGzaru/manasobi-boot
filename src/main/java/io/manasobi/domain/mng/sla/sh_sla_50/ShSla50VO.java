package io.manasobi.domain.mng.sla.sh_sla_50;

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
public class ShSla50VO extends BaseVO {

	private String corpCode;

	private Timestamp txDatetime;

	private String ocmAmount;

	private String ocmAmount2;

	private String accountBalance;


    public static ShSla50VO of(ShSla50 shSla50) {
        ShSla50VO shSla50VO = ModelMapperUtils.map(shSla50, ShSla50VO.class);
        return shSla50VO;
    }

    public static List<ShSla50VO> of(List<ShSla50> shSla50List) {
        return shSla50List.stream().map(shSla50 -> of(shSla50)).collect(toList());
    }

    public static List<ShSla50VO> of(Page<ShSla50> shSla50Page) {
        return shSla50Page.getContent().stream().map(shSla50 -> of(shSla50)).collect(toList());
    }
}
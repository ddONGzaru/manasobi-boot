package io.manasobi.domain.mng.sla.sh_sla_60;

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
public class ShSla60VO extends BaseVO {

	private String corpCode;

	private Timestamp regDatetime;

	private String equals;

	private String etc;


    public static ShSla60VO of(ShSla60 shSla60) {
        ShSla60VO shSla60VO = ModelMapperUtils.map(shSla60, ShSla60VO.class);
        return shSla60VO;
    }

    public static List<ShSla60VO> of(List<ShSla60> shSla60List) {
        return shSla60List.stream().map(shSla60 -> of(shSla60)).collect(toList());
    }

    public static List<ShSla60VO> of(Page<ShSla60> shSla60Page) {
        return shSla60Page.getContent().stream().map(shSla60 -> of(shSla60)).collect(toList());
    }
}
package io.manasobi.domain.mng.etc.sh04001120;

import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Page;

import java.sql.Timestamp;
import java.util.List;

import static java.util.stream.Collectors.*;


@Data
@NoArgsConstructor
public class Sh04001120VO extends BaseVO {

	private Timestamp txId;

	private String empName;

	private String empRegno;

	private String empEnable;

	private String reqSeqNo;

	private String coopOrgNo;


    public static Sh04001120VO of(Sh04001120 sh04001120) {
        Sh04001120VO sh04001120VO = ModelMapperUtils.map(sh04001120, Sh04001120VO.class);
        return sh04001120VO;
    }

    public static List<Sh04001120VO> of(List<Sh04001120> sh04001120List) {
        return sh04001120List.stream().map(sh04001120 -> of(sh04001120)).collect(toList());
    }

    public static List<Sh04001120VO> of(Page<Sh04001120> sh04001120Page) {
        return sh04001120Page.getContent().stream().map(sh04001120 -> of(sh04001120)).collect(toList());
    }
}
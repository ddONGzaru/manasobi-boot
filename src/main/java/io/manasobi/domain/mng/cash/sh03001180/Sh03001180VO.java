package io.manasobi.domain.mng.cash.sh03001180;

import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.NoArgsConstructor;
import ma.glasnost.orika.BoundMapperFacade;
import org.springframework.data.domain.Page;

import java.util.List;

import static java.util.stream.Collectors.*;


@Data
@NoArgsConstructor
public class Sh03001180VO extends BaseVO {

	private String txId;

	private String jisaCode;

	private String branchCode;

	private String terminalNo;

	private String cashSendingDate;

	private String cashSendingAmt;

	private String acceptEnable;

	private String cash50kSendingAmt;

    private String monCashSendingEnable;

    private String tueCashSendingEnable;

    private String wedCashSendingEnable;

    private String thuCashSendingEnable;

    private String friCashSendingEnable;

    public static Sh03001180VO of(Sh03001180 sh03001180) {
        BoundMapperFacade<Sh03001180, Sh03001180VO> mapper =
                ModelMapperUtils.getMapper("Sh03001180", Sh03001180VO.class.getPackage().getName());
        return mapper.map(sh03001180);
    }

    public static List<Sh03001180VO> of(List<Sh03001180> sh03001180List) {
        return sh03001180List.stream().map(sh03001180 -> of(sh03001180)).collect(toList());
    }

    public static List<Sh03001180VO> of(Page<Sh03001180> sh03001180Page) {
        return sh03001180Page.getContent().stream().map(sh03001180 -> of(sh03001180)).collect(toList());
    }
}
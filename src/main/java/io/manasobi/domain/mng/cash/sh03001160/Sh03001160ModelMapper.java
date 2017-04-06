package io.manasobi.domain.mng.cash.sh03001160;

import io.manasobi.utils.DateUtils;
import ma.glasnost.orika.CustomMapper;
import ma.glasnost.orika.MappingContext;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Created by jung-young-il on 16/02/2017.
 */
@Component
public class Sh03001160ModelMapper  extends CustomMapper<Sh03001160, Sh03001160VO> {

    @Override
    public void mapAtoB(Sh03001160 src, Sh03001160VO dest, MappingContext context) {

        LocalDateTime billingExpectDate = src.getBillingExpectDate().toLocalDateTime();
        dest.setBillingExpectDate(DateUtils.convertToString(billingExpectDate, "yyyy-MM-dd"));

        LocalDateTime cashSendingDate = src.getCashSendingDate().toLocalDateTime();
        dest.setCashSendingDate(DateUtils.convertToString(cashSendingDate, "yyyy-MM-dd"));

        LocalDateTime cashSendingStndDate = src.getCashSendingStndDate().toLocalDateTime();
        dest.setCashSendingStndDate(DateUtils.convertToString(cashSendingStndDate, "yyyy-MM-dd"));
    }
}
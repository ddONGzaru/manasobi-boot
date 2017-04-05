package io.manasobi.domain.mng.cash.sh03001180;

import io.onsemiro.utils.DateUtils;
import ma.glasnost.orika.CustomMapper;
import ma.glasnost.orika.MappingContext;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Created by jung-young-il on 16/02/2017.
 */
@Component
public class Sh03001180ModelMapper extends CustomMapper<Sh03001180, Sh03001180VO> {

    @Override
    public void mapAtoB(Sh03001180 src, Sh03001180VO dest, MappingContext context) {
        LocalDateTime cashSendingDate = null;
        LocalDateTime txId = null;

        if(src.getTxId()==null) {
            dest.setTxId(null);
        } else {
            txId = src.getTxId().toLocalDateTime();
            dest.setTxId(DateUtils.convertToString(txId, "yyyy-MM-dd HH:mm"));
        }

        if(src.getCashSendingDate()==null) {
            cashSendingDate = cashSendingDate.now();
        } else {
            cashSendingDate = src.getCashSendingDate().toLocalDateTime();
        }

        dest.setCashSendingDate(DateUtils.convertToString(cashSendingDate, "yyyy-MM-dd"));
    }
}
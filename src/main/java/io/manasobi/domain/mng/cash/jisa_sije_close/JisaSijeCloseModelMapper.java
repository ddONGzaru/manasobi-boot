package io.manasobi.domain.mng.cash.jisa_sije_close;

import io.manasobi.utils.DateUtils;
import ma.glasnost.orika.CustomMapper;
import ma.glasnost.orika.MappingContext;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Created by jung-young-il on 16/02/2017.
 */
@Component
public class JisaSijeCloseModelMapper extends CustomMapper<JisaSijeClose, JisaSijeCloseVO> {

    @Override
    public void mapAtoB(JisaSijeClose src, JisaSijeCloseVO dest, MappingContext context) {

        LocalDateTime closeDate = src.getCloseDate().toLocalDateTime();
        dest.setCloseDate(DateUtils.convertToString(closeDate, "yyyy-MM-dd"));

        if(src.getTxId()!=null) {
            LocalDateTime txId = src.getTxId().toLocalDateTime();
            dest.setTxId(DateUtils.convertToString(txId, "yyyy-MM-dd HH:mm"));
        }
    }
}
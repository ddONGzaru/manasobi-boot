package io.manasobi.domain.mng.cash.sh03001130;

import io.manasobi.utils.DateUtils;
import ma.glasnost.orika.CustomMapper;
import ma.glasnost.orika.MappingContext;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Created by jung-young-il on 16/02/2017.
 */
@Component
public class Sh03001130ModelMapper extends CustomMapper<Sh03001130, Sh03001130VO> {

    @Override
    public void mapAtoB(Sh03001130 src, Sh03001130VO dest, MappingContext context) {

        if(src.getReqDate() != null) {
            LocalDateTime reqDate = src.getReqDate().toLocalDateTime();
            dest.setReqDate(DateUtils.convertToString(reqDate, "yyyy-MM-dd"));
        }

        if(src.getCloseDatetime() != null) {
            LocalDateTime closeDate = src.getCloseDatetime().toLocalDateTime();
            dest.setCloseDatetime(DateUtils.convertToString(closeDate, "yyyy-MM-dd HH:mm:ss"));
        }

        if(src.getTxId() != null) {
            LocalDateTime txId = src.getTxId().toLocalDateTime();
            dest.setTxId(DateUtils.convertToString(txId, "yyyy-MM-dd HH:mm"));
        }
    }
}
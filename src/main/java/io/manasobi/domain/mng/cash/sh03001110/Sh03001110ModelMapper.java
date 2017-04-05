package io.manasobi.domain.mng.cash.sh03001110;

import io.manasobi.utils.DateUtils;
import ma.glasnost.orika.CustomMapper;
import ma.glasnost.orika.MappingContext;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Created by jung-young-il on 16/02/2017.
 */
@Component
public class Sh03001110ModelMapper extends CustomMapper<Sh03001110, Sh03001110VO> {

    @Override
    public void mapAtoB(Sh03001110 src, Sh03001110VO dest, MappingContext context) {

        if(src.getTxId()!=null) {
            LocalDateTime txId = src.getTxId().toLocalDateTime();
            dest.setTxId(DateUtils.convertToString(txId, "yyyy-MM-dd HH:mm:ss"));
        }

        if(src.getReferDate()!=null) {
            LocalDateTime referDate = src.getReferDate().toLocalDateTime();
            dest.setReferDate(DateUtils.convertToString(referDate, "yyyy-MM-dd"));
        }

        if(src.getCheckDepositAmt()!=null && src.getCheckWithdrawAmt()!=null) {
            int checkAmt = Integer.parseInt(src.getCheckDepositAmt().trim()) - Integer.parseInt(src.getCheckWithdrawAmt().trim());
            dest.setCheckAmt(String.valueOf(checkAmt));
        }

        if(src.getCashAmt()!=null && src.getCash50kGiveEnableCount()!=null) {
            int cash10kCount = (Integer.parseInt(src.getCashAmt().trim()) - ( Integer.parseInt(src.getCash50kGiveEnableCount().trim()) * 50000)) / 10000;
            dest.setCash10kGiveEnableCount(String.valueOf(cash10kCount));
        }
    }
}

package io.manasobi.domain.mng.equip.sh02001290;

import io.manasobi.utils.CommonCodeUtils;
import io.manasobi.utils.DateUtils;
import ma.glasnost.orika.CustomMapper;
import ma.glasnost.orika.MappingContext;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Created by jung-young-il on 16/02/2017.
 */
@Component
public class Sh02001290ModelMapper extends CustomMapper<Sh02001290, Sh02001290VO> {

    @Override
    public void mapAtoB(Sh02001290 src, Sh02001290VO dest, MappingContext context) {

        LocalDateTime txId = src.getTxId().toLocalDateTime();
        dest.setTxId(DateUtils.convertToString(txId, "yyyy-MM-dd HH:mm:ss"));

        LocalDateTime workDate = src.getWorkDate().toLocalDateTime();
        dest.setWorkDate(DateUtils.convertToString(workDate, "yyyy-MM-dd HH:mm:ss"));

        LocalDateTime billingMonth = src.getBillingMonth().toLocalDateTime();
        dest.setBillingMonth(DateUtils.convertToString(billingMonth, "yyyy-MM-dd"));

        LocalDateTime inspectionMonth = src.getInspectionMonth().toLocalDateTime();
        dest.setInspectionMonth(DateUtils.convertToString(inspectionMonth, "yyyy-MM-dd"));

        dest.setCostGubun(CommonCodeUtils.getName("COST_GUBUN", src.getCostGubun()));
        dest.setDetailItemGubunName(CommonCodeUtils.getName("DETAIL_ITEM_GUBUN", src.getDetailItemGubun()));

        dest.setJisaCodeName(CommonCodeUtils.getName("JISA_CODE", src.getJisaCode()));
        dest.setBranchCodeName(CommonCodeUtils.getName("BRANCH_CODE", src.getBranchCode()));
    }
}

package io.manasobi.domain.mng.cash.sh03001220;

import io.manasobi.core.domain.file.AX5File;
import io.manasobi.utils.DateUtils;
import ma.glasnost.orika.CustomMapper;
import ma.glasnost.orika.MappingContext;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Created by jung-young-il on 16/02/2017.
 */
@Component
public class Sh03001220ModelMapper extends CustomMapper<Sh03001220, Sh03001220VO> {

    @Value("${onsemiro.upload.repository}")
    private String filePath;

    @Override
    public void mapAtoB(Sh03001220 src, Sh03001220VO dest, MappingContext context) {

        LocalDateTime txId = src.getTxId().toLocalDateTime();
        dest.setTxId(DateUtils.convertToString(txId, "yyyy-MM-dd HH:mm:ss"));

        LocalDateTime reqDate = src.getReqDate().toLocalDateTime();
        dest.setReqDate(DateUtils.convertToString(reqDate, "yyyy-MM-dd"));

        if (src.getDigitalSignUrl() != null) {
            dest.setDigitalSignUrlFile(AX5File.of(filePath, src.getDigitalSignUrl()));
        }

        if (src.getChargeEmpPhotoUrl() != null) {
            dest.setChargeEmpPhotoUrlFile(AX5File.of(filePath, src.getChargeEmpPhotoUrl()));
        }
    }
}
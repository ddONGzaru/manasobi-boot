package io.manasobi.domain.mng.error.sh01001110;

import io.manasobi.utils.DateUtils;
import ma.glasnost.orika.CustomMapper;
import ma.glasnost.orika.MappingContext;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * Created by tw.jang on 2017-02-09.
 */
@Component
public class Sh01001110ModelMapper extends CustomMapper<Sh01001110, Sh01001110VO> {

    @Override
    public void mapAtoB(Sh01001110 src, Sh01001110VO dest, MappingContext context) {

        //LocalDateTime errorDatetime = src.getErrorDatetime().toLocalDateTime();
        LocalDateTime errorDatetime = src.getErrorDatetime();

        dest.setErrorDatetime(DateUtils.convertToString(errorDatetime, "yyyy-MM-dd HH:mm:ss"));
        dest.setErrorDate(DateUtils.convertToString(errorDatetime, "yyyy-MM-dd"));
        dest.setErrorTime(DateUtils.convertToString(errorDatetime, "HH:mm:ss"));

        // 개국일 정보는 null 값이 있을수 있음
        if(src.getErrorDatetime1() != null) {
            LocalDateTime errorDatetime1 = src.getErrorDatetime1().toLocalDateTime();
            dest.setErrorDatetime1(DateUtils.convertToString(errorDatetime1, "yyyy-MM-dd HH:mm:ss"));
            dest.setErrorDate1(DateUtils.convertToString(errorDatetime1, "yyyy-MM-dd"));
            dest.setErrorTime1(DateUtils.convertToString(errorDatetime1, "HH:mm:ss"));
        }

        dest.setSecurityCorp(StringUtils.trim(src.getSecurityCorp()));
        dest.setBoothType(StringUtils.trim(src.getBoothType()));
    }
}


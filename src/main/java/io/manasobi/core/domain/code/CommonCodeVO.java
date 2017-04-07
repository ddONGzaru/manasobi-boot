package io.manasobi.core.domain.code;

import io.manasobi.core.code.Types;
import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class CommonCodeVO extends BaseVO {

    private String groupCd;

    private String groupNm;

    private String code;

    private String name;

    private Integer sort;

    private String data1;

    private String data2;

    private String data3;

    private Integer data4;

    private Integer data5;

    private String remark;

    private Types.Used useYn = Types.Used.YES;

    public static CommonCodeVO of(CommonCode commonCode) {
        CommonCodeVO commonCodeVO = ModelMapperUtils.map(commonCode, CommonCodeVO.class);
        return commonCodeVO;
    }

    public static List<CommonCodeVO> of(List<CommonCode> commonCodeList) {
        List<CommonCodeVO> vtoList = new ArrayList<>();

        for (CommonCode object : commonCodeList) {
            vtoList.add(of(object));
        }

        return vtoList;
    }
}

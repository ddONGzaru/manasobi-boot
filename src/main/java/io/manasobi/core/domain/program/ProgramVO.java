package io.manasobi.core.domain.program;

import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class ProgramVO extends BaseVO {

    private String progCd;

    private String progNm;

    private String progPh;

    private String target = "_self";

    private String authCheck = "Y";

    private String schAh = "N";

    private String savAh = "N";

    private String exlAh = "N";

    private String delAh = "N";

    private String fn1Ah = "N";

    private String fn2Ah = "N";

    private String fn3Ah = "N";

    private String fn4Ah = "N";

    private String fn5Ah = "N";

    private String remark;

    public static ProgramVO of(Program program) {
        ProgramVO progoramVO = ModelMapperUtils.map(program, ProgramVO.class);
        return progoramVO;
    }

    public static List<ProgramVO> of(List<Program> programList) {
        List<ProgramVO> vtoList = new ArrayList<>();

        for (Program object : programList) {
            vtoList.add(of(object));
        }

        return vtoList;
    }
}

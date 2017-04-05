package io.manasobi.core.domain.user;

import io.manasobi.core.code.Types;
import io.manasobi.core.domain.user.auth.UserAuth;
import io.manasobi.core.domain.user.role.UserRole;
import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.CommonCodeUtils;
import io.manasobi.utils.DateUtils;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Transient;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class UserVO extends BaseVO {

    @NotEmpty(message = "\n아이디는 필수항목입니다.\n아이디를 입력하세요.")
    private String userCd;

    @NotEmpty(message = "\n이름은 필수항목입니다.\n이름을 입력하세요.")
    private String userNm;

    private String userPs;

    @NotEmpty(message = "\n부서는 필수항목입니다.\n부서를 선택하세요.")
    private String jisaCode;

    @NotEmpty(message = "\n지사는 필수항목입니다.\n지사를 입력하세요.")
    private String deptNo;

    private String jisaName;

    private String deptName;

    private String regDate;

    private String email;

    private String hpNo;

    private String remark;

    private Instant lastLoginDate;

    private Instant passwordUpdateDate;

    private Types.UserStatus userStatus = Types.UserStatus.NORMAL;

    private String ip;

    private String locale = "ko_KR";

    private String menuGrpCd;

    private Types.Used useYn = Types.Used.YES;

    private Types.Deleted delYn = Types.Deleted.NO;

    @Transient
    private List<UserRole> roleList;

    @Transient
    private List<UserAuth> authList;

    public static UserVO of(User user) {
        UserVO userVO = ModelMapperUtils.map(user, UserVO.class);

        LocalDateTime regDate = LocalDateTime.ofInstant(userVO.getCreatedAt(), ZoneId.systemDefault());
        userVO.setRegDate(DateUtils.convertToString(regDate, "yyyy-MM-dd"));
        userVO.setJisaName(CommonCodeUtils.getName("JISA_CODE", user.getJisaCode()));
        userVO.setDeptName(CommonCodeUtils.getName("DEPT_CODE", user.getDeptNo()));

        return userVO;
    }

    public static List<UserVO> of(List<User> userList) {
        List<UserVO> vtoList = new ArrayList<>();

        for (User object : userList) {
            vtoList.add(of(object));
        }

        return vtoList;
    }
}

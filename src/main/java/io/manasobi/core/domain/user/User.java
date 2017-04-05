package io.manasobi.core.domain.user;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import io.manasobi.core.annotations.ColumnPosition;
import io.manasobi.core.annotations.Comment;
import io.manasobi.core.code.Types;
import io.manasobi.core.base.model.BaseJpaModel;
import io.manasobi.core.domain.user.auth.UserAuth;
import io.manasobi.core.domain.user.role.UserRole;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.time.Instant;
import java.util.List;

@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@Table(name = "ATMS_USER")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "userCd")
public class User extends BaseJpaModel<String> {

    @Id
    @Column(name = "USER_CD", length = 100, nullable = false)
    @Comment(value = "사용자코드")
    @ColumnPosition(1)
    private String userCd;

    @Column(name = "USER_NM", length = 30, nullable = false)
    @Comment(value = "사용자명")
    @ColumnPosition(2)
    private String userNm;

    @Column(name = "USER_PS", length = 128, nullable = false)
    @Comment(value = "비밀번호")
    @ColumnPosition(3)
    private String userPs;

    @Column(name = "EMAIL", length = 50)
    @Comment(value = "이메일")
    @ColumnPosition(4)
    private String email;

    @Column(name = "HP_NO", length = 15)
    @Comment(value = "휴대폰")
    @ColumnPosition(5)
    private String hpNo;

    @Column(name = "REMARK", length = 200)
    @Comment(value = "비고")
    @ColumnPosition(6)
    private String remark;

    @Column(name = "LAST_LOGIN_DATE")
    @Comment(value = "마지막로그인일시")
    @ColumnPosition(7)
    private Instant lastLoginDate;

    @Column(name = "PASSWORD_UPDATE_DATE")
    @Comment(value = "비밀번호변경일시")
    @ColumnPosition(8)
    private Instant passwordUpdateDate;

    @Column(name = "USER_STATUS", length = 10)
    @Comment(value = "사용자 상태")
    @Type(type = "labelEnum")
    @ColumnPosition(9)
    private Types.UserStatus userStatus = Types.UserStatus.NORMAL;

    @Column(name = "IP", length = 100)
    @Comment(value = "IP")
    @ColumnPosition(10)
    private String ip;

    @Column(name = "LOCALE", length = 10)
    @Comment(value = "Locale")
    @ColumnPosition(11)
    private String locale = "ko_KR";

    @Column(name = "MENU_GRP_CD", length = 100)
    @Comment(value = "메뉴그룹코드")
    @ColumnPosition(12)
    private String menuGrpCd;

    @Column(name = "USE_YN", length = 1, nullable = false)
    @Comment(value = "사용여부")
    @Type(type = "labelEnum")
    @ColumnPosition(13)
    private Types.Used useYn = Types.Used.YES;

    @Column(name = "DEL_YN", length = 1)
    @Comment(value = "삭제여부")
    @Type(type = "labelEnum")
    @ColumnPosition(14)
    private Types.Deleted delYn = Types.Deleted.NO;

    @Column(name = "JISA_CODE")
    @Comment(value = "지사코드")
    @ColumnPosition(15)
    private String jisaCode;

    @Column(name = "DEPT_NO")
    @Comment(value = "부서코드")
    @ColumnPosition(16)
    private String deptNo;

    @Transient
    private List<UserRole> roleList;

    @Transient
    private List<UserAuth> authList;

    @Override
    public String getId() {
        return userCd;
    }
}

package io.manasobi.core.domain.user.role;

import io.manasobi.core.annotations.ColumnPosition;
import io.manasobi.core.annotations.Comment;
import io.manasobi.core.base.model.BaseJpaModel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;


@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@EqualsAndHashCode(callSuper = true)
@Table(name = "ATMS_USER_ROLE")
@Comment(value = "사용자 롤")
@Alias("userRole")
public class UserRole extends BaseJpaModel<Long> {

    @Id
    @Column(name = "ID", precision = 19, nullable = false)
    @Comment(value = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @ColumnPosition(1)
    private Long id;

    @Column(name = "USER_CD", length = 100, nullable = false)
    @Comment(value = "사용자 코드")
    @ColumnPosition(2)
    private String userCd;

    @Column(name = "ROLE_CD", length = 100, nullable = false)
    @Comment(value = "롤 코드")
    @ColumnPosition(3)
    private String roleCd;

    @Override
    public Long getId() {
        return id;
    }
}

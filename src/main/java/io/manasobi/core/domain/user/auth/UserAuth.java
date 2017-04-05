package io.manasobi.core.domain.user.auth;

import io.manasobi.core.annotations.Comment;
import io.manasobi.core.base.model.BaseJpaModel;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@Table(name = "ATMS_USER_AUTH")
@SequenceGenerator(name = "USER_AUTH_SEQ_GENERATOR", sequenceName = "SEQ_USER_AUTH", allocationSize = 1)
public class UserAuth extends BaseJpaModel<Long> {

    @Id
    @Column(name = "ID", precision = 19, nullable = false)
    @Comment("ID")
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "USER_AUTH_SEQ_GENERATOR")
    private Long id;

    @Column(name = "USER_CD")
    private String userCd;

    @Column(name = "GRP_AUTH_CD")
    private String grpAuthCd;

    @Override
    public Long getId() {
        return id;
    }

    @Embeddable
    @Data
    @NoArgsConstructor
    @RequiredArgsConstructor(staticName = "of")
    public static class UserAuthId implements Serializable {

        @NonNull
        private String userCd;

        @NonNull
        private String grpAuthCd;
    }
}

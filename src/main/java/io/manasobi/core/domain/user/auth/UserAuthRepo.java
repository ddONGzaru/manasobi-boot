package io.manasobi.core.domain.user.auth;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserAuthRepo extends BaseJPAQueryDSLRepo<UserAuth, UserAuth.UserAuthId> {

    List<UserAuth> findByUserCd(String userCd);
}

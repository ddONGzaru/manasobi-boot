package io.manasobi.core.domain.user.role;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRoleRepo extends BaseJPAQueryDSLRepo<UserRole, Long> {
    List<UserRole> findByUserCd(String userCd);
}

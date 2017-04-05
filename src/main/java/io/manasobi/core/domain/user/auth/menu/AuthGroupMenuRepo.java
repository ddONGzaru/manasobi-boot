package io.manasobi.core.domain.user.auth.menu;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthGroupMenuRepo extends BaseJPAQueryDSLRepo<AuthGroupMenu, AuthGroupMenu.AuthGroupMenuId> {
}

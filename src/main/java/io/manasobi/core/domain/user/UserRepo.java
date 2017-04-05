package io.manasobi.core.domain.user;


import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepo extends BaseJPAQueryDSLRepo<User, String> {
}

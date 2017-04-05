package io.manasobi.core.domain.user.role;

import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class UserRoleService extends BaseService<UserRole, Long> {
    private UserRoleRepo userRoleRepo;

    @Inject
    public UserRoleService(UserRoleRepo userRoleRepo) {
        super(userRoleRepo);
        this.userRoleRepo = userRoleRepo;
    }

    public List<UserRole> findByUserCd(String userCd) {
        return userRoleRepo.findByUserCd(userCd);
    }

    public List<UserRole> get(RequestParams requestParams) {
        String userCd = requestParams.getString("userCd", "");
        String filter = requestParams.getString("filter", "");

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(userCd)) {
            builder.and(qUserRole.userCd.eq(userCd));
        }

        List<UserRole> list = select().from(qUserRole).where(builder).orderBy(qUserRole.id.asc()).fetch();

        if (isNotEmpty(filter)) {
            list = filter(list, filter);
        }

        return list;
    }
}

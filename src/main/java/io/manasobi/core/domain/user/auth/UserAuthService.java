package io.manasobi.core.domain.user.auth;

import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class UserAuthService extends BaseService<UserAuth, UserAuth.UserAuthId> {

    private UserAuthRepo userAuthRepo;

    @Inject
    public UserAuthService(UserAuthRepo userAuthRepo) {
        super(userAuthRepo);
        this.userAuthRepo = userAuthRepo;
    }

    public List<UserAuth> get(RequestParams requestParams) {
        String userCd = requestParams.getString("userCd", "");
        String filter = requestParams.getString("filter", "");

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(userCd)) {
            builder.and(qUserAuth.userCd.eq(userCd));
        }

        List<UserAuth> list = select().from(qUserAuth).where(builder).orderBy(qUserAuth.id.asc()).fetch();

        if (isNotEmpty(filter)) {
            list = filter(list, filter);
        }

        return list;
    }

    public List<UserAuth> findByUserCd(String userCd) {
        return userAuthRepo.findByUserCd(userCd);
    }
}
package io.manasobi.core.domain.user.auth.menu;

import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.Types;
import io.manasobi.core.domain.program.ProgramService;
import io.manasobi.core.domain.program.menu.Menu;
import io.manasobi.core.domain.program.menu.MenuService;
import io.manasobi.core.domain.user.SessionUser;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

@Service
public class AuthGroupMenuService extends BaseService<AuthGroupMenu, AuthGroupMenu.AuthGroupMenuId> {

    private AuthGroupMenuRepo authGroupMenuRepo;

    @Inject
    private ProgramService programService;

    @Inject
    private MenuService menuService;

    @Inject
    public AuthGroupMenuService(AuthGroupMenuRepo authGroupMenuRepo) {
        super(authGroupMenuRepo);
        this.authGroupMenuRepo = authGroupMenuRepo;
    }

    public AuthGroupMenuVO get(RequestParams requestParams) {
        Long menuId = requestParams.getLong("menuId");

        Menu menu = menuService.findOne(menuId);
        AuthGroupMenuVO authGroupMenuV2VO = new AuthGroupMenuVO();

        List<AuthGroupMenu> list = select().from(qAuthGroupMenu).where(qAuthGroupMenu.menuId.eq(menuId)).orderBy(qAuthGroupMenu.createdAt.asc()).fetch();
        authGroupMenuV2VO.setList(list);
        authGroupMenuV2VO.setProgram(menu.getProgram());

        return authGroupMenuV2VO;
    }

    public AuthGroupMenu getCurrentAuthGroupMenu(Long menuId, SessionUser sessionUser) {
        BooleanBuilder builder = new BooleanBuilder();
        builder.and(qAuthGroupMenu.grpAuthCd.in(sessionUser.getAuthGroupList()));
        builder.and(qAuthGroupMenu.menuId.eq(menuId));

        List<AuthGroupMenu> authorizationList = select().from(qAuthGroupMenu).where(builder).fetch();

        AuthGroupMenu authorization = null;

        for (AuthGroupMenu authGroupMenu : authorizationList) {
            if (authorization == null) {
                authorization = authGroupMenu;
            } else {
                authorization.updateAuthorization(authGroupMenu);
            }
        }

        return authorization;
    }

    @Transactional
    public void saveAuth(List<AuthGroupMenu> authGroupMenuList) {
        for (AuthGroupMenu authGroupMenu : authGroupMenuList) {
            if (authGroupMenu.getUseYn() == Types.Used.NO) {
                delete(authGroupMenu);
            } else {
                save(authGroupMenu);
            }
        }
    }
}

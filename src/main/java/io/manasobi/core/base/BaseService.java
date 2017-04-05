package io.manasobi.core.base;

import io.manasobi.core.domain.code.QCommonCode;
import io.manasobi.core.domain.file.QCommonFile;
import io.manasobi.core.domain.program.QProgram;
import io.manasobi.core.domain.program.menu.QMenu;
import io.manasobi.core.domain.user.QUser;
import io.manasobi.core.domain.user.auth.QUserAuth;
import io.manasobi.core.domain.user.auth.menu.QAuthGroupMenu;
import io.manasobi.core.domain.user.role.QUserRole;

import java.io.Serializable;


public class BaseService<T, ID extends Serializable> extends AbstractBaseService<T, ID> {

    protected QUserRole qUserRole = QUserRole.userRole;
    protected QAuthGroupMenu qAuthGroupMenu = QAuthGroupMenu.authGroupMenu;
    protected QCommonCode qCommonCode = QCommonCode.commonCode;
    protected QUser qUser = QUser.user;
    protected QProgram qProgram = QProgram.program;
    protected QUserAuth qUserAuth = QUserAuth.userAuth;
    protected QMenu qMenu = QMenu.menu;
    protected QCommonFile qCommonFile = QCommonFile.commonFile;

    protected BaseJPAQueryDSLRepo<T, ID> repo;

    public BaseService() {
        super();
    }

    public BaseService(BaseJPAQueryDSLRepo<T, ID> repo) {
        super(repo);
        this.repo = repo;
    }
}

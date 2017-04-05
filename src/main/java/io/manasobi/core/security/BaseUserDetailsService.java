package io.manasobi.core.security;

import io.manasobi.core.code.Types;
import io.manasobi.core.domain.user.SessionUser;
import io.manasobi.core.domain.user.User;
import io.manasobi.core.domain.user.UserService;
import io.manasobi.core.domain.user.auth.UserAuth;
import io.manasobi.core.domain.user.auth.UserAuthService;
import io.manasobi.core.domain.user.role.UserRole;
import io.manasobi.core.domain.user.role.UserRoleService;
import io.manasobi.utils.DateUtils;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

@Service
public class BaseUserDetailsService implements UserDetailsService {

    @Inject
    private UserService userService;

    @Inject
    private UserRoleService userRoleService;

    @Inject
    private UserAuthService userAuthService;

    @Override
    public final SessionUser loadUserByUsername(String userCd) throws UsernameNotFoundException {

        User user = userService.findOne(userCd);

        if (user == null) {
            throw new UsernameNotFoundException("사용자 정보를 확인하세요.");
        }

        if (user.getUseYn() == Types.Used.NO) {
            throw new UsernameNotFoundException("존재하지 않는 사용자 입니다.");
        }

        if (user.getDelYn() == Types.Deleted.YES) {
            throw new UsernameNotFoundException("존재하지 않는 사용자 입니다.");
        }

        List<UserRole> userRoleList = userRoleService.findByUserCd(userCd);

        List<UserAuth> userAuthList = userAuthService.findByUserCd(userCd);

        SessionUser sessionUser = new SessionUser();
        sessionUser.setUserCd(user.getUserCd());
        sessionUser.setUserNm(user.getUserNm());
        sessionUser.setUserPs(user.getUserPs());
        sessionUser.setUserStatus(user.getUserStatus());
        sessionUser.setMenuGrpCd(user.getMenuGrpCd());

        userRoleList.forEach(r -> sessionUser.addAuthority(r.getRoleCd()));
        userAuthList.forEach(a -> sessionUser.addAuthGroup(a.getGrpAuthCd()));

        String[] localeString = user.getLocale().split("_");

        Locale locale = new Locale(localeString[0], localeString[1]);

        final Calendar cal = Calendar.getInstance();
        final TimeZone timeZone = cal.getTimeZone();

        sessionUser.setTimeZone(timeZone.getID());
        sessionUser.setDateFormat(DateUtils.dateFormatFromLocale(locale));
        sessionUser.setTimeFormat(DateUtils.timeFormatFromLocale(locale));
        sessionUser.setLocale(locale);

        return sessionUser;
    }
}

package io.manasobi.core.code;

public interface Constants {

    String LAST_NAVIGATED_PAGE = "onsemiro_l_n_p";

    String ADMIN_AUTH_TOKEN_KEY = "2622fe3c-d7df-48e7-8784-15afc2b0d169";

    String LANGUAGE_COOKIE_KEY = "onsemiro_lang";

    String LANGUAGE_PARAMETER_KEY = "language";

    interface Security {

        String LOGIN_PAGE = "/login";

        String ACCESS_DENIED_PAGE = "/jsp/common/not-authorized.jsp?errorCode=401";
    }

}


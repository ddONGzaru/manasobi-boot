package io.manasobi.core.security;

import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.code.Constants;
import io.manasobi.utils.ContextUtils;
import io.manasobi.utils.HttpUtils;
import io.manasobi.utils.JsonUtils;
import io.manasobi.utils.RequestUtils;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthenticationFilter extends GenericFilterBean {

    private final TokenAuthenticationService tokenAuthenticationService;

    public AuthenticationFilter(TokenAuthenticationService adminTokenAuthenticationService) {
        this.tokenAuthenticationService = adminTokenAuthenticationService;
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        try {
            SecurityContextHolder.getContext().setAuthentication(tokenAuthenticationService.getAuthentication((HttpServletRequest) req, (HttpServletResponse) res));
            chain.doFilter(req, res);
        } catch (AccessDeniedException e) {
            HttpServletRequest request = (HttpServletRequest) req;
            HttpServletResponse response = (HttpServletResponse) res;

            RequestUtils requestUtils = RequestUtils.of(request);

            if (requestUtils.isAjax()) {
                ApiResponse apiResponse = new ApiResponse();
                apiResponse.setMessage("접근권한이 없습니다");

                response.setContentType(HttpUtils.getJsonContentType(request));
                response.getWriter().write(JsonUtils.toJson(apiResponse));
                response.getWriter().flush();
            } else {
                response.sendRedirect(ContextUtils.getPagePath(Constants.Security.ACCESS_DENIED_PAGE));
            }
        }
    }
}

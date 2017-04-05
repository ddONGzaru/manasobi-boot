package io.manasobi.core.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.domain.user.SessionUser;
import io.manasobi.core.domain.user.UserService;
import io.manasobi.utils.HttpUtils;
import io.manasobi.utils.JsonUtils;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter extends AbstractAuthenticationProcessingFilter {

    private final TokenAuthenticationService adminTokenAuthenticationService;
    private final AuthenticationEntryPoint adminAuthenticationEntryPoint;
    private final UserService userService;

    public LoginFilter(String urlMapping,
                       TokenAuthenticationService adminTokenAuthenticationService,
                       UserService userService,
                       AuthenticationManager authenticationManager,
                       AuthenticationEntryPoint adminAuthenticationEntryPoint) {

        super(new AntPathRequestMatcher(urlMapping));

        this.adminTokenAuthenticationService = adminTokenAuthenticationService;
        this.userService = userService;
        this.adminAuthenticationEntryPoint = adminAuthenticationEntryPoint;
        this.setAuthenticationFailureHandler(new LoginFailureHandler());

        setAuthenticationManager(authenticationManager);
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException, IOException, ServletException {
        final SessionUser user = new ObjectMapper().readValue(request.getInputStream(), SessionUser.class);
        final UsernamePasswordAuthenticationToken loginToken = new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword());
        return getAuthenticationManager().authenticate(loginToken);
    }

    @Override
    @Transactional
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain, Authentication authentication) throws IOException, ServletException {

        final UserAuthentication userAuthentication = new UserAuthentication((SessionUser) authentication.getPrincipal());

        adminTokenAuthenticationService.addAuthentication(response, userAuthentication);

        response.setContentType(HttpUtils.getJsonContentType(request));
        response.getWriter().write(JsonUtils.toJson(ApiResponse.of(ApiStatus.SUCCESS, "Login Success")));
        response.getWriter().flush();
    }

    private class LoginFailureHandler implements AuthenticationFailureHandler {
        @Override
        public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
            adminAuthenticationEntryPoint.commence(request, response, exception);
        }
    }
}

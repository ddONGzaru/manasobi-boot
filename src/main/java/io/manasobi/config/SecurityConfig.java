package io.manasobi.config;

import io.manasobi.core.code.Constants;
import io.manasobi.core.domain.user.UserService;
import io.manasobi.core.filters.LogbackMdcFilter;
import io.manasobi.core.security.*;
import io.manasobi.utils.CookieUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by manasobi on 16. 10. 31.
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true, proxyTargetClass = true)
//@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    public static final String[] ignorePages = new String[]{
            //"/resources/**",
            "/axboot.config.js",
            "/assets/**",
            //"/jsp/common/**",
            //"/jsp/setup/**",
            "/swagger/**",
            //"/api-docs/**",
            //"/setup/**",
            //"/h2-console/**",
            "/health"
    };

    @Autowired
    private BaseUserDetailsService userDetailsService;

    @Autowired
    private UserService userService;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    private TokenAuthenticationService tokenAuthenticationService;


    public SecurityConfig() {
        super(true);
    }

    @Override
    public void configure(WebSecurity webSecurity) throws Exception {
        webSecurity.ignoring().antMatchers(ignorePages);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .anonymous()
                .and()
            .authorizeRequests()
                .anyRequest().hasRole(Constants.Security.ROLE)
                .antMatchers(HttpMethod.POST, Constants.Security.LOGIN_API).permitAll()
                .antMatchers(Constants.Security.LOGIN_PAGE).permitAll()
                .and()
            .formLogin()
                .loginPage(Constants.Security.LOGIN_PAGE)
                .permitAll()
                .and()
            .logout()
                .logoutUrl(Constants.Security.LOGOUT_API)
                .deleteCookies(Constants.ADMIN_AUTH_TOKEN_KEY, Constants.LAST_NAVIGATED_PAGE)
                .logoutSuccessHandler(new LogoutSuccessHandler(Constants.Security.LOGIN_PAGE))
                .and()
            .exceptionHandling()
                .authenticationEntryPoint(new AuthenticationEntryPoint())
                .and()
            .addFilterBefore(new LoginFilter(Constants.Security.LOGIN_API, tokenAuthenticationService, userService, authenticationManager(), new AuthenticationEntryPoint()), UsernamePasswordAuthenticationFilter.class)
            .addFilterBefore(new AuthenticationFilter(tokenAuthenticationService), UsernamePasswordAuthenticationFilter.class)
            .addFilterAfter(new LogbackMdcFilter(), UsernamePasswordAuthenticationFilter.class);
    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean
    public DaoAuthenticationProvider daoAuthenticationProvider() {
        DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
        daoAuthenticationProvider.setUserDetailsService(userDetailsService);
        daoAuthenticationProvider.setPasswordEncoder(bCryptPasswordEncoder);
        daoAuthenticationProvider.setHideUserNotFoundExceptions(false);
        return daoAuthenticationProvider;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(daoAuthenticationProvider());
    }

    @Override
    protected BaseUserDetailsService userDetailsService() {
        return userDetailsService;
    }

    class LogoutSuccessHandler extends SimpleUrlLogoutSuccessHandler {

        public LogoutSuccessHandler(String defaultTargetURL) {
            this.setDefaultTargetUrl(defaultTargetURL);
        }

        @Override
        public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {

            CookieUtils.deleteCookie(Constants.ADMIN_AUTH_TOKEN_KEY);
            CookieUtils.deleteCookie(Constants.LAST_NAVIGATED_PAGE);

            request.getSession().invalidate();

            super.onLogoutSuccess(request, response, authentication);
        }
    }
}

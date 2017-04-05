package io.manasobi.core.filters;


import io.manasobi.utils.HttpUtils;
import io.manasobi.utils.MDCUtils;
import io.manasobi.utils.RequestUtils;
import io.manasobi.utils.SessionUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class LogbackMdcFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if (!HttpUtils.isMultipartFormData((HttpServletRequest) request)) {
            RequestUtils requestWrapper = RequestUtils.of(request);

            MDCUtils.setJsonValue(MDCUtils.HEADER_MAP_MDC, requestWrapper.getRequestHeaderMap());
            MDCUtils.setJsonValue(MDCUtils.PARAMETER_BODY_MDC, requestWrapper.getRequestBodyJson());
            MDCUtils.setJsonValue(MDCUtils.USER_INFO_MDC, SessionUtils.getCurrentMdcLoginUser((HttpServletRequest) request));
            MDCUtils.set(MDCUtils.REQUEST_URI_MDC, requestWrapper.getRequestUri());
        }

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}

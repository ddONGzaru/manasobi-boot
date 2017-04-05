package io.manasobi.core.filters;

import io.manasobi.core.servlet.MultiReadableHttpServletRequest;
import io.manasobi.utils.HttpUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class MultiReadableHttpServletRequestFilter implements Filter {

    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {

        if (!HttpUtils.isMultipartFormData((HttpServletRequest) req)) {
            MultiReadableHttpServletRequest multiReadRequest = new MultiReadableHttpServletRequest((HttpServletRequest) req);
            chain.doFilter(multiReadRequest, res);
        } else {
            chain.doFilter(req, res);
        }
    }

    public void init(FilterConfig filterConfig) {
    }

    public void destroy() {
    }
}

package io.manasobi.utils;

import io.manasobi.core.context.AppContextManager;
import org.apache.commons.lang3.StringUtils;
import org.springframework.core.env.Environment;

import javax.servlet.ServletContext;
import java.io.File;

public class ContextUtils {

    private static ServletContext _servletContext;

    private static String CURRENT_DIR;

    public static String getCurrentDir() {

        if (StringUtils.isEmpty(CURRENT_DIR)) {

            Environment env = AppContextManager.getBean(Environment.class);

            String projectBasePath = env.getProperty("onsemiro.project-base-path");

            String currentDir = System.getProperty("user.dir") + File.separator;

            CURRENT_DIR = (StringUtils.isNotEmpty(currentDir)) ? currentDir + projectBasePath + File.separator : currentDir;
        }

        return CURRENT_DIR;
    }

    public static String getBaseApiPath() {
        return getContext() + "/api";
    }

    public static String getContext() {
        try {
            if (_servletContext == null) {
                _servletContext = AppContextManager.getBean(ServletContext.class);
            }
            return _servletContext.getContextPath().equals("/") ? "" : _servletContext.getContextPath();
        } catch (Exception e) {
            // ignore;
        }
        return "/";
    }

    public static String getPagePath(String path) {
        return getContext() + path;
    }

    public static String getCookieContextPath() {
        return getContext().equals("") ? "/" : getContext();
    }
}

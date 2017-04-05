package io.manasobi.utils;

import com.google.common.base.CaseFormat;
import io.manasobi.core.code.PackageManager;
import io.manasobi.core.model.extract.template.TemplateParser;
import io.manasobi.core.model.extract.template.file.TemplateCode;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.io.IOException;

public class TemplateUtils {

    public static final String DEFAULT_JS_PATH = "/assets/js/view";
    public static final String AXBOOT_JS_PATH = "/assets/js/axboot";
    public static final String WEBAPP_PATH = "/src/main/webapp";
    public static final String JAVA_SRC_PATH = "/src/main/java";
    public static final String RESOURCE_PATH = "/src/main/resources";
    public static final String HTML_PATH = "/src/main/resources/templates";
    public static final String JAVASCRIPT_PATH = "/src/main/resources/static/assets/js";

    public static ClassLoader getClassLoader(ClassLoader loader) {
        if (loader == null) {
            loader = TemplateUtils.class.getClassLoader();
        }
        return loader;
    }

    public static String getServletBasePath() {
        String servletBasePath = HttpUtils.getCurrentRequest().getServletContext().getRealPath("/");

        if (servletBasePath.contains("/target")) {
            servletBasePath = servletBasePath.substring(0, servletBasePath.indexOf("/target"));
        }

        if (servletBasePath.contains("/src")) {
            servletBasePath = servletBasePath.substring(0, servletBasePath.indexOf("/src"));
        }

        return servletBasePath;
    }

    public static String getWebAppPath() {
        String servletBasePath = getServletBasePath();
        return servletBasePath + WEBAPP_PATH;
    }

    public static String getJavaSourcePath() {
        //return getServletBasePath() + JAVA_SRC_PATH;
        return ContextUtils.getCurrentDir() + JAVA_SRC_PATH;
    }

    public static String getResourcePath() {
        //return getServletBasePath() + RESOURCE_PATH;
        return ContextUtils.getCurrentDir() + RESOURCE_PATH;
    }

    public static String getPackagePath(String qualifedName) {
        return File.separator + StringUtils.replace(qualifedName, ".", File.separator);
    }

    public static String getAbsoluteControllerPath(String packageName, String classFileName) {
        return getJavaSourcePath() + getPackagePath(packageName) + "/" + classFileName;
    }

    public static String getAbsoluteDomainPath(String packageName, String classFileName) {
        return getJavaSourcePath() + getPackagePath(packageName) + "/" + classFileName;
    }

    public static String getAbsoluteResourcePath(String packageName, String classFileName) {
        return getResourcePath() + getPackagePath(packageName) + "/" + classFileName;
    }

    public static String getAbsoluteMyBatisXMLPath(String packageName, String classFileName) {

        if (StringUtils.isNotEmpty(packageName)) {
            packageName = packageName.replace(PackageManager.DOMAIN + ".", "");
        }

        return getResourcePath() + File.separator + "mybatis" + getPackagePath(packageName) + File.separator + classFileName;
    }

    public static String getAbsoluteJsPath(String programPath) {
        return ContextUtils.getCurrentDir() + JAVASCRIPT_PATH + programPath + ".js";
    }

    public static String getAbsoluteHtmlPath(String programPath) {
        return ContextUtils.getCurrentDir() + HTML_PATH + programPath + ".html";
    }

/*    public static String getAbsoluteJsPath(String programPath) {
        return getWebAppPath() + DEFAULT_JS_PATH + getJsName(programPath);
    }*/

    public static String getAbsoluteDefaultJsPath(String programPath) {
        return getWebAppPath() + AXBOOT_JS_PATH + getJsName(programPath);
    }

    public static String getBaseJsPath(String programPath) {
        return DEFAULT_JS_PATH + getJsName(programPath);
    }

    public static String getJsName(String programPath) {
        if (programPath.startsWith("/jsp")) {
            programPath = programPath.substring(4);
        }

        int lastIndex = programPath.lastIndexOf(".");

        return programPath.substring(0, lastIndex) + ".js";
    }


    public static void generateViewResources(String programPath, String viewType, String programCode) {

        generateHtmlAndJsFiles(programPath, viewType);

        String className = CaseFormat.LOWER_HYPHEN.to(CaseFormat.UPPER_CAMEL, programCode) + "ViewRouter";

        String packageName = programPath.replace(programCode, "").replace("/", ".");

        packageName = StringUtils.isEmpty(packageName) ? PackageManager.CONTROLLER_VIEW :
                PackageManager.CONTROLLER_VIEW + packageName.substring(0, packageName.length()-1);

        generateViewRouterFile(TemplateParser.getViewRouter(className, packageName, programPath), packageName);
    }

    public static void generateViewResources(String programPath, String viewType, String gridAttr, String gridKey, String programCode) {

        generateHtmlAndJsFiles(programPath, viewType, gridAttr, gridKey);

        String className = CaseFormat.LOWER_UNDERSCORE.to(CaseFormat.UPPER_CAMEL, programCode) + "ViewRouter";

        String packageName = programPath.replace("/", ".");

        packageName = packageName.startsWith(".") ?
                packageName.substring(1) : packageName;

        packageName = packageName.endsWith(".") ?
                packageName.substring(0, packageName.length()-1) : packageName;

        packageName = StringUtils.isEmpty(packageName) ? PackageManager.CONTROLLER_VIEW : PackageManager.CONTROLLER_VIEW+ "." + packageName;

        generateViewRouterFile(TemplateParser.getViewRouter(className, packageName, programPath), packageName);
    }

    public static void generateHtmlAndJsFiles(String programPath, String viewType) {
        generateHtmlAndJsFiles(programPath, viewType, "", "");
    }

    public static void generateHtmlAndJsFiles(String programPath, String viewType, String gridAttr, String gridKey) {
        viewType = StringUtils.isEmpty(viewType) ? "001" : viewType.toLowerCase().replace("type-", "");
        generateHtmlAndJsFiles(programPath, viewType, gridAttr, gridKey, null);
    }

    public static void generateHtmlAndJsFiles(String programPath, String viewType, String gridAttr, String gridKey, ClassLoader loader) {
        try {
            loader = getClassLoader(loader);

            String viewName = FilenameUtils.getBaseName(programPath);

            if (StringUtils.isNotEmpty(viewName)) {

                File htmlFile = new File(getAbsoluteHtmlPath(programPath));
                File jsFile = new File(getAbsoluteJsPath(programPath));

                if (!htmlFile.exists()) {
                    write(htmlFile, getTemplate("ViewTemplate-" + viewType + "-HTML.tpl", loader)
                            .replace("@{JSPath}", programPath));
                }

                if (!jsFile.exists()) {

                    if (StringUtils.isEmpty(gridAttr) && StringUtils.isEmpty(gridKey)) {
                        write(jsFile, getTemplate("ViewTemplate-" + viewType + "-JS.tpl", loader));
                    } else {
                        write(jsFile, getTemplate("ViewTemplate-" + viewType + "-JS.tpl", loader)
                            .replace("@{ApiPath}", "/api/v1/" + programPath).replace("@{GridAttr}", gridAttr).replace("@{GridKey}", gridKey));
                    }
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public static void generateViewRouterFile(TemplateCode templateCode, String packageName) {

        String fileName = templateCode.name();
        String filePath = getAbsoluteControllerPath(packageName, fileName);

        try {
            checkExistsFile(fileName, filePath);
            write(filePath, templateCode.code());
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public static String getTemplate(String name, ClassLoader classLoader) throws IOException {
        return IOUtils.toString(new ClassPathResource("/tpls/" + name, classLoader).getInputStream(), "UTF-8");
    }

    public static void write(File file, String code) throws IOException {
        if (!file.exists()) {
            FileUtils.forceMkdir(file.getParentFile());
            FileUtils.write(file, code, "UTF-8");
        }
    }

    public static void write(String path, String code) throws IOException {
        write(new File(path), code);
    }

    public static void generateControllerFile(TemplateCode templateCode, String packageName) {

        String fileName = templateCode.name();
        String filePath = getAbsoluteControllerPath(packageName, fileName);

        try {
            checkExistsFile(fileName, filePath);
            write(filePath, templateCode.code());
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public static void generateDomainFile(TemplateCode templateCode, String packageName) {

        String fileName = templateCode.name();
        String filePath = getAbsoluteControllerPath(packageName, fileName);

        try {
            checkExistsFile(fileName, filePath);
            write(getAbsoluteDomainPath(packageName, templateCode.name()), templateCode.code());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void generateDomainResourceFile(TemplateCode templateCode, String packageName) {

        String fileName = templateCode.name();
        String filePath = getAbsoluteControllerPath(packageName, fileName);

        try {
            checkExistsFile(fileName, filePath);
            write(getAbsoluteMyBatisXMLPath(packageName, templateCode.name()), templateCode.code());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void checkExistsFile(String fileName, String filePath) {

        if (new File(filePath).exists()) {
            throw new RuntimeException("존재하는 파일[" + fileName + "]로 인해 코드 생성 작업을 종료합니다.");
        }
    }
}

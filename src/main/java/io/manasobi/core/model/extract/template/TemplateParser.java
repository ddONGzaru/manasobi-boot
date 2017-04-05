package io.manasobi.core.model.extract.template;

import io.manasobi.core.code.PackageManager;
import io.manasobi.core.code.Types;
import io.manasobi.core.model.extract.metadata.Table;
import io.manasobi.core.model.extract.template.fields.EntityFields;
import io.manasobi.core.model.extract.template.fields.KeyFields;
import io.manasobi.core.model.extract.template.fields.VOFields;
import io.manasobi.core.model.extract.template.file.*;
import io.manasobi.utils.NamingUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.text.StrSubstitutor;
import org.springframework.core.io.ClassPathResource;

import java.util.HashMap;
import java.util.Map;

public class TemplateParser {

    public static String getTemplate(String type) {
        try {
            switch (type) {
                case Templates.COMPOSITE_KEY_ENTITY_CLASS_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/ComposeKeyEntityTemplate.tpl").getInputStream(), "UTF-8");

                case Templates.SINGLE_KEY_ENTITY_CLASS_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/EntityTemplates.tpl").getInputStream(), "UTF-8");

                case Templates.SERVICE_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/ServiceTemplate.tpl").getInputStream(), "UTF-8");

                case Templates.REPOSITORY_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/RepositoryTemplate.tpl").getInputStream(), "UTF-8");

                case Templates.CONTROLLER_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/ControllerTemplate.tpl").getInputStream(), "UTF-8");

                case Templates.VO_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/VOTemplate.tpl").getInputStream(), "UTF-8");

                case Templates.MYBATIS_INTERFACE_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/MyBatisInterfaceTemplate.tpl").getInputStream(), "UTF-8");

                case Templates.MYBATIS_XML_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/MyBatisXMLTemplate.tpl").getInputStream(), "UTF-8");

                case Templates.VIEW_ROUTER_TEMPLATE:
                    return IOUtils.toString(new ClassPathResource("/tpls/ViewRouterTemplate.tpl").getInputStream(), "UTF-8");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "";
    }

    public static EntityTemplateCode getEntityTemplate(String className, Table table) {
        return getEntityTemplate(className, table, "");
    }

    public static EntityTemplateCode getEntityTemplate(String className, Table table, String targetPackageName) {
        String template = getTemplate(Templates.SINGLE_KEY_ENTITY_CLASS_TEMPLATE);

        EntityFields entityFields = TemplateBuilder.EntityTemplateBuilder.build(table);

        Map<String, String> templateElements = new HashMap<>();

        templateElements.put(TemplateKeys.TABLE_NAME, table.getTableName());
        templateElements.put(TemplateKeys.BASE_PACKAGE_NAME, PackageManager.BASE);
        templateElements.put(TemplateKeys.DOMAIN_PACKAGE_NAME, PackageManager.DOMAIN);
        templateElements.put(TemplateKeys.TABLE_COMMENT, table.getRemarks());
        templateElements.put(TemplateKeys.TARGET_PACKAGE_NAME, targetPackageName);
        templateElements.put(TemplateKeys.ENTITY_CLASS_NAME, className);
        templateElements.put(TemplateKeys.ENTITY_CLASS_FIELD_NAME, NamingUtils.classFieldName(className));
        templateElements.put(TemplateKeys.KEY_CLASS_REF_NAME, table.keyClassRefName(className));
        templateElements.put(TemplateKeys.KEY_CLASS_NAME, table.keyClassName(className));
        templateElements.put(TemplateKeys.RETURN_KEY_NAME, table.returnKeyName());
        templateElements.put(TemplateKeys.ENTITY_FIELDS, entityFields.getCode());
        templateElements.put(TemplateKeys.IMPORT_PACKAGES, entityFields.getImportPackages());
        templateElements.put(TemplateKeys.ANNOTATIONS, entityFields.getAnnotations());

        if (table.keyType().equals(Table.Key.COMPOSITE)) {
            template = getTemplate(Templates.COMPOSITE_KEY_ENTITY_CLASS_TEMPLATE);

            KeyFields keyFields = TemplateBuilder.KeyTemplateBuilder.build(table);
            templateElements.put(TemplateKeys.KEY_FIELDS, keyFields.getCode());
        }

        return EntityTemplateCode.of(new StrSubstitutor(templateElements).replace(template), NamingUtils.classFileName(className));
    }

    public static ServiceTemplateCode getServiceTemplate(String className, Table table) {
        return getServiceTemplate(className, table, "");
    }

    public static ServiceTemplateCode getServiceTemplate(String className, Table table, String targetPackageName) {
        Map<String, String> templateElements = new HashMap<>();

        templateElements.put(TemplateKeys.BASE_PACKAGE_NAME, PackageManager.BASE);
        templateElements.put(TemplateKeys.DOMAIN_PACKAGE_NAME, PackageManager.DOMAIN);
        templateElements.put(TemplateKeys.TARGET_PACKAGE_NAME, targetPackageName);
        templateElements.put(TemplateKeys.KEY_CLASS_REF_NAME, table.keyClassRefName(className));
        templateElements.put(TemplateKeys.KEY_CLASS_NAME, table.keyClassName(className));
        templateElements.put(TemplateKeys.ENTITY_CLASS_NAME, className);
        templateElements.put(TemplateKeys.SERVICE_CLASS_NAME, NamingUtils.classNameWithType(className, Types.ModelExtractorTemplateSuffix.SERVICE));
        templateElements.put(TemplateKeys.REPOSITORY_CLASS_NAME, NamingUtils.classNameWithType(className, Types.ModelExtractorTemplateSuffix.REPOSITORY));
        templateElements.put(TemplateKeys.REPOSITORY_CLASS_FIELD_NAME, NamingUtils.classFieldNameWithType(className, Types.ModelExtractorTemplateSuffix.REPOSITORY));

        return ServiceTemplateCode.of(new StrSubstitutor(templateElements).replace(getTemplate(Templates.SERVICE_TEMPLATE)), NamingUtils.classFileNameWithType(className, Types.ModelExtractorTemplateSuffix.SERVICE));
    }

    public static RepositoryTemplateCode getRepositoryTemplate(String className, Table table) {
        return getRepositoryTemplate(className, table, "");
    }

    public static RepositoryTemplateCode getRepositoryTemplate(String className, Table table, String targetPackageName) {
        Map<String, String> templateElements = new HashMap<>();

        templateElements.put(TemplateKeys.BASE_PACKAGE_NAME, PackageManager.BASE);
        templateElements.put(TemplateKeys.DOMAIN_PACKAGE_NAME, PackageManager.DOMAIN);
        templateElements.put(TemplateKeys.TARGET_PACKAGE_NAME, targetPackageName);
        templateElements.put(TemplateKeys.KEY_CLASS_REF_NAME, table.keyClassRefName(className));
        templateElements.put(TemplateKeys.KEY_CLASS_NAME, table.keyClassName(className));
        templateElements.put(TemplateKeys.ENTITY_CLASS_NAME, className);
        templateElements.put(TemplateKeys.REPOSITORY_CLASS_NAME, NamingUtils.classNameWithType(className, Types.ModelExtractorTemplateSuffix.REPOSITORY));

        return RepositoryTemplateCode.of(new StrSubstitutor(templateElements).replace(getTemplate(Templates.REPOSITORY_TEMPLATE)), NamingUtils.classFileNameWithType(className, Types.ModelExtractorTemplateSuffix.REPOSITORY));
    }

    public static VOTemplateCode getVoTemplate(String className, Table table) {
        return getVoTemplate(className, table, "");
    }

    public static VOTemplateCode getVoTemplate(String className, Table table, String targetPackageName) {
        Map<String, String> templateElements = new HashMap<>();

        VOFields voFields = TemplateBuilder.VOTemplateBuilder.build(table);

        templateElements.put(TemplateKeys.BASE_PACKAGE_NAME, PackageManager.BASE);
        templateElements.put(TemplateKeys.DOMAIN_PACKAGE_NAME, PackageManager.DOMAIN);
        templateElements.put(TemplateKeys.ENTITY_CLASS_NAME, className);
        templateElements.put(TemplateKeys.TARGET_PACKAGE_NAME, targetPackageName);
        templateElements.put(TemplateKeys.ENTITY_CLASS_FIELD_NAME, NamingUtils.classFieldName(className));
        templateElements.put(TemplateKeys.VO_CLASS_NAME, NamingUtils.classNameWithType(className, Types.ModelExtractorTemplateSuffix.VO));
        templateElements.put(TemplateKeys.VO_CLASS_FIELD_NAME, NamingUtils.classFieldNameWithType(className, Types.ModelExtractorTemplateSuffix.VO));
        templateElements.put(TemplateKeys.VO_FIELDS, voFields.getCode());
        templateElements.put(TemplateKeys.IMPORT_PACKAGES, voFields.getImportPackages());

        return VOTemplateCode.of(new StrSubstitutor(templateElements).replace(getTemplate(Templates.VO_TEMPLATE)), NamingUtils.classFileNameWithType(className, Types.ModelExtractorTemplateSuffix.VO));
    }

    public static ControllerTemplateCode getControllerTemplate(String className, String apiPath, Table table) {
        return getControllerTemplate(className, apiPath, table, "");
    }

    public static ControllerTemplateCode getControllerTemplate(String className, String apiPath, Table table, String targetPackageName) {
        Map<String, String> templateElements = new HashMap<>();

        if (StringUtils.isEmpty(apiPath)) {
            apiPath = NamingUtils.classFieldName(className) + "s";
        }

        templateElements.put(TemplateKeys.BASE_PACKAGE_NAME, PackageManager.BASE);
        templateElements.put(TemplateKeys.TARGET_PACKAGE_NAME, targetPackageName);
        templateElements.put(TemplateKeys.DOMAIN_PACKAGE_NAME, PackageManager.DOMAIN);
        templateElements.put(TemplateKeys.CONTROLLER_PACKAGE_NAME, PackageManager.CONTROLLER_API + "." + targetPackageName);
        templateElements.put(TemplateKeys.ENTITY_CLASS_NAME, className);
        templateElements.put(TemplateKeys.VO_CLASS_NAME, className + "VO");
        templateElements.put(TemplateKeys.API_PATH, apiPath);
        templateElements.put(TemplateKeys.ENTITY_CLASS_FIELD_NAME, NamingUtils.classFieldName(className));
        templateElements.put(TemplateKeys.CONTROLLER_CLASS_NAME, NamingUtils.classNameWithType(className, Types.ModelExtractorTemplateSuffix.CONTROLLER));
        templateElements.put(TemplateKeys.SERVICE_CLASS_NAME, NamingUtils.classNameWithType(className, Types.ModelExtractorTemplateSuffix.SERVICE));
        templateElements.put(TemplateKeys.SERVICE_CLASS_FIELD_NAME, NamingUtils.classFieldNameWithType(className, Types.ModelExtractorTemplateSuffix.SERVICE));

        return ControllerTemplateCode.of(new StrSubstitutor(templateElements).replace(getTemplate(Templates.CONTROLLER_TEMPLATE)), NamingUtils.classFileNameWithType(className, Types.ModelExtractorTemplateSuffix.CONTROLLER));
    }

    public static MyBatisInterfaceTemplateCode getMyBatisInterfaceTemplate(String className, Table table) {
        return getMyBatisInterfaceTemplate(className, table, "");
    }

    public static MyBatisInterfaceTemplateCode getMyBatisInterfaceTemplate(String className, Table table, String targetPackageName) {
        Map<String, String> templateElements = new HashMap<>();

        templateElements.put(TemplateKeys.BASE_PACKAGE_NAME, PackageManager.BASE);
        templateElements.put(TemplateKeys.TARGET_PACKAGE_NAME, targetPackageName);
        templateElements.put(TemplateKeys.DOMAIN_PACKAGE_NAME, PackageManager.DOMAIN);
        templateElements.put(TemplateKeys.TABLE_NAME, table.getTableName());
        templateElements.put(TemplateKeys.ENTITY_CLASS_NAME, className);
        templateElements.put(TemplateKeys.ENTITY_CLASS_FIELD_NAME, NamingUtils.classFieldName(className));
        templateElements.put(TemplateKeys.MYBATIS_CLASS_NAME, NamingUtils.classNameWithType(className, Types.ModelExtractorTemplateSuffix.MYBATIS));
        templateElements.put(TemplateKeys.MYBATIS_CLASS_FIELD_NAME, NamingUtils.classFieldNameWithType(className, Types.ModelExtractorTemplateSuffix.MYBATIS));

        return MyBatisInterfaceTemplateCode.of(new StrSubstitutor(templateElements).replace(getTemplate(Templates.MYBATIS_INTERFACE_TEMPLATE)), NamingUtils.classFileNameWithType(className, Types.ModelExtractorTemplateSuffix.MYBATIS));
    }

    public static MyBatisXMLTemplateCode getMyBatisXMLTemplate(String className, Table table) {
        return getMyBatisXMLTemplate(className, table, "");
    }

    public static MyBatisXMLTemplateCode getMyBatisXMLTemplate(String className, Table table, String targetPackageName) {
        Map<String, String> templateElements = new HashMap<>();

        templateElements.put(TemplateKeys.BASE_PACKAGE_NAME, PackageManager.BASE);
        templateElements.put(TemplateKeys.DOMAIN_PACKAGE_NAME, PackageManager.DOMAIN);
        templateElements.put(TemplateKeys.TABLE_NAME, table.getTableName());
        templateElements.put(TemplateKeys.ENTITY_CLASS_NAME, className);
        templateElements.put(TemplateKeys.TARGET_PACKAGE_NAME, targetPackageName);
        templateElements.put(TemplateKeys.ENTITY_CLASS_FIELD_NAME, NamingUtils.classFieldName(className));
        templateElements.put(TemplateKeys.MYBATIS_CLASS_NAME, NamingUtils.classNameWithType(className, Types.ModelExtractorTemplateSuffix.MYBATIS));
        templateElements.put(TemplateKeys.MYBATIS_CLASS_FIELD_NAME, NamingUtils.classFieldNameWithType(className, Types.ModelExtractorTemplateSuffix.MYBATIS));
        templateElements.put(TemplateKeys.SELECT_COLUMNS, table.selectQueryFields());
        templateElements.put(TemplateKeys.COLUMNS, table.queryFields());
        templateElements.put(TemplateKeys.VALUES, table.queryValues());
        templateElements.put(TemplateKeys.SET_COLUMNS, table.setColumns());
        templateElements.put(TemplateKeys.ID_WHERE, table.idWhere());

        return MyBatisXMLTemplateCode.of(new StrSubstitutor(templateElements).replace(getTemplate(Templates.MYBATIS_XML_TEMPLATE)), NamingUtils.xmlFileNameWithType(className, Types.ModelExtractorTemplateSuffix.MYBATIS));
    }

    public static ViewRouterTemplateCode getViewRouter(String className, String packageName, String viewName) {

        Map<String, String> templateElements = new HashMap<>();

        templateElements.put(TemplateKeys.CONTROLLER_PACKAGE_NAME, packageName);
        templateElements.put(TemplateKeys.CONTROLLER_CLASS_NAME, className);
        templateElements.put(TemplateKeys.VIEW_URL, viewName);
        templateElements.put(TemplateKeys.VIEW_NAME, viewName);

        return ViewRouterTemplateCode.of(new StrSubstitutor(templateElements).replace(getTemplate(Templates.VIEW_ROUTER_TEMPLATE)), NamingUtils.classFileName(className));
    }
}

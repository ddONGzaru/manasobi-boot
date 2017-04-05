package io.manasobi.core.model.extract.service;

import com.google.common.base.CaseFormat;
import io.manasobi.config.BaseContextConfig;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.code.PackageManager;
import io.manasobi.core.code.Types;
import io.manasobi.core.model.JPAMvcModelExtractedCode;
import io.manasobi.core.model.extract.metadata.Table;
import io.manasobi.core.model.extract.template.TemplateParser;
import io.manasobi.core.model.extract.template.file.TemplateCode;
import io.manasobi.utils.NamingUtils;
import io.manasobi.utils.TemplateUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

@Slf4j
@Service
public class ModelExtractService {

    @Inject
    private JdbcMetadataService jdbcMetadataService;

    @Inject
    private BaseContextConfig baseContextConfig;

    public JPAMvcModelExtractedCode getJpaMvcModel(String tableName, String className, String apiPath) {

        Table table = jdbcMetadataService.getTable(tableName);

        if (table == null) {
            throw new ApiException(ApiStatus.BAD_REQUEST, "테이블이 존재하지 않습니다. 테이블명을 확인하세요");
        }

        JPAMvcModelExtractedCode jpaMvcModelExtractedCode = new JPAMvcModelExtractedCode();

        String classFieldName = NamingUtils.classFieldName(className);

        jpaMvcModelExtractedCode.setController(TemplateParser.getControllerTemplate(className, apiPath, table, classFieldName));
        jpaMvcModelExtractedCode.setEntity(TemplateParser.getEntityTemplate(className, table, classFieldName));
        jpaMvcModelExtractedCode.setService(TemplateParser.getServiceTemplate(className, table, classFieldName));
        jpaMvcModelExtractedCode.setRepository(TemplateParser.getRepositoryTemplate(className, table, classFieldName));
        jpaMvcModelExtractedCode.setVo(TemplateParser.getVoTemplate(className, table, classFieldName));
        jpaMvcModelExtractedCode.setMyBatisInterface(TemplateParser.getMyBatisInterfaceTemplate(className, table, classFieldName));
        jpaMvcModelExtractedCode.setMyBatisXML(TemplateParser.getMyBatisXMLTemplate(className, table, classFieldName));

        BaseContextConfig.Modeler modelerConfig = baseContextConfig.getModelerConfig();

        if (modelerConfig.isOutput()) {
            String outputDir = modelerConfig.getOutputDir();

            try {
                File outputDirFile = new File(outputDir);
                FileUtils.forceMkdir(outputDirFile);
                FileUtils.cleanDirectory(outputDirFile);

                IOUtils.write(jpaMvcModelExtractedCode.getEntity().code(), new FileOutputStream(new File(outputDir + jpaMvcModelExtractedCode.getEntity().name())), "UTF-8");
                IOUtils.write(jpaMvcModelExtractedCode.getController().code(), new FileOutputStream(new File(outputDir + jpaMvcModelExtractedCode.getController().name())), "UTF-8");
                IOUtils.write(jpaMvcModelExtractedCode.getService().code(), new FileOutputStream(new File(outputDir + jpaMvcModelExtractedCode.getService().name())), "UTF-8");
                IOUtils.write(jpaMvcModelExtractedCode.getRepository().code(), new FileOutputStream(new File(outputDir + jpaMvcModelExtractedCode.getRepository().name())), "UTF-8");
                IOUtils.write(jpaMvcModelExtractedCode.getVo().code(), new FileOutputStream(new File(outputDir + jpaMvcModelExtractedCode.getVo().name())), "UTF-8");
                IOUtils.write(jpaMvcModelExtractedCode.getMyBatisInterface().code(), new FileOutputStream(new File(outputDir + jpaMvcModelExtractedCode.getMyBatisInterface().name())), "UTF-8");
                IOUtils.write(jpaMvcModelExtractedCode.getMyBatisXML().code(), new FileOutputStream(new File(outputDir + jpaMvcModelExtractedCode.getMyBatisXML().name())), "UTF-8");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return jpaMvcModelExtractedCode;
    }

    public TemplateCode getTemplateCode(String templateType, String tableName, String className, String apiPath) {
        Table table = jdbcMetadataService.getTable(tableName);

        switch (templateType) {
            case Types.ModelExtractorTemplate.CONTROLLER:
                return TemplateParser.getControllerTemplate(className, apiPath, table);

            case Types.ModelExtractorTemplate.VO:
                return TemplateParser.getVoTemplate(className, table);

            case Types.ModelExtractorTemplate.ENTITY:
                return TemplateParser.getEntityTemplate(className, table);

            case Types.ModelExtractorTemplate.SERVICE:
                return TemplateParser.getServiceTemplate(className, table);

            case Types.ModelExtractorTemplate.REPOSITORY:
                return TemplateParser.getRepositoryTemplate(className, table);

            case Types.ModelExtractorTemplate.MYBATIS_INTERFACE:
                return TemplateParser.getMyBatisInterfaceTemplate(className, table);

            case Types.ModelExtractorTemplate.MYBATIS_XML:
                return TemplateParser.getMyBatisXMLTemplate(className, table);
        }

        return null;
    }

    public void generateFiles(List<String> templateTypes, String tableName, String className, String packageName) {

        String apiPath = CaseFormat.UPPER_CAMEL.to(CaseFormat.LOWER_HYPHEN, className);

        generateFiles(templateTypes, apiPath, tableName, className, packageName);
    }

    public void generateFiles(List<String> templateTypes, String apiPath, String tableName, String className, String packageName) {

        className = Character.toUpperCase(className.charAt(0)) + className.substring(1);

        for (String templateType : templateTypes) {
            Table table = jdbcMetadataService.getTable(tableName);

            String domainPackage = PackageManager.DOMAIN;
            String controllerPackage = PackageManager.CONTROLLER_API;

            if (StringUtils.isNotEmpty(packageName)) {
                domainPackage +=  "." + packageName;
                controllerPackage += "." + packageName;
            }

            switch (templateType) {
                case Types.ModelExtractorTemplate.CONTROLLER:
                    TemplateUtils.generateControllerFile(TemplateParser.getControllerTemplate(className, apiPath, table, packageName), controllerPackage);
                    break;

                case Types.ModelExtractorTemplate.VO:
                    TemplateUtils.generateDomainFile(TemplateParser.getVoTemplate(className, table, packageName), domainPackage);
                    break;

                case Types.ModelExtractorTemplate.ENTITY:
                    TemplateUtils.generateDomainFile(TemplateParser.getEntityTemplate(className, table, packageName), domainPackage);
                    //JpaUtils.generateQueryDSL(domainPackage, className + ".java");
                    break;

                case Types.ModelExtractorTemplate.SERVICE:
                    TemplateUtils.generateDomainFile(TemplateParser.getServiceTemplate(className, table, packageName), domainPackage);
                    break;

                case Types.ModelExtractorTemplate.REPOSITORY:
                    TemplateUtils.generateDomainFile(TemplateParser.getRepositoryTemplate(className, table, packageName), domainPackage);
                    break;

                case Types.ModelExtractorTemplate.MYBATIS_INTERFACE:
                    TemplateUtils.generateDomainFile(TemplateParser.getMyBatisInterfaceTemplate(className, table, packageName), domainPackage);
                    break;

                case Types.ModelExtractorTemplate.MYBATIS_XML:
                    TemplateUtils.generateDomainResourceFile(TemplateParser.getMyBatisXMLTemplate(className, table, packageName), domainPackage);
                    break;
            }
        }
    }

}

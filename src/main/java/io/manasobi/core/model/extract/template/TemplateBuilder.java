package io.manasobi.core.model.extract.template;

import io.manasobi.core.model.extract.metadata.Column;
import io.manasobi.core.model.extract.metadata.HibernateField;
import io.manasobi.core.model.extract.metadata.Table;
import io.manasobi.core.model.extract.template.fields.EntityFields;
import io.manasobi.core.model.extract.template.fields.KeyFields;
import io.manasobi.core.model.extract.template.fields.VOFields;
import io.manasobi.utils.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class TemplateBuilder {

    private static final String TAB = "	";
    private static final String TAB_2 = "		";
    private static final String NEW_LINE = System.getProperty("line.separator");

    public static class EntityTemplateBuilder {

        public static EntityFields build(Table table) {
            EntityFields entityFields = new EntityFields();

            StringBuilder code = new StringBuilder();
            List<String> importList = new ArrayList<>();
            List<String> annotations = new ArrayList<>();

            int index = 1;

            for (Column column : table.getColumns()) {
                if (!column.skip()) {
                    HibernateField hibernateField = column.hibernateField();

                    String javaType = hibernateField.getJavaType();

                    /*String javaType = StringUtils.equals(hibernateField.getJavaType(), "Timestamp") ?
                            "Instant" : hibernateField.getJavaType();*/

                    if (ArrayUtils.isNotEmpty(hibernateField.getEntityClassImportList())) {
                        for (String importPackage : hibernateField.getEntityClassImportList()) {

                            String importPackageText;

                            if (StringUtils.equals(javaType, "Instant")) {
                                importPackageText = "import java.time.Instant;";
                            } else {
                                importPackageText = String.format("import %s", importPackage);
                            }

                            if (!importPackageText.endsWith(";")) {
                                importPackageText += ";";
                            }

                            if (!importList.contains(importPackageText)) {
                                importList.add(importPackageText);
                            }
                        }
                    }

                    if (ArrayUtils.isNotEmpty(hibernateField.getEntityClassAnnotationList())) {
                        for (String annotation : hibernateField.getEntityClassAnnotationList()) {
                            String annotationText = annotation;
                            if (!annotations.contains(annotationText)) {
                                annotations.add(annotationText);
                            }
                        }
                    }

                    if (column.isKey()) {
                        code.append(NEW_LINE);
                        code.append(TAB + "@Id");
                    }

                    code.append(NEW_LINE);
                    code.append(TAB + hibernateField.getFieldAnnotation());
                    code.append(NEW_LINE);
                    //code.append(TAB + String.format("@Comment(value = \"%s\")", column.getRemarks()));

                    if ("YES".equals(column.getIsAutoincrement())) {
                        code.append(NEW_LINE);
                        code.append(TAB + "@GeneratedValue(strategy = GenerationType.IDENTITY)");
                    }

                    //code.append(NEW_LINE);
                    //code.append(TAB + "@ColumnPosition(" + (index++) + ")");
                    //code.append(NEW_LINE);
                    code.append(TAB + String.format("private %s %s;", javaType, hibernateField.getFieldName()));

                    code.append(NEW_LINE);
                }
            }

            entityFields.setCode(code.toString());
            entityFields.setImportPackages(importList.stream().map(String::toString).collect(Collectors.joining(NEW_LINE)));

            if (annotations.size() > 0) {
                entityFields.setAnnotations(NEW_LINE + annotations.stream().map(String::toString).collect(Collectors.joining(NEW_LINE)));
            } else {
                entityFields.setAnnotations("");
            }

            return entityFields;
        }
    }

    public static class KeyTemplateBuilder {
        public static KeyFields build(Table table) {
            KeyFields keyFields = new KeyFields();

            StringBuilder code = new StringBuilder();

            table.getColumns().stream().filter(Column::isKey).forEach(column -> {
                HibernateField hibernateField = column.hibernateField();

                code.append(NEW_LINE);
                code.append(TAB_2 + "@NonNull");
                code.append(NEW_LINE);
                code.append(TAB_2 + String.format("private %s %s;", hibernateField.getJavaType(), hibernateField.getFieldName()));
                code.append(NEW_LINE);
            });

            keyFields.setCode(code.toString());

            return keyFields;
        }
    }

    public static class VOTemplateBuilder {
        public static VOFields build(Table table) {

            VOFields voFields = new VOFields();

            StringBuilder code = new StringBuilder();
            List<String> importList = new ArrayList<>();

            table.getColumns().stream()
                              .filter(field -> !field.skip())
                              .forEach(column -> {

                                  HibernateField hibernateField = column.hibernateField();

                                  String javaType = hibernateField.getJavaType();
/*                                  String javaType = StringUtils.equals(hibernateField.getJavaType(), "Timestamp") ?
                                          "Instant" : hibernateField.getJavaType();*/

                                  if (ArrayUtils.isNotEmpty(hibernateField.getEntityClassImportList())) {

                                      for (String importPackage : hibernateField.getEntityClassImportList()) {
                                            String importPackageText;

                                          if (StringUtils.equals(javaType, "Instant")) {
                                              importPackageText = "import java.time.Instant;";
                                          } else {
                                              importPackageText = String.format("import %s", importPackage);
                                          }

                                          if (!importPackageText.endsWith(";")) {
                                              importPackageText += ";";
                                          }

                                          if (!importList.contains(importPackageText)) {
                                              importList.add(importPackageText);
                                          }
                                      }
                                    }

                                    code.append(NEW_LINE);
                                    code.append(TAB + String.format("private %s %s;", javaType, hibernateField.getFieldName()));
                                    code.append(NEW_LINE);
                              });

            voFields.setCode(code.toString());
            voFields.setImportPackages(importList.stream().map(String::toString).collect(Collectors.joining(NEW_LINE)));

            return voFields;
        }
    }
}

package io.manasobi.core.code;

import com.fasterxml.jackson.annotation.JsonValue;

/**
 * Created by tw.jang on 2017-04-05.
 */
public class Types {

    public static final String Y = "Y";
    public static final String N = "N";

    public enum Used implements LabelEnum {

        YES("Y"), NO("N");

        private final String label;

        Used(String label) {
            this.label = label;
        }

        @Override
        @JsonValue
        public String getLabel() {
            return label;
        }

        public static Used get(String useYn) {
            for (Used used : values()) {
                if (used.getLabel().equals(useYn))
                    return used;
            }
            return null;
        }
    }

    public enum Deleted implements LabelEnum {

        YES("Y"), NO("N");

        private final String label;

        Deleted(String label) {
            this.label = label;
        }

        @Override
        @JsonValue
        public String getLabel() {
            return label;
        }

        public static Deleted get(String delYn) {
            for (Deleted deleted : values()) {
                if (deleted.getLabel().equals(delYn))
                    return deleted;
            }
            return null;
        }
    }

    public static class ModelExtractorTemplate {
        public static final String CONTROLLER = "Controller";
        public static final String SERVICE = "Service";
        public static final String VO = "VO";
        public static final String REPOSITORY = "Repository";
        public static final String ENTITY = "Entity";
        public static final String MYBATIS_INTERFACE = "MyBatisInterface";
        public static final String MYBATIS_XML = "MyBatisXML";
    }

    public static class ModelExtractorTemplateSuffix {
        public static final String CONTROLLER = "Controller";
        public static final String SERVICE = "Service";
        public static final String REPOSITORY = "Repository";
        public static final String VO = "VO";
        public static final String ENTITY = "Entity";
        public static final String MYBATIS = "Mapper";
    }


    public static class ApplicationProfile {
        public static final String LOCAL = "local";
        public static final String DEV = "dev";
        public static final String ALPHA = "alpha";
        public static final String BETA = "beta";
        public static final String STAGING = "stage";
        public static final String PRODUCTION = "prod";
    }

    public class DatabaseType {
        public static final String MYSQL = "mysql";
        public static final String ORACLE = "oracle";
        public static final String MSSQL = "mssql";
        public static final String POSTGRESQL = "postgresql";
        public static final String H2 = "h2";
    }

    public enum DataStatus {
        CREATED,
        MODIFIED,
        DELETED,
        ORIGIN
    }

    public enum UserStatus implements LabelEnum {
        ACCOUNT_LOCK("ACCOUNT_LOCK"), NORMAL("NORMAL");

        private final String label;

        UserStatus(String label) {
            this.label = label;
        }

        @Override
        @JsonValue
        public String getLabel() {
            return label;
        }
    }

    public static class FileExtensions {
        public static final String PNG = "PNG";
        public static final String JPG = "JPG";
        public static final String JPEG = "JPEG";
        public static final String GIF = "GIF";
        public static final String BMP = "BMP";
        public static final String TIFF = "TIFF";
        public static final String TIF = "TIF";
        public static final String PDF = "PDF";
    }

    public static class FileType {
        public static final String IMAGE = "IMAGE";
        public static final String PDF = "PDF";
        public static final String ETC = "ETC";
    }

    public static class ImagePreviewType {
        public static final String THUMBNAIL = "THUMBNAIL";
        public static final String ORIGIN = "ORIGIN";
    }
}

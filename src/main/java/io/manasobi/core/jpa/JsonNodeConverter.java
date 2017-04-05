package io.manasobi.core.jpa;

import com.fasterxml.jackson.databind.JsonNode;
import io.manasobi.utils.JsonUtils;
import org.apache.commons.lang3.StringUtils;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class JsonNodeConverter implements AttributeConverter<JsonNode, String> {

    @Override
    public String convertToDatabaseColumn(JsonNode attribute) {
        return attribute != null ? attribute.toString() : null;
    }

    @Override
    public JsonNode convertToEntityAttribute(String dbData) {
        return StringUtils.isEmpty(dbData) ? null : JsonUtils.fromJson(dbData);
    }
}

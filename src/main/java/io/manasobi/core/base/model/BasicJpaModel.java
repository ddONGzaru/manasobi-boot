package io.manasobi.core.base.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import io.manasobi.core.db.type.LabelEnumType;
import io.manasobi.core.db.type.MySQLJSONUserType;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.TypeDef;
import org.hibernate.annotations.TypeDefs;
import org.springframework.data.domain.Persistable;

import javax.persistence.MappedSuperclass;
import java.io.Serializable;

@TypeDefs({
        @TypeDef(name = "jsonNode", typeClass = MySQLJSONUserType.class, parameters = {@org.hibernate.annotations.Parameter(name = MySQLJSONUserType.CLASS, value = "com.fasterxml.jackson.databind.JsonNode")}),
        @TypeDef(name = "labelEnum", typeClass = LabelEnumType.class, parameters = {@org.hibernate.annotations.Parameter(name = MySQLJSONUserType.CLASS, value = "com.chequer.axboot.core.db.type.LabelEnumType")})
})
@Setter
@Getter
@MappedSuperclass
@DynamicInsert
@DynamicUpdate
public abstract class BasicJpaModel<PK extends Serializable> extends BaseCrudModel implements Persistable<PK>, Serializable {
    @Override
    @JsonIgnore
    public boolean isNew() {
        return null == getId();
    }
}

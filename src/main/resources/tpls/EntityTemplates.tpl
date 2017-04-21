package ${domainPackageName}.${targetPackageName};

import io.manasobi.core.annotations.ColumnPosition;
import io.manasobi.core.domain.SimpleJpaModel;
import io.manasobi.core.annotations.Comment;
import lombok.*;
import org.apache.ibatis.type.Alias;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.*;
${importPackages}

@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@EqualsAndHashCode(callSuper = true)
@Table(name = "${tableName}")
@Comment("${tableComment}")
@Alias("${entityClassFieldName}")${annotations}
public class ${entityClassName} extends SimpleJpaModel<${keyClassRefName}> {
${entityFields}

    @Override
    public ${keyClassName} getId() {
        return ${returnKeyName};
    }
}
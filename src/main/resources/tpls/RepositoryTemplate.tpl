package ${domainPackageName}.${targetPackageName};

import io.manasobi.core.domain.base.AXBootJPAQueryDSLRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ${repositoryClassName} extends AXBootJPAQueryDSLRepository<${entityClassName}, ${keyClassRefName}> {
}

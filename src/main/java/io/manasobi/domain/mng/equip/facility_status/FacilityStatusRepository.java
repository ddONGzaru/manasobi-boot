package io.manasobi.domain.mng.equip.facility_status;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface FacilityStatusRepository extends BaseJPAQueryDSLRepo<FacilityStatus, FacilityStatus.FacilityStatusId> {
}

package io.manasobi.domain.mng.equip.overhaul_plan;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface OverhaulPlanRepository extends BaseJPAQueryDSLRepo<OverhaulPlan, OverhaulPlan.OverhaulPlanId> {
}

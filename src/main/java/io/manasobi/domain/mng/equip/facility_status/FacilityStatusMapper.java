package io.manasobi.domain.mng.equip.facility_status;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface FacilityStatusMapper extends MyBatisMapper {

    List<FacilityStatus> findAll();

    FacilityStatus findOne(FacilityStatus facilityStatus);

    int update(FacilityStatus facilityStatus);

    int delete(FacilityStatus facilityStatus);

    int insert(FacilityStatus facilityStatus);
}
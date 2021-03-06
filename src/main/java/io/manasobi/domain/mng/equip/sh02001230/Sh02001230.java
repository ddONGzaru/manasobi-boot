package io.manasobi.domain.mng.equip.sh02001230;

import io.manasobi.core.base.model.SimpleJpaModel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Timestamp;

@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@EqualsAndHashCode(callSuper = true)
@Table(name = "ATMS_02001230")
public class Sh02001230 extends SimpleJpaModel<Timestamp> {

	@Id
	@Column(name = "TX_ID", nullable = false)
	private Timestamp txId;

	@Column(name = "CHANGE_BEFORE_ASSET_SEQ_NO", length = 12)
	private String changeBeforeAssetSeqNo;

	@Column(name = "CHANGE_AFTER_ASSET_SEQ_NO", length = 12)
	private String changeAfterAssetSeqNo;

	@Column(name = "JISA_CODE", length = 2, nullable = false)
	private String jisaCode;

	@Column(name = "BRANCH_CODE", length = 4, nullable = false)
	private String branchCode;

	@Column(name = "CORNER_CODE", length = 2, nullable = false)
	private String cornerCode;

	@Column(name = "CHANGE_DATETIME")
	private Timestamp changeDatetime;


    @Override
    public Timestamp getId() {
        return txId;
    }
}
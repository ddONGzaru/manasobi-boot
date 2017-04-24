package io.manasobi.domain.mng.equip.sh02001150;

import io.manasobi.core.annotations.Comment;
import io.manasobi.core.base.model.SimpleJpaModel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;
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
@Table(name = "atms_02001150")
@Comment("")
@Alias("sh02001150")
public class Sh02001150 extends SimpleJpaModel<String> {

	@Id
	@Column(name = "WORK_SEQ_NO", length = 8, nullable = false)
	private String workSeqNo;

	@Column(name = "TERMINAL_SEQ_NO", length = 2)
	private String terminalSeqNo;

	@Column(name = "RESULT_STEXT_GUBUN", length = 1)
	private String resultStextGubun;

	@Column(name = "JISA_CODE", length = 2, nullable = false)
	private String jisaCode;

	@Column(name = "BRANCH_CODE", length = 4, nullable = false)
	private String branchCode;

	@Column(name = "CORNER_CODE", length = 2, nullable = false)
	private String cornerCode;

	@Column(name = "TERMINAL_NO", length = 4, nullable = false)
	private String terminalNo;

	@Column(name = "TERMINAL_CORP_CODE", length = 1)
	private String terminalCorpCode;

	@Column(name = "MODEL_CODE", length = 3)
	private String modelCode;

	@Column(name = "TERMINAL_PROD_NO", length = 15)
	private String terminalProdNo;

	@Column(name = "WORK_COMPLETE_ENABLE", length = 1)
	private String workCompleteEnable;

	@Column(name = "WORK_COMPLETE_DATE")
	private Timestamp workCompleteDate;

	@Column(name = "UNUSL", length = 200)
	private String unusl;


    @Override
    public String getId() {
        return workSeqNo;
    }
}
package io.manasobi.domain.mng.sla.sh_sla_30;

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
@Table(name = "atms_SLA_30")
@Comment("")
@Alias("shSla30")
public class ShSla30 extends SimpleJpaModel<String> {

	@Id
	@Column(name = "SEQ_NO", length = 7, nullable = false)
	private String seqNo;

	@Column(name = "MINWON_DATETIME")
	private Timestamp minwonDatetime;

	@Column(name = "JISA_CODE", length = 2)
	private String jisaCode;

	@Column(name = "BRANCH_CODE", length = 4)
	private String branchCode;

	@Column(name = "BRANCH_NAME", length = 100)
	private String branchName;

	@Column(name = "CORNER_CODE", length = 2)
	private String cornerCode;

	@Column(name = "CORNER_NAME", length = 40)
	private String cornerName;

	@Column(name = "CORP_CODE", length = 2)
	private String corpCode;

	@Column(name = "REG_TYPE", length = 10)
	private String regType;

	@Column(name = "HANDLE_TYPE", length = 1)
	private String handleType;

	@Column(name = "MINWON_TYPE", length = 1)
	private String minwonType;

	@Column(name = "CONTENT", length = 2000)
	private String content;

	@Column(name = "REG_DATETIME")
	private Timestamp regDatetime;


    @Override
    public String getId() {
        return seqNo;
    }
}
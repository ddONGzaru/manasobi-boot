package io.manasobi.domain.mng.error.sh01001130;

import io.manasobi.core.base.model.SimpleJpaModel;
import lombok.*;
import org.apache.ibatis.type.Alias;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@EqualsAndHashCode(callSuper = true)
@Table(name = "ATMS_01001130")
@IdClass(Sh01001130.Sh01001130Id.class)
@Alias("sh01001130")
public class Sh01001130 extends SimpleJpaModel<Sh01001130.Sh01001130Id> {

	@Column(name = "JISA_CODE", length = 2, nullable = false)
	private String jisaCode;

	@Id
	@Column(name = "BRANCH_CODE", length = 4, nullable = false)
	private String branchCode;

	@Id
	@Column(name = "CORNER_CODE", length = 2, nullable = false)
	private String cornerCode;

	@Id
	@Column(name = "TERMINAL_NO", length = 4, nullable = false)
	private String terminalNo;

	@Id
	@Column(name = "ERROR_DATETIME", nullable = false)
	private Timestamp errorDatetime;

	@Column(name = "CALLEE_REQ_SEQ_NO", length = 10)
	private String calleeReqSeqNo;

	@Column(name = "CALLEE_REQ_CHASU", length = 2)
	private String calleeReqChasu;

	@Column(name = "CALLEE_REQ_GUBUN", length = 1)
	private String calleeReqGubun;

	@Column(name = "CALLEE_CHASU_GUBUN", length = 1)
	private String calleeChasuGubun;

	@Column(name = "CALLEE_PLAN_DATETIME", nullable = false)
	private Timestamp calleePlanDatetime;

	@Column(name = "ARRIVAL_PLAN_DATETIME", nullable = false)
	private Timestamp arrivalPlanDatetime;

	@Column(name = "CORP_RECEIPT_EMP_NAME", length = 10)
	private String corpReceiptEmpName;

	@Column(name = "CORP_CALLEE_EMP_NAME", length = 10)
	private String corpCalleeEmpName;

	@Column(name = "CORP_CALLEE_EMP_TELNO", length = 13)
	private String corpCalleeEmpTelno;

	@Column(name = "UNUSL", length = 100)
	private String unusl;

	@Column(name = "CRT_NO", length = 15)
	private String crtNo;

	@Column(name = "ARRIVAL_PLAN_GUBUN", length = 1)
	private String arrivalPlanGubun;

	@Column(name = "SECURITY_CORP_CODE", length = 2)
	private String securityCorpCode;

	@Override
	public Sh01001130Id getId() {
	return Sh01001130Id.of(branchCode, cornerCode, terminalNo, errorDatetime);
	}

	@Embeddable
	@Data
	@NoArgsConstructor
	@RequiredArgsConstructor(staticName = "of")
	public static class Sh01001130Id implements Serializable {

			@NonNull
			private String branchCode;

			@NonNull
			private String cornerCode;

			@NonNull
			private String terminalNo;

			@NonNull
			private Timestamp errorDatetime;
	}
}
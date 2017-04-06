package io.manasobi.domain.mng.error.sh01001150;

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
@Table(name = "ATMS_01001150")
@IdClass(Sh01001150.Sh01001150Id.class)
@Alias("sh01001150")
public class Sh01001150 extends SimpleJpaModel<Sh01001150.Sh01001150Id> {

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

	@Column(name = "HANDLE_RESULT", length = 1)
	private String handleResult;

	@Column(name = "HANDLE_FAIL_REASON", length = 1)
	private String handleFailReason;

	@Column(name = "AS_METHOD", length = 1)
	private String asMethod;

	@Column(name = "HANDLE_DATETIME", nullable = false)
	private Timestamp handleDatetime;

	@Column(name = "HANDLE_EMP_NAME", length = 10)
	private String handleEmpName;

	@Column(name = "HANDLE_EMP_TELNO", length = 13)
	private String handleEmpTelno;

	@Column(name = "HANDLE_CONTENT_CODE", length = 1)
	private String handleContentCode;

	@Column(name = "HANDLE_UNUSL", length = 200)
	private String handleUnusl;

	@Column(name = "CRT_NO", length = 15)
	private String crtNo;

	@Override
	public Sh01001150Id getId() {
	return Sh01001150Id.of(branchCode, cornerCode, terminalNo, errorDatetime);
	}

	@Embeddable
	@Data
	@NoArgsConstructor
	@RequiredArgsConstructor(staticName = "of")
	public static class Sh01001150Id implements Serializable {

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
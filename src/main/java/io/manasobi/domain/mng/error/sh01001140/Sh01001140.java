package io.manasobi.domain.mng.error.sh01001140;

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
@Table(name = "ATMS_01001140")
@IdClass(Sh01001140.Sh01001140Id.class)
@Alias("sh01001140")
public class Sh01001140 extends SimpleJpaModel<Sh01001140.Sh01001140Id> {

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

	@Column(name = "CORNER_ARRIVAL_DATETIME", nullable = false)
	private Timestamp cornerArrivalDatetime;

	@Column(name = "ARRIVAL_CORP_CODE", length = 1)
	private String arrivalCorpCode;

	@Column(name = "UNUSL", length = 100)
	private String unusl;

	@Column(name = "CRT_NO", length = 15)
	private String crtNo;

	@Override
	public Sh01001140Id getId() {
	return Sh01001140Id.of(branchCode, cornerCode, terminalNo, errorDatetime);
	}

	@Embeddable
	@Data
	@NoArgsConstructor
	@RequiredArgsConstructor(staticName = "of")
	public static class Sh01001140Id implements Serializable {

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
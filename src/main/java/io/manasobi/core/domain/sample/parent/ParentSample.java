package io.manasobi.core.domain.sample.parent;

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

@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@Table(name = "PARENT_SAMPLE")
@EqualsAndHashCode
public class ParentSample extends SimpleJpaModel<String> {

	@Id
	@Column(name = "SAMPLE_KEY")
	private String key;

	@Column(name = "SAMPLE_VALUE")
	private String value;

	@Column(name = "ETC1")
	private String etc1;

	@Column(name = "ETC2")
	private String etc2;

	@Column(name = "ETC3")
	private String etc3;

	@Column(name = "ETC4")
	private String etc4;

	@Override
	public String getId() {
		return key;
	}

	@Override public boolean equals(Object obj) {

		boolean result = false;

		if (obj instanceof ParentSample) {
			ParentSample thisObj = (ParentSample) obj;
			return this.getId().equals(thisObj.getId()) ? true : false;
		}

		return result;
	}
}

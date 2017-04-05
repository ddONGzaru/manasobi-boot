package io.manasobi.core.domain.sample.child;

import io.manasobi.core.base.model.SimpleJpaModel;
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
@Table(name = "CHILD_SAMPLE")
public class ChildSample extends SimpleJpaModel<String> {

	@Id
	@Column(name = "SAMPLE_KEY")
	private String key;

	@Column(name = "SAMPLE_PARENT_KEY")
	private String parentKey;

	@Column(name = "SAMPLE_VALUE")
	private String value;

	@Column(name = "ETC1")
	private String etc1;

	@Column(name = "ETC2")
	private String etc2;

	@Column(name = "ETC3")
	private String etc3;

	@Override
	public String getId() {
		return key;
	}
}

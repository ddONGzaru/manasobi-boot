package io.manasobi.core.model.extract.template.file;

import io.manasobi.utils.EncDecUtils;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor(staticName = "of")
public class VOTemplateCode implements TemplateCode {

	@NonNull
	private String code;

	@NonNull
	private String name;

	@Override
	public String code() {
		return code;
	}

	@Override
	public String name() {
		return name;
	}

	@Override
	public String encodedCode() {
		return EncDecUtils.encode(code);
	}
}

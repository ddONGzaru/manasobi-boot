package io.manasobi.core.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor(staticName = "of")
public class ApiError {

	@JsonProperty("message")
	@NonNull
	private String message;

	@JsonProperty("requiredKey")
	private String requiredKey;

}

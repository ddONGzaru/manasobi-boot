package io.manasobi.core.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.manasobi.core.code.ApiStatus;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.StringUtils;


@Data
@NoArgsConstructor
public class ApiResponse {

    @JsonProperty("status")
    private int status;

    @JsonProperty("error")
    private ApiError error;

    @JsonProperty("message")
    private String message;

    @JsonProperty("redirect")
    private String redirect;

    public ApiResponse(ApiStatus apiStatus, String message, String errorMessage) {
        this.status = apiStatus.getCode();
        this.message = message;

        if (!StringUtils.isEmpty(errorMessage)) {
            this.error = ApiError.of(errorMessage);
        }
    }

    public static ApiResponse of(ApiStatus apiStatus, String message) {
        return new ApiResponse(apiStatus, message, null);
    }

    public static ApiResponse error(ApiStatus apiStatus, String errorMessage) {
        return new ApiResponse(apiStatus, "", errorMessage);
    }

    public static ApiResponse redirect(String redirect) {
        ApiResponse apiResponse = new ApiResponse();
        apiResponse.setRedirect(redirect);
        apiResponse.setStatus(ApiStatus.REDIRECT.getCode());
        apiResponse.setMessage("redirect");
        return apiResponse;
    }
}

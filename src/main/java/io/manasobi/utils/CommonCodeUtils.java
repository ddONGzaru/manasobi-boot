package io.manasobi.utils;

import io.manasobi.core.code.Types;
import io.manasobi.core.context.AppContextManager;
import io.manasobi.core.domain.code.CommonCode;
import io.manasobi.core.domain.code.CommonCodeService;
import io.manasobi.core.parameter.RequestParams;
import org.apache.commons.lang3.StringUtils;

import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.*;

public class CommonCodeUtils {

    private static List<CommonCode> commonCodes;

    public static List<CommonCode> get(String groupCd) {

        if (commonCodes != null) {
            return commonCodes;
        }

        RequestParams<CommonCode> requestParams = new RequestParams<>(CommonCode.class);
        requestParams.put("groupCd", groupCd);
        requestParams.put("useYn", Types.Used.YES.getLabel());

        return getService().get(requestParams);
    }

    public static String getCode(String groupCd, String name) {

        List<CommonCode> commonCodes = get(groupCd);

        CommonCode commonCode = commonCodes.stream()
                                           .filter(e -> e.getName().equals(name))
                                           .findFirst().get();

        if (StringUtils.isEmpty(commonCode.getCode())) {
            commonCodes = get(groupCd);

            commonCode = commonCodes.stream()
                                    .filter(e -> e.getName().equals(name))
                                    .findFirst().get();
        }

        return commonCode.getCode();
    }

    public static String getName(String groupCd, String code) {

        List<CommonCode> commonCodes = get(groupCd);

        CommonCode commonCode = commonCodes.stream()
                                           .filter(e -> e.getCode().equals(code.trim()))
                                           .findFirst().get();

        if (StringUtils.isEmpty(commonCode.getName())) {
            commonCodes = get(groupCd);

            commonCode = commonCodes.stream()
                                    .filter(e -> e.getCode().equals(code.trim()))
                                    .findFirst().get();
        }

        return commonCode.getName();
    }

    public static Map<String, List<CommonCode>> getAllByMap() {
        RequestParams<CommonCode> requestParams = new RequestParams<>(CommonCode.class);
        requestParams.put("useYn", Types.Used.YES.getLabel());
        List<CommonCode> commonCodes = getService().get(requestParams);

        Map<String, List<CommonCode>> commonCodeMap = commonCodes.stream().collect(groupingBy(CommonCode::getGroupCd));

        return commonCodeMap;
    }

    public static String getAllByJson() {
        return JsonUtils.toJson(getAllByMap());
    }


    public static CommonCodeService getService() {
        return AppContextManager.getBean(CommonCodeService.class);
    }
}

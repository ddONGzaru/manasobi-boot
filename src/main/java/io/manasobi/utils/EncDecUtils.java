
package io.manasobi.utils;


import lombok.experimental.UtilityClass;
import lombok.extern.slf4j.Slf4j;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

@Slf4j
@UtilityClass
public class EncDecUtils {

    public static String encode(String s) {

        if (StringUtils.isNotEmpty(s)) {
            try {
                return URLEncoder.encode(s, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                log.error("EncDecUtils-encode :: {}", e.getMessage());
            }
        }
        return "";
    }

    public static String decode(String s) {

        if (StringUtils.isNotEmpty(s)) {
            try {
                return URLDecoder.decode(s, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                log.error("EncDecUtils-decode :: {}", e.getMessage());
            }
        }
        return "";
    }

    public static String encodeDownloadFileName(String s) {

        try {
            return URLEncoder.encode(s, "UTF-8").replaceAll("\\+", "%20");
        } catch (Exception e) {
            log.error("EncDecUtils-decode :: {}", e.getMessage());
        }
        return "";
    }
}

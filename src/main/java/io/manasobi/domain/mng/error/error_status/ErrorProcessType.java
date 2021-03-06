package io.manasobi.domain.mng.error.error_status;

import lombok.Getter;

/**
 * Created by tw.jang on 2017-02-16.
 */
@Getter
public enum ErrorProcessType {

    장애1차("1"), 장애2차("2"), 현금부족예보("3"), 현금부족("4"), 자체출동("5");

    private String code;

    ErrorProcessType(String code) {
        this.code = code;
    }
}



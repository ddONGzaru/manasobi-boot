package io.manasobi.core.base;


import io.manasobi.core.domain.code.CommonCode;
import io.manasobi.utils.FilterUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public class BaseFilterService<T> {

    public boolean recursionListFilter(List<T> lists, String searchParams) {
        return FilterUtils.recursionListFilter(lists, searchParams);
    }

    public List<T> filter(List<T> lists, String searchParams) {
        return FilterUtils.filter(lists, searchParams);
    }

    public Page<T> filter(List<T> lists, Pageable pageable, String searchParams) {
        return FilterUtils.filterWithPaging(lists, pageable, searchParams, CommonCode.class);
    }

    public Page<T> filter(List<T> lists, Pageable pageable, String searchParams, Class clazz) {
        return FilterUtils.filterWithPaging(lists, pageable, searchParams, clazz);
    }

    public Page<T> filter(List<T> lists, Pageable pageable) {
        return FilterUtils.filterWithPaging(lists, pageable);
    }
}

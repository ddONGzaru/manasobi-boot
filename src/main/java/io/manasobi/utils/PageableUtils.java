package io.manasobi.utils;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;

/**
 * Created by tw.jang on 2017-02-20.
 */
public class PageableUtils {

    public static Pageable buildSort(Pageable pageable, List<Sort.Order> orders) {

        return pageable.getSort() != null ? pageable :
                new PageRequest(pageable.getPageNumber(), pageable.getPageSize(), new Sort(orders));
    }
}

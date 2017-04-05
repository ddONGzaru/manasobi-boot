package io.manasobi.utils;

import io.manasobi.core.annotations.Searchable;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.reflect.FieldUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;

import static java.util.stream.Collectors.*;

@Slf4j
public class FilterUtils {

    private FilterUtils() {
    }

    public static <T> boolean recursionListFilter(List<T> lists, String searchParams) {
        if (lists == null) {
            return false;
        }

        for (T t : lists) {
            if (t instanceof String) {
                String fieldValue = (String) t;
                if (StringUtils.containsIgnoreCase(fieldValue, searchParams)) return true;
            } else {
                try {
                    List<Field> searchableFields = FieldUtils.getAllFieldsList(t.getClass());

                    for (Field field : searchableFields) {
                        field.setAccessible(true);

                        Object fieldValue = field.get(t);

                        if (field.getType() == List.class) {
                            boolean find = recursionListFilter(((List) fieldValue), searchParams);
                            if (find) {
                                return true;
                            }
                        } else {
                            if (fieldValue != null) {
                                String value = fieldValue.toString();

                                if (value.contains(searchParams)) {
                                    return true;
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return false;
    }

    public static <T> List<T> filter(List<T> lists, String searchParams) {
        if (StringUtils.isEmpty(searchParams)) {
            return lists;
        }

        return lists.stream()
                .filter(t -> {
                    try {
                        Annotation annotation = t.getClass().getAnnotation(Searchable.class);
                        List<Field> searchableFields = FieldUtils.getAllFieldsList(t.getClass());

                        for (Field field : searchableFields) {

                            if (annotation != null) {
                                if (field.getAnnotation(Searchable.class) == null) continue;
                            }

                            field.setAccessible(true);
                            Object fieldValue = field.get(t);

                            if (field.getType() == List.class) {
                                boolean find = recursionListFilter((List) fieldValue, searchParams);

                                if (find) {
                                    return true;
                                }
                            } else {
                                if (fieldValue != null) {
                                    String value = fieldValue.toString();
                                    if (StringUtils.containsIgnoreCase(value, searchParams)) return true;
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    return false;
                })
                .collect(toList());
    }

    public static <T> Page<T> filterWithPaging(List<T> lists, Pageable pageable, String searchParams, Class clazz) {
        searchParams = EncDecUtils.decode(searchParams);

        List filteredList;
        List<T> pagedList = new LinkedList<>();

        if (StringUtils.isEmpty(searchParams)) {
            filteredList = new LinkedList<>(lists);
        } else {
            filteredList = new LinkedList<>();

            String[] asSearchParams = searchParams.split(",");

            for (String searchParam : asSearchParams) {
                List<T> filterList = filter(lists, searchParam);

                //System.out.println("filterList :: " + filterList);

                filterList.stream()
                                .map(t -> clazz.cast (t))
                        /*.peek(t -> {
                                       System.out.println("filteredList :: " + filteredList);
                                       System.out.println("Common Code :: " + t);
                                   })*/

                                   .filter(t -> !filteredList.contains(t))
                                   .forEach(filteredList::add);
            }
        }

        int start = pageable.getPageNumber() * pageable.getPageSize();
        int end = start + pageable.getPageSize();

        if (end > filteredList.size()) {
            end = filteredList.size();
        }

        if (start < end) {
            pagedList = filteredList.subList(start, end);
        }

        return new PageImpl<>(pagedList, pageable, filteredList.size());
    }

    public static <T> Page<T> filterWithPaging(List<T> lists, Pageable pageable) {

        int total = lists.size();

        int start = pageable.getPageNumber() * pageable.getPageSize();
        int end = start + pageable.getPageSize();

        if (end > lists.size()) {
            end = lists.size();
        }

        if (start < end) {
            lists = lists.subList(start, end);
        }

        return new PageImpl<>(lists, pageable, total);
    }
}

package io.manasobi.utils;

import io.manasobi.core.context.AppContextManager;
import lombok.extern.slf4j.Slf4j;
import ma.glasnost.orika.BoundMapperFacade;
import ma.glasnost.orika.Mapper;
import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.converter.builtin.PassThroughConverter;
import ma.glasnost.orika.impl.DefaultMapperFactory;
import ma.glasnost.orika.metadata.Type;
import ma.glasnost.orika.metadata.TypeBuilder;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Slf4j
public class ModelMapperUtils {

    public static <Src, Dest> Dest map(Src src, Class<Dest> destClass) {
        return (Dest) getMapper(src, destClass).map(src);
    }

    public static <Src, Dest> Dest map(Src src, Class<Dest> destClass, String mapper) {
        return (Dest) getMapper(src, destClass, mapper).map(src);
    }

    private static <Src, Dest> BoundMapperFacade getMapper(Src src, Class<Dest> destClass) {

        MapperFactory mapperFactory = AppContextManager.getBean(MapperFactory.class);

        mapperFactory.classMap(src.getClass(), destClass)
                .byDefault()
                .register();

        /*mapperFactory.getConverterFactory()
                .registerConverter(new PassThroughConverter(LocalDateTime.class, LocalDate.class, LocalTime.class));*/

        return mapperFactory.getMapperFacade(src.getClass(), destClass);
    }

    private static <Src, Dest> BoundMapperFacade getMapper(Src src, Class<Dest> destClass, String mapper) {

        MapperFactory mapperFactory = AppContextManager.getBean(MapperFactory.class);

        mapperFactory.classMap(src.getClass(), destClass)
                .byDefault()
                .customize(AppContextManager.getBean(mapper + "ModelMapper", Mapper.class))
                .register();

        /*mapperFactory.getConverterFactory()
                .registerConverter(new PassThroughConverter(LocalDateTime.class, LocalDate.class, LocalTime.class));*/

        return mapperFactory.getMapperFacade(src.getClass(), destClass);
    }

    public static <T> List<T> mapList(List<?> listSources, Class<T> destinationClass) {

        List<T> resultList = new ArrayList<>();

        if (ArrayUtils.isNotEmpty(listSources)) {
            for (Object source : listSources) {
                resultList.add(map(source, destinationClass));
            }
        }

        return resultList;
    }

}


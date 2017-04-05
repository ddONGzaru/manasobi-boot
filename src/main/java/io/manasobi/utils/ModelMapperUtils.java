package io.manasobi.utils;

import io.manasobi.core.context.AppContextManager;
import lombok.extern.slf4j.Slf4j;
import ma.glasnost.orika.BoundMapperFacade;
import ma.glasnost.orika.Mapper;
import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.metadata.Type;
import ma.glasnost.orika.metadata.TypeBuilder;
import org.modelmapper.MappingException;
import org.modelmapper.ModelMapper;

import java.util.ArrayList;
import java.util.List;

@Slf4j
public class ModelMapperUtils {

    public static <T> T map(Object source, Class<T> destinationClass) throws MappingException {
        return getModelMapper().map(source, destinationClass);
    }

    public static <T> List<T> mapList(List<?> listSources, Class<T> destinationClass) {
        List<T> resultList = new ArrayList<>();

        if (!ArrayUtils.isEmpty(listSources)) {
            for (Object source : listSources) {
                resultList.add(map(source, destinationClass));
            }
        }

        return resultList;
    }

    public static ModelMapper getModelMapper() {
        return AppContextManager.getBean(ModelMapper.class);
    }

    public static BoundMapperFacade getMapper(String beanName, String packageName) {

        MapperFactory mapperFactory = AppContextManager.getBean(MapperFactory.class);

        Class src, dest;

        try {
            src = Class.forName(packageName + "." + beanName + "RecvMsg");
            dest = Class.forName(packageName + "." + beanName);
        } catch (ClassNotFoundException e) {
            return null;
        }

        String modelMapperName = beanName.substring(0, 1).toLowerCase() + beanName.substring(1) + "ModelMapper";

        mapperFactory.classMap(src, dest).byDefault()
                .customize(AppContextManager.getBean(modelMapperName, Mapper.class)).register();

        return mapperFactory.getMapperFacade(src, dest);
    }

    public static <Src, Dest> Dest map(Src src, Class<Dest> destClass, String mapperName) {

        Type<Src> srcType = new TypeBuilder<Src>() {}.build();
        Type<Dest> destType = new TypeBuilder<Dest>() {}.build();

        MapperFactory mapperFactory = AppContextManager.getBean(MapperFactory.class);

        mapperFactory.classMap(srcType, destClass).byDefault()
                .customize(AppContextManager.getBean(mapperName, Mapper.class)).register();

        return mapperFactory.getMapperFacade(srcType, destType).map(src);
    }

}


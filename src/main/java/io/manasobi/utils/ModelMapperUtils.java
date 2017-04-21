package io.manasobi.utils;

import io.manasobi.core.context.AppContextManager;
import io.manasobi.core.model.ModelMapperConverter;
import lombok.extern.slf4j.Slf4j;
import ma.glasnost.orika.BoundMapperFacade;
import ma.glasnost.orika.Mapper;
import ma.glasnost.orika.MapperFactory;
import org.modelmapper.MappingException;
import org.modelmapper.ModelMapper;

@Slf4j
public class ModelMapperUtils {

    public static <T> T map(Object source, Class<T> destinationClass) throws MappingException {
        log.debug("[SEND_MSG][{}] {}", source.getClass().getSimpleName().replace("Recv", "Send"), source);
        return getModelMapper().map(source, destinationClass);
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

        mapperFactory.getConverterFactory().registerConverter("trimConverter", new ModelMapperConverter.TrimConverter());

        return mapperFactory.getMapperFacade(src, dest);
    }

}


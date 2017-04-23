package io.manasobi.utils;

import io.manasobi.core.context.AppContextManager;
import lombok.experimental.UtilityClass;
import lombok.extern.slf4j.Slf4j;
import ma.glasnost.orika.Mapper;
import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.impl.DefaultMapperFactory;
import ma.glasnost.orika.metadata.Type;
import ma.glasnost.orika.metadata.TypeBuilder;
import org.modelmapper.Conditions;
import org.modelmapper.MappingException;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;

/**
 * Created by manasobi on 2017-04-23.
 */
@Slf4j
@UtilityClass
public class MapperUtils {

    /*private static ObjectMapper mapper;

    private static ObjectMapper getInstance() {

        mapper = new ObjectMapper();

        mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        mapper.configure(MapperFeature.AUTO_DETECT_GETTERS, true);
        mapper.configure(MapperFeature.AUTO_DETECT_IS_GETTERS, true);
        mapper.configure(JsonParser.Feature.ALLOW_SINGLE_QUOTES, true);
        mapper.configure(MapperFeature.DEFAULT_VIEW_INCLUSION, false);
        mapper.registerModule(new JavaTimeModule());

        return mapper;
    }

    private static ObjectMapper getObjectMapper() {
        return mapper == null ? getInstance() : mapper;
    }*/

    private static ModelMapper modelMapper;

    private static ModelMapper newModelMapperInstance() {

        ModelMapper modelMapper = new ModelMapper();

        modelMapper.getConfiguration().setFieldMatchingEnabled(true);
        modelMapper.getConfiguration().setPropertyCondition(Conditions.isNotNull());
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);

        return modelMapper;
    }

    public static ModelMapper getModelMapper() {
        return modelMapper == null ? newModelMapperInstance() : modelMapper;
    }

    public static <T> T map(Object source, Class<T> destinationClass) throws MappingException {

        return getModelMapper().map(source, destinationClass);
    }

    private static MapperFactory mapperFactory;

    private static MapperFactory newMapperFactoryInstance() {
        return new DefaultMapperFactory.Builder().build();
    }

    public static MapperFactory getMapperFactory() {
        return mapperFactory == null ? newMapperFactoryInstance() : mapperFactory;
    }

    public static <Src, Dest> Dest map(Src src, Class<Dest> destClass, String mapperName) {

        Type<Src> srcType = new TypeBuilder<Src>() {}.build();
        Type<Dest> destType = new TypeBuilder<Dest>() {}.build();

        MapperFactory mapperFactory = getMapperFactory();

        mapperFactory.classMap(srcType, destClass).byDefault().mapNulls(true)
                .customize(AppContextManager.getBean(mapperName, Mapper.class)).register();

        return mapperFactory.getMapperFacade(srcType, destType).map(src);
    }

    /*public static <Src, Dest> Dest map(Src src, Class<Dest> destClass) {

        Type<Src> srcType = new TypeBuilder<Src>() {}.build();
        Type<Dest> destType = new TypeBuilder<Dest>() {}.build();

        MapperFactory mapperFactory = AppContextManager.getBean(MapperFactory.class);

        mapperFactory.classMap(srcType, destClass).byDefault().register();

        return mapperFactory.getMapperFacade(srcType, destType).map(src);
    }*/

}

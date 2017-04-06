package io.manasobi.config;

import ch.qos.logback.classic.LoggerContext;
import io.manasobi.core.code.PackageManager;
import io.manasobi.core.db.dbcp.DataSourceFactory;
import io.manasobi.core.db.monitor.SqlMonitoringService;
import io.manasobi.core.domain.log.BaseErrorLogService;
import io.manasobi.core.logging.LogbackAppender;
import io.manasobi.core.mybatis.MyBatisMapper;
import lombok.extern.slf4j.Slf4j;
import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.impl.DefaultMapperFactory;
import org.apache.ibatis.mapping.VendorDatabaseIdProvider;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSessionFactory;
import org.modelmapper.Conditions;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.mybatis.spring.transaction.SpringManagedTransactionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.*;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import javax.inject.Named;
import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import java.util.Properties;

@Slf4j
@Configuration
@EnableTransactionManagement(proxyTargetClass = true, mode = AdviceMode.PROXY)
@EnableJpaRepositories(basePackages = PackageManager.BASE)
@EnableAspectJAutoProxy(proxyTargetClass = true)
@MapperScan(basePackages = PackageManager.DOMAIN, markerInterface = MyBatisMapper.class)
public class AppConfig implements ApplicationContextAware {

    private ApplicationContext context;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.context = applicationContext;
    }

    @Bean
    public PropsConfig propsConfig() { return new PropsConfig(); }

    @Bean
    @Primary
    public DataSource dataSource(@Named(value = "propsConfig") PropsConfig propsConfig) throws Exception {
        return DataSourceFactory.create(propsConfig.getDataSourceConfig());
    }

    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource, PropsConfig propsConfig) {

        LocalContainerEntityManagerFactoryBean entityManagerFactory = new LocalContainerEntityManagerFactoryBean();
        entityManagerFactory.setDataSource(dataSource);
        entityManagerFactory.setPackagesToScan(PackageManager.BASE);

        PropsConfig.DataSourceConfig.HibernateConfig hibernateConfig = propsConfig.getDataSourceConfig().getHibernateConfig();
        entityManagerFactory.setJpaVendorAdapter(hibernateConfig.getHibernateJpaVendorAdapter());
        entityManagerFactory.setJpaProperties(hibernateConfig.getAdditionalProperties());

        return entityManagerFactory;
    }

    @Bean
    public SqlSessionFactory sqlSessionFactory(SpringManagedTransactionFactory springManagedTransactionFactory, DataSource dataSource, PropsConfig propsConfig) throws Exception {

        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        //sqlSessionFactoryBean.setTypeAliasesPackage(PackageManager.DOMAIN);
        sqlSessionFactoryBean.setTypeHandlers(propsConfig.getMyBatisTypeHandlers());
        sqlSessionFactoryBean.setTransactionFactory(springManagedTransactionFactory);
        //sqlSessionFactoryBean.setConfiguration(mybatisConfig());
        sqlSessionFactoryBean.setMapperLocations(context.getResources("classpath:mybatis/mapper/**/*.xml"));
        sqlSessionFactoryBean.setConfigLocation(context.getResource("classpath:mybatis/mybatis-config.xml"));
        sqlSessionFactoryBean.setDatabaseIdProvider(databaseIdProvider());

        return sqlSessionFactoryBean.getObject();
    }

    private org.apache.ibatis.session.Configuration mybatisConfig() {

        org.apache.ibatis.session.Configuration config = new org.apache.ibatis.session.Configuration();

        config.setCacheEnabled(false);
        config.setUseGeneratedKeys(true);
        config.setDefaultExecutorType(ExecutorType.REUSE);
        config.setAggressiveLazyLoading(false);
        config.setMapUnderscoreToCamelCase(true);

        return config;
    }

    private VendorDatabaseIdProvider databaseIdProvider() {

        Properties props = new Properties();

        props.setProperty("Oracle", "oracle");
        props.setProperty("MySQL", "mysql");
        props.setProperty("PostgreSQL", "postgresql");

        VendorDatabaseIdProvider databaseIdProvider = new VendorDatabaseIdProvider();
        databaseIdProvider.setProperties(props);

        return databaseIdProvider;
    }

    @Bean
    public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
        return new PersistenceExceptionTranslationPostProcessor();
    }

    @Bean
    public SpringManagedTransactionFactory managedTransactionFactory() {
        return new SpringManagedTransactionFactory();
    }

    @Bean
    public PlatformTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) throws ClassNotFoundException {

        JpaTransactionManager jpaTransactionManager = new JpaTransactionManager();
        jpaTransactionManager.setEntityManagerFactory(entityManagerFactory);

        return jpaTransactionManager;
    }

    @Bean
    public static PropertySourcesPlaceholderConfigurer propertyPlaceholderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }

    @Bean
    public ModelMapper modelMapper() {

        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration().setFieldMatchingEnabled(true);
        modelMapper.getConfiguration().setPropertyCondition(Conditions.isNotNull());
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);

        return modelMapper;
    }

    @Bean
    public MapperFactory modelFactory() {
        return new DefaultMapperFactory.Builder().build();
    }

    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder(11);
    }

    @Bean
    public SqlMonitoringService sqlMonitoringService(DataSource dataSource) throws Exception {
        return new SqlMonitoringService(dataSource);
    }

    @Bean
    public LocalValidatorFactoryBean validatorFactoryBean() {
        return new LocalValidatorFactoryBean();
    }

    @Bean
    public LogbackAppender logbackAppender(BaseErrorLogService errorLogService, PropsConfig propsConfig) throws Exception {

        LoggerContext loggerContext = (LoggerContext) LoggerFactory.getILoggerFactory();

        LogbackAppender logbackAppender = new LogbackAppender(errorLogService, propsConfig);

        logbackAppender.setContext(loggerContext);
        logbackAppender.setName("logbackAppender");
        logbackAppender.start();
        loggerContext.getLogger("ROOT").addAppender(logbackAppender);

        return logbackAppender;
    }


}

    /*private org.apache.ibatis.session.Configuration mybatisConfig() {

        org.apache.ibatis.session.Configuration config = new org.apache.ibatis.session.Configuration();

        config.setCacheEnabled(false);
        config.setUseGeneratedKeys(true);
        config.setDefaultExecutorType(ExecutorType.REUSE);
        config.setAggressiveLazyLoading(false);
        config.setMapUnderscoreToCamelCase(true);

        return config;
    }*/

/*@Bean
    public String databaseId() {

        try {

            Connection conn =  dataSource().getConnection();

            DatabaseMetaData databaseMetaData = conn.getMetaData();

            String databaseId = sqlSessionFactory().getConfiguration().getDatabaseId();
            String productName = databaseMetaData.getDatabaseProductName();

            conn.close();

            log.info("[Database ProductName] {}", productName);
            log.info("[Database ID] {}", databaseId);

            return databaseId;

        } catch (Exception e) {
            log.error("[printDatabaseId] {}", e.getMessage());
            return null;
        }
    }*/

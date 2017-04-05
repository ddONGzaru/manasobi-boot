package io.manasobi.core.context;

import org.springframework.beans.factory.config.YamlPropertiesFactoryBean;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.PropertiesPropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

/**
 * Created by manasobi on 2017-01-07.
 */
@Component
public class AppContextEventListener {

    @EventListener
    public void handleContextRefresh(ContextRefreshedEvent event) {

        YamlPropertiesFactoryBean yaml = new YamlPropertiesFactoryBean();
        yaml.setResources(new ClassPathResource("app-config.yml"));

        ConfigurableEnvironment environment = (ConfigurableEnvironment) event.getApplicationContext().getEnvironment();

        environment.getPropertySources()
                   .addFirst(new PropertiesPropertySource("app-config", yaml.getObject()));
    }

}

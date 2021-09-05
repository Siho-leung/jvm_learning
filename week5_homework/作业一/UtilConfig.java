package io.siho.spring;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 第三种方式，通过配置类
 */
@Configuration
public class UtilConfig {

    @Bean
    public Cat getCat() {
        return new Cat();
    }

}

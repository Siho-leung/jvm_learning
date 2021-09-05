package com.siho.hikari;

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class HikariConfig {

    @Bean
    public DataSource dataSource(){
        com.zaxxer.hikari.HikariConfig config = new com.zaxxer.hikari.HikariConfig("/application.properties");
        HikariDataSource dataSource = new HikariDataSource(config);
        return dataSource;
    }

}

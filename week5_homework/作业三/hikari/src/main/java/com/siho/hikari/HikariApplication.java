package com.siho.hikari;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.siho.hikari")
public class HikariApplication {

	public static void main(String[] args) {
		SpringApplication.run(HikariApplication.class, args);

	}

}

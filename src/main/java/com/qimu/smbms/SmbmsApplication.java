package com.qimu.smbms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * @author qimu
 */
@SpringBootApplication
@EnableScheduling
public class SmbmsApplication {
    public static void main(String[] args) {
        SpringApplication.run(SmbmsApplication.class, args);
    }

}

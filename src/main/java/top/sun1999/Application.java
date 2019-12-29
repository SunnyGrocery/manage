package top.sun1999;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import top.sun1999.interceptor.ROOT;

import java.util.UUID;

@SpringBootApplication
public class Application {


    public static void main(String[] args) throws ClassNotFoundException {
        SpringApplication.run(Application.class, args);
    }

}

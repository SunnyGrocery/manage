package top.sun1999.model;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.UUID;

/**
 * Created by SunnyGrocery on 2019/12/29 17:13
 */
@Component
@Getter
public class Root {
    public final static String COOKIE_ID;
    public final static String COOKIE_VALUE;
    @Value("${configure.name}")
    public String rootName;
    @Value("${configure.password}")
    public String rootPassword;

    static {
        COOKIE_ID = UUID.randomUUID().toString();
        COOKIE_VALUE = UUID.randomUUID().toString();
    }
}

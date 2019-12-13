package top.sun1999.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import top.sun1999.model.ProvRoad;

/**
 * Created by SunnyGrocery on 2019/12/13 11:35
 */
@SpringBootTest
class ProvRoadMapperTest {
    @Autowired
    ProvRoadMapper provRoadMapper;

    @Test
    void selectById() {

    }

    @Test
    void selectAll() {
    }

    @Test
    void updateById() {
    }

    @Test
    void insert() {
        ProvRoad provRoad = new ProvRoad(null, "testRef", "testName", "testOrigin", "testDest", 20);
        provRoadMapper.insert(provRoad);
        System.err.println(provRoad);
    }
};
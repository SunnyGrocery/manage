package top.sun1999.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import top.sun1999.model.ProvRoad;

import java.util.Random;

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
        Random random = new Random();

        for (int i = 1; i <= 200; i++) {
            ProvRoad provRoad = new ProvRoad(null, "testRef" + i, "testName" + i, "testOrigin" + i, "testDest" + i, random.nextInt(300));
            provRoadMapper.insert(provRoad);
        }
    }

    @Test
    void de() {

    }
};
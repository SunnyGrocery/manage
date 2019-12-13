package top.sun1999.service.impl;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import top.sun1999.model.ProvRoad;

import java.util.List;
import java.util.Random;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by SunnyGrocery on 2019/12/13 15:29
 */
@SpringBootTest
class ProvRoadServiceImplTest {

    @Autowired
    ProvRoadServiceImpl provRoadService;

    @Test
    void add() {
        Random random = new Random();
        for (int i = 0; i < 100; i++) {
            int i1 = random.nextInt(300);
            provRoadService.add(new ProvRoad(null, "ref" + i1, "name" + i1, "o" + i1, "d" + i1, 1));
        }
    }

    @Test
    void remove() {
        provRoadService.remove(11);
    }

    @Test
    void findAllPage() {
        List<ProvRoad> allPage = provRoadService.findAllPage(1, 10);
        for (ProvRoad p : allPage) {
            System.out.println(p);
        }
    }

    @Test
    void findByName() {
    }

    @Test
    void findPageByPlace() {
    }

    @Test
    void modify() {
    }
}
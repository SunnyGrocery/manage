package top.sun1999.service;

import org.springframework.stereotype.Service;
import top.sun1999.model.ProvRoad;

import java.util.List;

/**
 * Created by SunnyGrocery on 2019/12/13 12:34
 */
public interface ProvRoadService {

    void add(ProvRoad provRoad);

    void remove(int id);

    List<ProvRoad> findAllPage(int pageNum, int pageSize);

    List<ProvRoad> findPageByProperty(String property, String word, int pageNum, int pageSize);

    void modify(ProvRoad provRoad);
}

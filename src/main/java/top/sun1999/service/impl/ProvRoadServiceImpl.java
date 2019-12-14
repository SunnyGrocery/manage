package top.sun1999.service.impl;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.sun1999.mapper.ProvRoadMapper;
import top.sun1999.model.ProvRoad;
import top.sun1999.service.ProvRoadService;

import java.util.List;

/**
 * Created by SunnyGrocery on 2019/12/13 12:45
 */
@Service
public class ProvRoadServiceImpl implements ProvRoadService {
    @Autowired
    ProvRoadMapper provRoadMapper;

    @Transactional
    @Override
    public void add(ProvRoad provRoad) {
        provRoadMapper.insert(provRoad);
    }

    @Transactional
    @Override
    public void remove(int id) {
        provRoadMapper.deleteById(id);
    }

    @Transactional
    @Override
    public List<ProvRoad> findAllPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return provRoadMapper.selectAll();
    }

    @Transactional
    @Override
    public List<ProvRoad> findPageByProperty(String property, String word, int pageNum, int pageSize) {
        List<ProvRoad> provRoadList;
        PageHelper.startPage(pageNum, pageSize);
        if ("ref".equals(property)) {
            provRoadList = provRoadMapper.selectLikeRef(word);
        } else if ("name".equals(property)) {
            provRoadList = provRoadMapper.selectLikeName(word);
        } else if ("origin".equals(property)) {
            provRoadList = provRoadMapper.selectLikeOrigin(word);
        } else if ("destination".equals(property)) {
            provRoadList = provRoadMapper.selectLikeDestination(word);
        } else {
            return null;
        }
        return provRoadList;
    }
    @Override
    @Transactional
    public void modify(ProvRoad provRoad) {
        provRoadMapper.update(provRoad);
    }
}

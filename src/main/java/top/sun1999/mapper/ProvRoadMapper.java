package top.sun1999.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.sun1999.model.ProvRoad;

import java.util.List;

/**
 * Created by SunnyGrocery on 2019/12/13 11:32
 */
@Repository
@Mapper
public interface ProvRoadMapper {

    void insert(ProvRoad provRoad);

    void deleteById(int id);

    void update(ProvRoad provRoad);

    ProvRoad selectById(int id);

    List<ProvRoad> selectAll();

    List<ProvRoad> selectLikeRef(String ref);

    List<ProvRoad> selectLikeName(String name);

    List<ProvRoad> selectLikeOrigin(String origin);

    List<ProvRoad> selectLikeDestination(String destination);

}

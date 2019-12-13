package top.sun1999.model;

import lombok.Data;

/**
 * Created by SunnyGrocery on 2019/12/13 10:50
 */
@Data
public class ProvRoad {
    private Integer id;
    private String ref;
    private String name;
    private String origin;
    private String destination;
    private Integer distance;

    public ProvRoad(Integer id, String ref, String name, String origin, String destination, Integer distance) {
        this.id = id;
        this.ref = ref;
        this.name = name;
        this.origin = origin;
        this.destination = destination;
        this.distance = distance;
    }
}

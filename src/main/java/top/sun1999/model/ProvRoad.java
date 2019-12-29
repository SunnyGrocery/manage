package top.sun1999.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by SunnyGrocery on 2019/12/13 10:50
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProvRoad {
    private Integer id;
    private String ref;
    private String name;
    private String origin;
    private String destination;
    private Integer distance;
}

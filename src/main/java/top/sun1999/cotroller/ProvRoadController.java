package top.sun1999.cotroller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import top.sun1999.dto.PageInfoDTO;
import top.sun1999.model.ProvRoad;
import top.sun1999.service.ProvRoadService;

import java.util.List;

/**
 * Created by SunnyGrocery on 2019/12/13 14:50
 */
@Controller
public class ProvRoadController {
    @Autowired
    ProvRoadService provRoadService;

    @GetMapping(value = {"/info", "/info/{page}"})
    public String index(@PathVariable(value = "page", required = false) Integer pageNum,
                        Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }
        List<ProvRoad> provRoadList = provRoadService.findAllPage(pageNum, 15);
        PageInfoDTO pageInfoDTO = PageInfoDTO.of(PageInfo.of(provRoadList));
        model.addAttribute("provRoadList", provRoadList);
        model.addAttribute("pageInfo", pageInfoDTO);
        model.addAttribute("target", "info");
        return "info";
    }
}

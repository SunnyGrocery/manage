package top.sun1999.cotroller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import top.sun1999.dto.PageInfoDTO;
import top.sun1999.model.ProvRoad;
import top.sun1999.service.ProvRoadService;

import java.util.List;

/**
 * Created by SunnyGrocery on 2019/12/13 21:15
 */
@Controller
public class SearchController {
    @Autowired
    ProvRoadService provRoadService;

    @GetMapping({"/search/{target}", "/search/{target}/{page}"})
    public String search(@PathVariable(value = "target") String target,
                         @PathVariable(value = "page", required = false) Integer pageNum,
                         @RequestParam(value = "word") String word,
                         Model model) {
        if (pageNum != null) {
            pageNum = 1;
        }
        List<ProvRoad> provRoadList = provRoadService.findPageByProperty(target, word, pageNum, 15);
        PageInfoDTO pageInfoDTO = PageInfoDTO.of(PageInfo.of(provRoadList));
        model.addAttribute("provRoadList", provRoadList);
        model.addAttribute("pageInfo", pageInfoDTO);
        model.addAttribute("target", target);
        return "search";
    }

    @PostMapping("search/{target}")
    public String doSearch(@PathVariable(value = "target") String target,
                           @RequestParam(value = "word") String word) {
        if (word == null || "".equals(word.trim())) {
            return "redirect:/info/";
        }
        String[] targets = {"ref", "name", "origin", "destination", "distance"};
        boolean isRightTarget = false;
        for (String s : targets) {
            if (s.equals(target)) {
                isRightTarget = true;
                break;
            }
        }
        if (isRightTarget) {
            return "/search/" + target + "?word= " + word;
        } else {
            return "redirect:/info/";
        }
    }
}

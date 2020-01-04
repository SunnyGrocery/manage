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

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

/**
 * Created by SunnyGrocery on 2019/12/13 21:15
 */
@Controller
public class SearchController {
    @Autowired
    ProvRoadService provRoadService;

    /**
     * 通过property跳转到搜索页面
     *
     * @param property 搜索列名
     * @param model
     * @return
     */
    @GetMapping("/search/{property}")
    public String search(@PathVariable(value = "property") String property,
                         Model model) {
        if (!isRightProperty(property)) {
            return "redirect:/info/";
        }
        model.addAttribute("target", "search/" + property);
        return "search";
    }

    /**
     * 处理搜索页请求
     *
     * @param property 列
     * @param word     搜索字
     * @return
     */
    @PostMapping({"/search/{property}/{page}", "search/{property}"})
    public String doSearch(@PathVariable(value = "property") String property,
                           @RequestParam(value = "word") String word) throws UnsupportedEncodingException {
        if (!isRightProperty(property)) {
            return "redirect:/info/";
        }
        if (word == null || word.trim().equals("")) {
            return "redirect:/search/" + property;
        }
        return "redirect:/search_info/1?property=" + property + "&word=" + URLEncoder.encode(word, "UTF-8");
    }

    /**
     * 查询结果页面
     *
     * @param pageNum  页码
     * @param property 查询种类
     * @param word     查询信息
     * @return
     */
    @GetMapping("/search_info/{page}")
    public String searchInfo(@PathVariable(value = "page") Integer pageNum,
                             @RequestParam(value = "property") String property,
                             @RequestParam(value = "word") String word,
                             Model model) throws UnsupportedEncodingException {
        List<ProvRoad> provRoadList = provRoadService.findPageByProperty(property, word, pageNum, 14);
        PageInfoDTO pageInfoDTO = PageInfoDTO.of(PageInfo.of(provRoadList));
        model.addAttribute("provRoadList", provRoadList);
        model.addAttribute("pageInfo", pageInfoDTO);
        model.addAttribute("word", word);
        model.addAttribute("target", "search/" + property);
        model.addAttribute("pageTarget", "search_info/");
        model.addAttribute("endParam", "?property=" + property + "&word=" + URLEncoder.encode(word, "UTF-8"));
        return "search_info";
    }

    private static String[] properties = {"ref", "name", "origin", "destination", "distance"};

    /**
     * 验证列名参数是否正确
     *
     * @param property
     * @return
     */
    private static boolean isRightProperty(String property) {
        boolean isRightProperty = false;
        for (String s : properties) {
            if (s.equals(property)) {
                isRightProperty = true;
                break;
            }
        }
        return isRightProperty;
    }
}

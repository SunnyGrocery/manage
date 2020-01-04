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
import top.sun1999.model.Root;
import top.sun1999.model.ProvRoad;
import top.sun1999.service.ProvRoadService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by SunnyGrocery on 2019/12/13 14:50
 */
@Controller
public class ProvRoadController {
    @Autowired
    ProvRoadService provRoadService;
    @Autowired
    Root root;

    private static String[] operateFlags = {"delete", "modify", "add"};

    @GetMapping(value = "/login")
    public String login() {
        return "login";
    }

    @PostMapping(value = "/login")
    public String doLogin(@RequestParam(value = "name") String name,
                          @RequestParam(value = "password") String password,
                          HttpServletResponse response, Model model) {
        if (root.rootName.equals(name)) {
            if (root.rootPassword.equals(password)) {
                response.addCookie(new Cookie(Root.COOKIE_ID, Root.COOKIE_VALUE));

                return "redirect:/info";
            } else {
                model.addAttribute("errorMsg", "pwd");
            }
        } else {
            model.addAttribute("errorMsg", "name");
        }
        return "login";
    }

    @GetMapping(value = {"/", "/info", "/info/{page}"})
    public String index(@PathVariable(value = "page", required = false) Integer pageNum,
                        @RequestParam(value = "operateFlag", required = false) String operateFlag,
                        @RequestParam(value = "status", required = false) Boolean status,
                        Model model) {

        if (pageNum == null) {
            pageNum = 1;
        }
        List<ProvRoad> provRoadList = provRoadService.findAllPage(pageNum, 14);
        PageInfoDTO pageInfoDTO = PageInfoDTO.of(PageInfo.of(provRoadList));
        model.addAttribute("provRoadList", provRoadList);
        model.addAttribute("pageInfo", pageInfoDTO);
        model.addAttribute("target", "info");
        if (operateFlag != null) {
            for (String o : operateFlags) {
                if (o.equals(operateFlag)) {
                    model.addAttribute("operateFlag", operateFlag);
                    if (status != null) {
                        model.addAttribute("status", status);
                    }
                    break;
                }
            }
        }
        return "info";
    }

    @GetMapping(value = "/delete/{id}")
    public String delete(@PathVariable(value = "id") Integer id,
                         @RequestParam(value = "page", required = false) Integer page) {
        if (page == null || page < 1) {
            page = 1;
        }
        try {
            provRoadService.remove(id);
        } catch (RuntimeException e) {
            return "redirect:/info/" + page + "?operateFlag=delete&status=false";
        }
        return "redirect:/info/" + page + "?operateFlag=delete&status=true";
    }

    @PostMapping(value = "/modify")
    public String modify(ProvRoad provRoad,
                         @RequestParam(value = "page", required = false) Integer page) {
        System.err.println(provRoad);
        if (page == null || page < 1) {
            page = 1;
        }
        try {
            provRoadService.modify(provRoad);
        } catch (RuntimeException e) {
            return "redirect:/info/" + page + "?operateFlag=modify&status=false";
        }
        return "redirect:/info/" + page + "?operateFlag=modify&status=true";
    }

    @PostMapping(value = "/add")
    public String add(ProvRoad provRoad) {
        try {
            provRoadService.add(provRoad);
        } catch (RuntimeException e) {
            return "redirect:/info/1?operateFlag=add&status=false";
        }
        return "redirect:/info/1?operateFlag=add&status=true";
    }

}

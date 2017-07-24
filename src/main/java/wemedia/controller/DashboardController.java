package wemedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by hsw11 on 2017/7/17.
 */
@Controller
public class DashboardController {
    @RequestMapping("/dashboard/index")
    public String index() {
        return "/dashboard/index";
    }

    @RequestMapping("/dashboard/test")
    public ModelAndView test() {
        return new ModelAndView("test");
    }
}

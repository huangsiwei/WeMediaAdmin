package wemedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hsw11 on 2017/7/17.
 */
@Controller
public class LoginController {

    @RequestMapping("/")
    public String index() {
        return "login";
    }

    @RequestMapping("/hello")
    public String hello() {
        return "hello";
    }


    @RequestMapping("/login")
    public String login() {
        return "login";
    }
}

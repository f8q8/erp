package com.zxl78585.admin.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {

    @RequestMapping("")
    public String index(HttpServletRequest request) {
        request.setAttribute("name", "张三");
        return "index";
    }
}

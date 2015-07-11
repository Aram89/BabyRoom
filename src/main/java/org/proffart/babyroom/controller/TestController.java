package org.proffart.babyroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {

    @RequestMapping(value = "test", method = RequestMethod.GET)
    public String Test(@RequestParam(value = "page") String page) {
        return page;
    }

}

package org.proffart.babyroom.controller;

import org.proffart.babyroom.utils.RequestMappings;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Aram on 5/24/2015.
 */
@Controller
public class PagesController {

    @RequestMapping(value = RequestMappings.loginPage, method = RequestMethod.GET)
    public String login () {
        return "login";
    }
}

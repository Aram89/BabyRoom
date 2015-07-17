package org.proffart.babyroom.controller;

import org.proffart.babyroom.service.UserServiceImpl;
import org.proffart.babyroom.utils.RequestMappings;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Aram Kirakosyan.
 */
@Controller
public class PagesController {

    @RequestMapping(value = RequestMappings.CREATE_CHILDREN, method = RequestMethod.GET)
    public String createChildren() {
        return "/children-create";
    }

    @RequestMapping(value = RequestMappings.loginPage, method = RequestMethod.GET)
    public String login () {
        if (UserServiceImpl.isLogged()) {
            return "index";
        }
        return "login";
    }
}

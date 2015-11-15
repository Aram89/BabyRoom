package org.proffart.kindernet.controller;

import org.proffart.kindernet.service.UserServiceImpl;
import org.proffart.kindernet.utils.RequestMappings;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Aram Kirakosyan.
 */
@Controller
public class PagesController {

    @RequestMapping(value = RequestMappings.CREATE_CHILDREN_PAGE, method = RequestMethod.GET)
    public String createChildren() {
        return RequestMappings.CREATE_CHILDREN_PAGE;
    }

    @RequestMapping(value = RequestMappings.LOGIN_PAGE, method = RequestMethod.GET)
    public String login () {
        if (UserServiceImpl.isLogged()) {
            return UserServiceImpl.redirectToPage();
        }
        return RequestMappings.LOGIN_PAGE;
    }
}

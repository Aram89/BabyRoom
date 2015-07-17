package org.proffart.babyroom.controller;

import org.proffart.babyroom.domain.users.AccountType;
import org.proffart.babyroom.domain.users.Parent;
import org.proffart.babyroom.service.UserServiceImpl;
import org.proffart.babyroom.utils.RequestMappings;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

/**
 * @author Aram Kirakosyan.
 */
@Controller
public class PagesController {

    @RequestMapping(value = RequestMappings.CREATE_CHILDREN_PAGE, method = RequestMethod.GET)
    public String createChildren() {
        return RequestMappings.CREATE_CHILDREN_PAGE;
    }

    @RequestMapping(value = RequestMappings.loginPage, method = RequestMethod.GET)
    public String login () {
        if (UserServiceImpl.isLogged()) {
            return UserServiceImpl.redirectToPage();
        }
        return RequestMappings.loginPage;

    }
}

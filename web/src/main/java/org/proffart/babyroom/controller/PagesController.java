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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;

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

package org.proffart.kindernet.controller;

import org.proffart.kindernet.domain.users.AccountType;
import org.proffart.kindernet.domain.users.Parent;
import org.proffart.kindernet.service.UserServiceImpl;
import org.proffart.kindernet.utils.RequestMappings;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Aram Kirakosyan.
 */
public class Interceptor implements HandlerInterceptor {
    private boolean isFirstTime = true;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // Getting session.
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();

        //Getting user type from session.
        String type = (String) session.getAttribute("userType");

        // User is not logged in, redirecting to login page.
        if(!UserServiceImpl.isLogged()) {
            response.sendRedirect(request.getContextPath() + RequestMappings.LOGIN_PAGE);
        }

        // User is parent.
        if (type.equalsIgnoreCase(AccountType.PARENT)) {
            Parent parent = (Parent) session.getAttribute("userObject");
            if (parent.getChild().isEmpty()) {
                // Redirect to create children page.
                response.sendRedirect(request.getContextPath() + RequestMappings.CREATE_CHILDREN_PAGE);
            } else {
                // Redirect to home page.
                response.sendRedirect(request.getContextPath());
            }
        }
        // TODO other cases
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        HttpSession session = request.getSession();
        System.out.println(session);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        HttpSession session = request.getSession();
        System.out.println(session);
    }
}

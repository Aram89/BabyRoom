package org.proffart.babyroom.service;

import org.proffart.babyroom.dao.UserDAO;
import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.domain.users.AccountType;
import org.proffart.babyroom.domain.users.Child;
import org.proffart.babyroom.domain.users.Guest;
import org.proffart.babyroom.Exception.AppException;
//import org.proffart.babyroom.domain.users.Parent;
import org.proffart.babyroom.domain.users.Parent;
import org.proffart.babyroom.utils.RequestMappings;
import org.proffart.babyroom.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Service layer for user.
 *
 * Created by Aram on 5/17/2015.
 */
@Transactional
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDAO userDAO;


    public void create(User user) throws SQLException {
        // Hashing password.
        user.setPassword(Utils.hash(user.getPassword()));
        userDAO.insert(user);
    }

    public Boolean emailExists(String email) throws SQLException {
        return userDAO.checkEmail(email);
    }

    @Override
    public long login(String userName, String password) throws SQLException,AppException {
        User user = userDAO.login(userName, password);
        return user.getId();
    }

    @Override
    public void saveParentInSession(long id) {
        Parent parent = userDAO.getParent(id);
        saveInSession(AccountType.PARENT, parent);
    }

    @Override
    public void updateParentInSession(long id) {
        // Getting parent from session.
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        Parent parent = (Parent) session.getAttribute("userObject");
        saveParentInSession(parent.getId());
    }

    @Override
    public void createChild(Child child) {
        Parent parent = (Parent)getCurrentUser();
        child.setParentId(parent.getId());
        userDAO.createChildren(child);
    }

    public User getCurrentUser() {
        User user = null;
        try {
            ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
            HttpSession session = attr.getRequest().getSession();
            String type = (String)session.getAttribute("userType");
            if (type.equalsIgnoreCase(AccountType.PARENT)) {
                Parent parent = (Parent) session.getAttribute("userObject");
                return parent;
            }
        }
        catch (Exception e) {
            user = new Guest();
        }
        return user;
    }

    public  static Boolean isLogged () {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        String type = (String)session.getAttribute("userType");
        return (type != null);
    }

    public void saveInSession(String type, Object object) {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        session.setAttribute("userObject", object);
        session.setAttribute("userType", type);
    }

    public static String redirectToPage() {
        // Getting session.
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();

        //Getting user type from session.
        String type = (String) session.getAttribute("userType");

        // User is parent.
        if (type.equalsIgnoreCase(AccountType.PARENT)) {
            Parent parent = (Parent) session.getAttribute("userObject");
            if (parent.getChild().isEmpty()) {
                // Redirect to create children page.
                return RequestMappings.CREATE_CHILDREN_PAGE;
            }
        }
        // Redirect to home page.
        return RequestMappings.INDEX;
    }
}

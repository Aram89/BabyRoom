package org.proffart.babyroom.service;

import org.proffart.babyroom.dao.UserDAO;
import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.domain.users.Guest;
import org.proffart.babyroom.Exception.AppException;
import org.proffart.babyroom.domain.users.Parent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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


    public void create(User user) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        userDAO.insert(user);
    }

    public Boolean emailExists(String email) throws SQLException {
        return userDAO.checkEmail(email);
    }

    @Override
    public void login(String userName, String password) throws SQLException,
            UnsupportedEncodingException, NoSuchAlgorithmException, AppException {
        User user = userDAO.login(userName, password);
    }

    public static User getCurrentUser () {
        User user = null;
        try {
            ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
            HttpSession session = attr.getRequest().getSession();
            user = (User) session.getAttribute("userObject");
            if (user == null) {
                user = new Guest();
            }
        }
        catch (Exception e) {
            user = new Guest();
        }
        return user;
    }

    public static Boolean isLogged () {
        return !(getCurrentUser() instanceof Guest);
    }
}

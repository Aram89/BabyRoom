package org.proffart.babyroom.service;

import org.proffart.babyroom.dao.UserDAO;
import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.utils.StringUtils;
import org.proffart.babyroom.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Created by Aram on 5/17/2015.
 */
@Transactional
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    UserDAO userDAO;

    public void create(User user) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        String password = user.getPassword();
        String salt = StringUtils.generateRandomStrong(10);
        String newPass = password + salt;
        String hash = Utils.hash(newPass);
        user.setPasswordHash(hash);
        user.setPasswordSalt(salt);
        userDAO.insert(user);
    }


    public Boolean emailExists(String email) throws SQLException {
        Integer count = userDAO.getCount(email);
        return !count.equals(0);
    }
}

package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.exception.AppException;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Created by Aram on 5/17/2015.
 */
public interface UserDAO {
    void insert(User user) throws SQLException;
    Boolean checkEmail (String email) throws SQLException;
    User login (String userName, String password) throws AppException, UnsupportedEncodingException, NoSuchAlgorithmException;
}

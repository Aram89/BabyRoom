package org.proffart.babyroom.service;

import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.Exception.AppException;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Created by Aram on 5/17/2015.
 */
public interface UserService {
    /**
     * Service for creating user.
     *
     * @param user user
     * @throws SQLException
     * @throws UnsupportedEncodingException
     * @throws NoSuchAlgorithmException
     */
    void create (User user) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException;

    /**
     * Check if email exists in db.
     *
     * @param email email.
     * @return true if email exists, else false.
     * @throws SQLException
     */
    Boolean emailExists (String email) throws SQLException;

    /**
     * Service for login.
     *
     * @param userName user name.
     * @param password password.
     * @throws SQLException SQLException.
     */
    void login (String userName, String password) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException, AppException;

}

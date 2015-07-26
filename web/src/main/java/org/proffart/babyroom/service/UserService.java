package org.proffart.babyroom.service;

import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.Exception.AppException;
import org.proffart.babyroom.domain.users.Child;
import org.proffart.babyroom.domain.users.Parent;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
public interface UserService {
    /**
     * Service for creating user.
     *
     * @param user user
     * @throws java.sql.SQLException
     * @throws java.io.UnsupportedEncodingException
     * @throws java.security.NoSuchAlgorithmException
     */
    void create(User user) throws SQLException;

    /**
     * Check if email exists in db.
     *
     * @param email email.
     * @return true if email exists, else false.
     * @throws java.sql.SQLException
     */
    Boolean emailExists(String email) throws SQLException;

    /**
     * Service for login.
     *
     * @param userName user name.
     * @param password password.
     * @throws java.sql.SQLException SQLException.
     */
    long login(String userName, String password) throws SQLException,AppException;

    void saveParentInSession(long id);

    void updateParentInSession(long id);

    void createChild(Child child);
}

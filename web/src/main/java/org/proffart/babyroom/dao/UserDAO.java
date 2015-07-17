package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.Exception.AppException;
import org.proffart.babyroom.domain.users.Child;
import org.proffart.babyroom.domain.users.Expert;
import org.proffart.babyroom.domain.users.Parent;
import org.proffart.babyroom.domain.users.Seller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Created by Aram on 5/17/2015.
 */
public interface UserDAO {
    void insert(User user) throws SQLException;
    Boolean checkEmail (String email) throws SQLException;
    User login (String email, String password) throws AppException;
    Parent getParent(long id);
    Seller getSeller(long id);
    Expert getExpert(long id);
    void createChildren(Child child);
}

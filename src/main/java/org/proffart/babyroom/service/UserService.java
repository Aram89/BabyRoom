package org.proffart.babyroom.service;

import org.proffart.babyroom.domain.User;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Created by Aram on 5/17/2015.
 */
public interface UserService {
    public void create (User user) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException;
    public Boolean emailExists (String email) throws SQLException;


}

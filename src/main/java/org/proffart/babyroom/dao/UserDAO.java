package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.User;

import java.sql.SQLException;

/**
 * Created by Aram on 5/17/2015.
 */
public interface UserDAO {
    public void insert(User user) throws SQLException;
    public Integer getCount (String email) throws SQLException;
}

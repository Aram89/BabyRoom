package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.User;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.sql.SQLException;

/**
 * Created by Aram on 5/17/2015.
 */

public class UserDAOImpl extends SqlMapClientDaoSupport implements UserDAO {

    @Override
    public void insert(User user) throws SQLException {
        Integer id = (Integer) getSqlMapClient().insert("user.insert", user);
    }
}

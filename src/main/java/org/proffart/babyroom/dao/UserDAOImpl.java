package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.User;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;

/**
 * Created by Aram on 5/17/2015.
 */
@Repository
public class UserDAOImpl extends SqlMapClientDaoSupport implements UserDAO {


    public void insert(User user) throws SQLException {
//        Integer id = (Integer) getSqlMapClient().insert("user.insert", user);
    }

    @Override
    public Integer getCount(String email) throws SQLException {
        return (Integer)getSqlMapClient().queryForObject("user.checkEmail", email);
    }
}

package org.proffart.kindernet.mock.dao;

import org.proffart.kindernet.Exception.AppException;
import org.proffart.kindernet.dao.UserDAO;
import org.proffart.kindernet.domain.User;
import org.proffart.kindernet.domain.users.Child;
import org.proffart.kindernet.domain.users.Expert;
import org.proffart.kindernet.domain.users.Parent;
import org.proffart.kindernet.domain.users.Seller;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
public class UserDAOMockImpl implements UserDAO {
    @Override
    public void insert(User user) throws SQLException {

    }

    @Override
    public Boolean checkEmail(String email) throws SQLException {
        return null;
    }

    @Override
    public User login(String email, String password) throws AppException {
        return null;
    }

    @Override
    public Parent getParent(long id) {
        return null;
    }

    @Override
    public Seller getSeller(long id) {
        return null;
    }

    @Override
    public Expert getExpert(long id) {
        return null;
    }

    @Override
    public void createChildren(Child child) {

    }
}

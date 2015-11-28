package org.proffart.kindernet.mock.service;

import org.proffart.kindernet.Exception.AppException;
import org.proffart.kindernet.domain.User;
import org.proffart.kindernet.domain.users.Child;
import org.proffart.kindernet.service.UserService;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 *
 */
@Service
public class UserServiceMockImpl implements UserService{
    @Override
    public void create(User user) throws SQLException {

    }

    @Override
    public Boolean emailExists(String email) throws SQLException {
        return true;
    }

    @Override
    public long login(String userName, String password) throws SQLException, AppException {
        return 1;
    }

    @Override
    public void saveParentInSession(long id) {

    }

    @Override
    public void updateParentInSession(long id) {

    }

    @Override
    public void createChild(Child child) {

    }
}

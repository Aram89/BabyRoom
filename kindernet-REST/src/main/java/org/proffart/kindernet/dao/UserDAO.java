package org.proffart.kindernet.dao;

import org.proffart.kindernet.domain.User;
import org.proffart.kindernet.Exception.AppException;
import org.proffart.kindernet.domain.users.Child;
import org.proffart.kindernet.domain.users.Expert;
import org.proffart.kindernet.domain.users.Parent;
import org.proffart.kindernet.domain.users.Seller;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
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

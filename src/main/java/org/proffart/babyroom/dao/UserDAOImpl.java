package org.proffart.babyroom.dao;

import org.hibernate.Query;
import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.Exception.*;
import org.proffart.babyroom.Exception.Error;
import org.proffart.babyroom.domain.users.Expert;
import org.proffart.babyroom.domain.users.Parent;
import org.proffart.babyroom.domain.users.Seller;
import org.proffart.babyroom.utils.Utils;
import org.springframework.stereotype.Repository;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Aram on 5/17/2015.
 */
@Repository
public class UserDAOImpl extends BaseDAO implements UserDAO {


    @Override
    public void insert(User user) throws SQLException {
        persist(user);
    }

    @Override
    public Boolean checkEmail(String email) throws SQLException {
        String hql = "FROM org.proffart.babyroom.domain.User u WHERE u.email = :email";
        Query query = getSession().createQuery(hql);
        query.setString("email", email);
        List<User> result = query.list();
        return !result.isEmpty();
    }

    @Override
    public User login(String email, String password) throws AppException {
        String hql = "FROM org.proffart.babyroom.domain.User WHERE email = :email";
        Query query = getSession().createQuery(hql);
        query.setParameter("email",email);
        List<User> result = query.list();

        // Username is wrong.
        if (result.size() == 0)
            throw new AppException(Error.WRONG_USER_NAME);

        // User exists, get password from db.
        String pass = result.get(0).getPassword();

        // Password is wrong.
        if (!pass.equals(Utils.hash(password)))
            throw new AppException(Error.WRONG_PASSWORD);

        // Good credentials, return user.
        return result.get(0);
    }

    @Override
    public Parent getParent(long id) {
        return (Parent)getSession().load(Parent.class, id);
    }

    @Override
    public Seller getSeller(long id) {
        return (Seller)getSession().load(Seller.class, id);
    }

    @Override
    public Expert getExpert(long id) {
        return (Expert)getSession().load(Expert.class, id);
    }
}

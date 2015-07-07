package org.proffart.babyroom.service;

import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.domain.users.*;

/**
 * @author Aram Kirakosyan.
 */
public class UserFactory {

    /**
     * Returns user based on type.
     *
     * @param user user object from create request.
     * @return user based on type.
     */
    public static User getUser(User user){
        String type = user.getType();
        if (type.equalsIgnoreCase(AccountType.PARENT.getName())) {
            return new Parent(user);
        } else if (type.equalsIgnoreCase(AccountType.EXPERT.getName())) {
            return new Expert(user);
        } else if (type.equalsIgnoreCase(AccountType.SELLER.getName())){
            return new Seller(user);
        }
        return new Guest();
    }
}

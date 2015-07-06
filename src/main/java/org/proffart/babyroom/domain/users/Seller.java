package org.proffart.babyroom.domain.users;

import org.proffart.babyroom.domain.User;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

/**
 * @author Aram Kirakosyan.
 */
@Entity
@PrimaryKeyJoinColumn(name = "doctorId")
public class Seller extends User {

    /**
     * No-arg constructor.
     */
    public Seller(){

    }

    /**
     * Constructor for creating Seller from existing user object.
     *
     * @param user user object from
     */
    public Seller(User user) {
        this.setEmail(user.getEmail());
        this.setPassword(user.getPassword());
        this.setType(user.getType());
    }
}

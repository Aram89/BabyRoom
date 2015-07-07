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
@PrimaryKeyJoinColumn(name = "expertId")
public class Expert extends User {

    /**
     * No-arg constructor.
     */
    public Expert(){

    }

    /**
     * Constructor for creating Expert from existing user object.
     *
     * @param user user object from create request.
     */
    public Expert(User user) {
        this.setEmail(user.getEmail());
        this.setPassword(user.getPassword());
        this.setType(user.getType());
    }
}

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
}

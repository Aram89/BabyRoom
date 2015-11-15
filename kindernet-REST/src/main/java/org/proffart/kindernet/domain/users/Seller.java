package org.proffart.kindernet.domain.users;

import org.proffart.kindernet.domain.User;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

/**
 * @author Aram Kirakosyan.
 */
@Entity
@PrimaryKeyJoinColumn(name = "sellerId")
public class Seller extends User {

    /**
     * No-arg constructor.
     */
    public Seller(){

    }
}

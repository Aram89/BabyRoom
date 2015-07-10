package org.proffart.babyroom.domain.users;

import org.hibernate.metamodel.binding.*;
import org.proffart.babyroom.domain.User;

import javax.persistence.*;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

/**
* @author Aram Kirakosyan.
*
* Domain class for parents.
*/
@Entity
@PrimaryKeyJoinColumn(name = "parentId")
public class Parent extends User{

    /**
     * No-arg constructor.
     */
    public Parent(){

    }
}

package org.proffart.babyroom.domain.users;

import org.proffart.babyroom.domain.User;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Aram on 5/24/2015.
 */

public class Child extends User {
    private String gender;
    private int parentId;

}

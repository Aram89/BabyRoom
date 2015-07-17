package org.proffart.babyroom.domain.users;

import org.hibernate.metamodel.binding.*;
import org.proffart.babyroom.domain.User;

import javax.persistence.*;
import javax.persistence.CascadeType;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Set;

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

    private List <Child> child;

//    @OneToMany(cascade = CascadeType.ALL)
//    @JoinTable(name = "child", joinColumns = {@JoinColumn(name = "parentId")})
    @OneToMany
    @JoinColumn(name="parentId")
    public List<Child> getChild() {
        return child;
    }

    public void setChild(List <Child> child) {
        this.child = child;
    }
}

package org.proffart.babyroom.domain.users;

import org.hibernate.metamodel.binding.*;
import org.proffart.babyroom.domain.User;

import javax.persistence.*;
import javax.persistence.CascadeType;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
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

    private Set <Child> children;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "children", joinColumns = {
            @JoinColumn(name = "childrenId")})
    public Set<Child> getChildren() {
        return children;
    }

    public void setChildren(Set<Child> children) {
        this.children = children;
    }
}

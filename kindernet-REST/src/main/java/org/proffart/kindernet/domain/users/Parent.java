package org.proffart.kindernet.domain.users;

import org.proffart.kindernet.domain.User;

import javax.persistence.*;
import java.util.List;

/**
* @author Aram Kirakosyan.
*
* Domain class for parents.
*/
@Entity
@PrimaryKeyJoinColumn(name = "parentId")
public class Parent extends User {

    /**
     * No-arg constructor.
     */
    public Parent(){

    }

    private List <Child> child;

    @OneToMany
    @JoinColumn(name="parentId")
    public List<Child> getChild() {
        return child;
    }

    public void setChild(List <Child> child) {
        this.child = child;
    }
}

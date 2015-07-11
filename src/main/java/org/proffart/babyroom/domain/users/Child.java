package org.proffart.babyroom.domain.users;

import org.proffart.babyroom.domain.User;

import javax.persistence.*;

/**
 * @author Aram Kirakosyan.
 * Model class for child.
 */
@Entity
@PrimaryKeyJoinColumn(name = "childId")
public class Child extends User{

    private long parentId;
    private String gender;
    private String firstName;
    private String lastName;


    @Column(name = "parentId")
    public long getParentId() {
        return parentId;
    }

    public void setParentId(long parentId) {
        this.parentId = parentId;
    }

    @Column(name = "gender")
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Column(name = "firstName")
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Column(name = "lastName")
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}

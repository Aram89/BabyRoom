package org.proffart.babyroom.domain;

import org.proffart.babyroom.utils.StringUtils;
import org.proffart.babyroom.utils.Utils;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import javax.annotation.Generated;
import javax.persistence.*;
import javax.validation.constraints.Null;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

/**
 * @author Aram Kirakosyan.
 *
 * Domain class for user.
 */
@Entity
@Table(name="user")
@Inheritance(strategy = InheritanceType.JOINED)
public class User {
    // User id.
    private long id;

    // User email.;2
    private String email;

    // Hashed password.
    private String passwordHash;

    // User status(active, inactive, blocked).
    private String status;

    // User name.
    private String firstName;

    // User last name.
    private String lastName;

    // User type.
    private String type;

    @Column(name="type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Id
    @GeneratedValue
    @Column(name = "userId")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Column(name="firstName")
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Column(name="lastName")
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Column(name="passwordHash")
    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    @Column(name="email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public void setPassword(String password) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        this.passwordHash = Utils.hash(password);
    }

    @Column(name="status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

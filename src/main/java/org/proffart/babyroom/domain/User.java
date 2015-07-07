package org.proffart.babyroom.domain;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.proffart.babyroom.domain.users.AccountType;
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

    // User email.
    private String email;

    // Password.
    private String password;

    // User status(active, inactive, blocked).
    private String status;

    private String type;

    /**
     * No-arg constructor.
     */
    public User() {
    }

    @Column(name = "type")
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

    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "passwordHash")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = Utils.hash(password);
    }

    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}

package org.proffart.kindernet.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * @author Aram Kirakosyan.
 *
 * Model for user actions.
 * Comments, likes, file uploads and posts are considered as actions.
 */
@Entity
@Table(name = "action")
@Inheritance(strategy = InheritanceType.JOINED)
public class Action {

    // Action types.
    public static final String FILE = "FILE";
    public static final String POST = "POST";
    public static final String COMMENT = "COMMENT";
    public static final String LIKE = "LIKE";


    private long actionId;
    private Date createDate;
    private String type;

    private User user;

    @ManyToOne
    @JoinColumn(name="userId")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Id
    @GeneratedValue
    @Column(name = "actionId")
    public long getActionId() {
        return actionId;
    }

    public void setActionId(long actionId) {
        this.actionId = actionId;
    }

    @Column(name = "createDate")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}

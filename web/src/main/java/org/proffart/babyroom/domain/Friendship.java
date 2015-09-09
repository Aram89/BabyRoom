package org.proffart.babyroom.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * @author Aram Kirakosyan.
 * Model class for friendship represantation.
 */
@Entity
@Table(name = "friendship")
public class Friendship implements Serializable {

    private User friendRequester;
    private User friendReceiver;
    private String status;
    private Date timeStamp;

    @Id
    @ManyToOne
    @JoinColumn(name="userId")
    public User getFriendRequester() {
        return friendRequester;
    }

    public void setFriendRequester(User friendRequester) {
        this.friendRequester = friendRequester;
    }

    @Id
    @ManyToOne
    @JoinColumn(name="friendId")
    public User getFriendReceiver() {
        return friendReceiver;
    }

    public void setFriendReceiver(User friendReceiver) {
        this.friendReceiver = friendReceiver;
    }

    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Column(name = "timeStamp")
    @Temporal(TemporalType.TIMESTAMP)
    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}

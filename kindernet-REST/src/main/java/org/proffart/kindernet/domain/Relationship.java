package org.proffart.kindernet.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * @author Aram Kirakosyan.
 * Model class for relationship represantation.
 */
@Entity
@Table(name = "relationship")
public class Relationship implements Serializable {

    private long id;

    @Id
    @GeneratedValue
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    private User relationRequester;
    private User relationReceiver;
    private String status;
    private String type;

    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    private Date timeStamp;

    @ManyToOne
    @JoinColumn(name="userId")
    public User getRelationRequester() {
        return relationRequester;
    }

    public void setRelationRequester(User relationRequester) {
        this.relationRequester = relationRequester;
    }

    @ManyToOne
    @JoinColumn(name="relationId")
    public User getRelationReceiver() {
        return relationReceiver;
    }

    public void setRelationReceiver(User relationReceiver) {
        this.relationReceiver = relationReceiver;
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

package org.proffart.kindernet.domain;

import javax.persistence.*;
import java.util.List;

/**
 * @author Aram Kirakosyan.
 * Model for Post representation.
 * Post can contain multiple files, content and event.
 * Every post is an action.
 */
@Entity
@Table(name = "post")
@PrimaryKeyJoinColumn(name = "postId")
public class Post extends Action {

    // Post content (status).
    private String content;

    // Event name.
    private String event;

    // Status (ACTIVE, INACTIVE, etc)
    private String status;

    // Post type (EVENT, TEXT, FILE)
    private String postType;

    @Column(name = "type")
    public String getPostType() {
        return postType;
    }

    public void setPostType(String postType) {
        this.postType = postType;
    }

    // Files id list connected with post.
    private List<Long> fileIds;

    @Transient
    public List<Long> getFileIds() {
        return fileIds;
    }

    public void setFileIds(List<Long> fileIds) {
        this.fileIds = fileIds;
    }

    @Column(name = "content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Column(name = "event")
    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

package org.proffart.babyroom.domain;

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

    /// Files id list connected with post.
    private List<String> fileIds;

    @Transient
    public List<String> getFileIds() {
        return fileIds;
    }

    public void setFileIds(List<String> fileIds) {
        this.fileIds = fileIds;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

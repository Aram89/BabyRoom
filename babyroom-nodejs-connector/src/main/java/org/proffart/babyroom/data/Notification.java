package org.proffart.babyroom.data;

import java.util.List;

/**
 * Class for notification representation.
 *
 * @author Aram Kirakosyan.
 *
 */
public class Notification {

    // Notification receivers list.
    private List<Long> receiversIds;

    // Notification type.
    private String type;

    // Notification content.
    private String content;

    public List<Long> getReceiversIds() {
        return receiversIds;
    }

    public void setReceiversIds(List<Long> receiversIds) {
        this.receiversIds = receiversIds;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }


}

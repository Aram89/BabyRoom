package org.proffart.babyroom.data;

/**
 * Class for notification representation.
 *
 * @author Aram Kirakosyan.
 *
 */
public class Notification {

    // Notification sender id.
    private long senderId;

    // Notification receiver id.
    private long receiverId;

    // Notification type.
    private String type;


    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getSenderId() {
        return senderId;
    }

    public void setSenderId(long senderId) {
        this.senderId = senderId;
    }

    public long getReceiverId() {
        return receiverId;
    }

    public void setReceiverId(long receiverId) {
        this.receiverId = receiverId;
    }

}

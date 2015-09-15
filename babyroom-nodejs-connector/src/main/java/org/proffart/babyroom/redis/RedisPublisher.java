package org.proffart.babyroom.redis;

import org.proffart.babyroom.data.Notification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;


/**
 * @author Aram Kirakosyan.
 */

public class RedisPublisher {

    @Autowired
    private RedisTemplate<String,String> redisTemplate;

    /**
     * Publishes notification to redis channel.
     * @param channel Redis channel.
     * @param notification notification.
     */
    public void publish(String channel, Notification notification) {
        // Publish to redis.
        redisTemplate.convertAndSend(channel,notification);
    }
}

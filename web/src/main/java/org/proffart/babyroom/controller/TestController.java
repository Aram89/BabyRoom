package org.proffart.babyroom.controller;

//import org.proffart.babyroom.nodejs.routes.RedisPublisher;
import org.proffart.babyroom.data.Notification;
import org.proffart.babyroom.redis.RedisPublisher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class TestController {

    @Autowired
    private RedisPublisher redisPublisher;

    @RequestMapping(value = "test", method = RequestMethod.GET)
    public String Test(@RequestParam(value = "page") String page) {
        // Test notification.
        Notification notification = new Notification();
        notification.setReceiverId(2l);
        notification.setSenderId(1l);
        notification.setType("FRIEND_REQUEST");

        // Testing redis.
        redisPublisher.publish("test", notification);
        return page;
    }

}

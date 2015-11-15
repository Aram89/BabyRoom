package org.proffart.kindernet.controller;

//import org.proffart.kindernet.nodejs.routes.RedisPublisher;
import org.proffart.kindernet.data.Notification;
import org.proffart.kindernet.redis.RedisPublisher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class TestController {

    @Autowired
    private RedisPublisher redisPublisher;



}

package org.proffart.kindernet.controller;

import org.proffart.kindernet.domain.Relationship;
import org.proffart.kindernet.domain.User;
import org.proffart.kindernet.service.RelationService;
import org.proffart.kindernet.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



/**
 * @author Aram Kirakosyan.
 */
@Controller
public class RelationController {

    @Autowired
    private RelationService relationService;

    @RequestMapping(value = RequestMappings.ADD_FRIEND, method = RequestMethod.POST)
    ResponseEntity addFriend (@RequestParam(value = "friendId") long friendId) {
        // Getting user from session.
        //User relationRequester = UserServiceImpl.getUser();
        User friendRequester = new User();
        friendRequester.setId(1l);
        User friendReceiver = new User();
        friendReceiver.setId(friendId);
        Relationship friendship = new Relationship();
        friendship.setRelationReceiver(friendReceiver);
        friendship.setRelationRequester(friendRequester);
        friendship.setTimeStamp(new java.util.Date());
        relationService.addFriend(friendship);
        return null;
    }

}

package org.proffart.babyroom.controller;

import org.proffart.babyroom.domain.Action;
import org.proffart.babyroom.domain.Post;
import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.service.PostService;
import org.proffart.babyroom.service.UserServiceImpl;
import org.proffart.babyroom.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @RequestMapping(value = RequestMappings.CREATE_POST, method = RequestMethod.POST)
    public ResponseEntity createPost(@RequestBody Post post) throws SQLException {
        // Get user from session.
        User user = UserServiceImpl.getUser();
        post.setUser(user);
        postService.createPost(post);
        return new ResponseEntity(HttpStatus.OK);
    }
}

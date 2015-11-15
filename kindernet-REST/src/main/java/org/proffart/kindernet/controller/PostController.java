package org.proffart.kindernet.controller;

import org.proffart.kindernet.domain.Post;
import org.proffart.kindernet.domain.User;
import org.proffart.kindernet.service.PostService;
import org.proffart.kindernet.service.UserServiceImpl;
import org.proffart.kindernet.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
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
        // Getting user from session.
        User user = UserServiceImpl.getUser();
        post.setUser(user);
        postService.createPost(post);
        return new ResponseEntity(HttpStatus.OK);
    }
}

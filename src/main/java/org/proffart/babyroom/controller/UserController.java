package org.proffart.babyroom.controller;

import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.service.UserService;
import org.proffart.babyroom.utils.ErrorStrings;
import org.proffart.babyroom.utils.RequestMappings;
import org.proffart.babyroom.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

/**
 * Created by Aram on 5/17/2015.
 */

@RequestMapping(value = RequestMappings.user)
@RestController
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = RequestMappings.checkEmail, method = RequestMethod.GET)
    public ResponseEntity checkUserName(@RequestParam(value = "email") String email) {
        try {
            if (userService.emailExists(email)) {
                return ResultUtil.sendCheckResult(false, ErrorStrings.EMAIL_EXISTS);
            }
            return ResultUtil.sendCheckResult(true,null);
        } catch (Exception e) {
            return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(value = RequestMappings.createUser, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody User user) throws IOException {
        try {
            if (userService.emailExists(user.getEmail())) {
                return ResultUtil.sendCheckResult(false, ErrorStrings.EMAIL_EXISTS);
            }
            if (!user.getPassword().equals(user.getConfirmPassword())) {
                return ResultUtil.sendCheckResult(false, ErrorStrings.WRONG_PASSWORD);
            }
            userService.create(user);
            return new ResponseEntity(HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

}

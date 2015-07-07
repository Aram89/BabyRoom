package org.proffart.babyroom.controller;

import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.Exception.*;
import org.proffart.babyroom.Exception.Error;
import org.proffart.babyroom.service.UserService;
import org.proffart.babyroom.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Controller for user requests.
 *
 * @author Aram Kirakosyan.
 */
@RequestMapping(value = RequestMappings.user)
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * Service for checking email, returns status ok if not exist, else throws Appexception.
     *
     * @param email email.
     * @return returns status ok if not exist, else throws Appexception.
     */
    @RequestMapping(value = RequestMappings.checkEmail, method = RequestMethod.GET)
    public ResponseEntity checkEmail(@RequestParam(value = "email") String email) throws AppException, SQLException {
            if (userService.emailExists(email))
                throw new AppException(Error.EMAIL_EXISTS);

            return new ResponseEntity(HttpStatus.OK);
    }

    /**
     * Service for login.
     *
     * @param user user.
     * @return
     * @throws IOException IOException.
     */
    @RequestMapping(value = RequestMappings.login, method = RequestMethod.POST)
    public ResponseEntity login(@RequestBody User user) throws IOException, NoSuchAlgorithmException, SQLException, AppException {
        // Check user credentials.
        userService.login(user.getEmail(), user.getPassword());
        return null;
    }

    /**
     * Service for creating user.
     *
     * @param user user.
     * @return status ok.
     * @throws SQLException SQLException
     */
    @RequestMapping(value = RequestMappings.createUser, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody User user) throws SQLException, AppException {
        // Secondary email validation.
        checkEmail(user.getEmail());
        // Create user.
        userService.create(user);
        return new ResponseEntity(HttpStatus.OK);
    }
}

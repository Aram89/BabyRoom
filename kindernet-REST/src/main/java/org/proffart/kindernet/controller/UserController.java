package org.proffart.kindernet.controller;

import org.proffart.kindernet.Exception.*;
import org.proffart.kindernet.Exception.Error;
import org.proffart.kindernet.domain.users.*;
import org.proffart.kindernet.service.UserService;
import org.proffart.kindernet.service.UserServiceImpl;
import org.proffart.kindernet.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

/**
 * Controller for user requests.
 *
 * @author Aram Kirakosyan.
 */
@RequestMapping(value = RequestMappings.USER)
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
    @RequestMapping(value = RequestMappings.CHECK_EMAIL, method = RequestMethod.GET)
    public ResponseEntity checkEmail(@RequestParam(value = "email") String email) throws AppException, SQLException {
            if (userService.emailExists(email))
                throw new AppException(Error.EMAIL_EXISTS);

            return new ResponseEntity(HttpStatus.OK);
    }

    /**
     * Service for parent login.
     *
     * @param parent parent.
     * @return
     * @throws java.io.IOException IOException.
     */
    @RequestMapping(value = RequestMappings.PARENT_LOGIN, method = RequestMethod.POST)
    public ResponseEntity login(@RequestBody Parent parent) throws IOException, SQLException, AppException {
        // Check user credentials.
        long id = userService.login(parent.getEmail(), parent.getPassword());
        // Save object in parent.
        userService.saveParentInSession(id);
        return new ResponseEntity(HttpStatus.OK);
    }

    /**
     * Service for creating Parent.
     *
     * @param parent parent.
     * @return status ok.
     * @throws java.sql.SQLException SQLException
     */
    @RequestMapping(value = RequestMappings.CREATE_PARENT, method = RequestMethod.POST)
    public ResponseEntity createParent(@RequestBody Parent parent) throws SQLException, AppException {
        // Secondary email validation.
        checkEmail(parent.getEmail());
        // Set account type.
        parent.setType(AccountType.PARENT);
        userService.create(parent);
        // Create Parent.
       return new ResponseEntity(HttpStatus.OK);
    }

    /**
     * Service for creating Expert.
     *
     * @param expert expert.
     * @return status ok.
     * @throws java.sql.SQLException SQLException
     */
    @RequestMapping(value = RequestMappings.CREATE_EXPERT, method = RequestMethod.POST)
    public ResponseEntity createExpert(@RequestBody Expert expert) throws SQLException, AppException {
        // Secondary email validation.
        checkEmail(expert.getEmail());
        // Set account type.
        expert.setType(AccountType.EXPERT);
        // Create Parent.
        userService.create(expert);
        return new ResponseEntity(HttpStatus.OK);
    }

    /**
     * Service for creating Seller.
     *
     * @param seller seller.
     * @return status ok.
     * @throws java.sql.SQLException SQLException
     */
    @RequestMapping(value = RequestMappings.CREATE_SELLER, method = RequestMethod.POST)
    public ResponseEntity createSeller(@RequestBody Seller seller) throws SQLException, AppException {
        // Secondary email validation.
        checkEmail(seller.getEmail());
        // Set account type.
        seller.setType(AccountType.SELLER);
        // Create Parent.
        userService.create(seller);
        return new ResponseEntity(HttpStatus.OK);
    }

    /**
     * Service for creating child.
     *
     * @param child child.
     * @return status ok.
     * @throws java.sql.SQLException SQLException.
     * @throws AppException AppException.
     */
    @RequestMapping(value = RequestMappings.CREATE_CHILDREN, method = RequestMethod.POST)
    public ResponseEntity createChildren(@RequestBody Child child) throws SQLException, AppException {
        userService.createChild(child);
        userService.updateParentInSession(child.getParentId());
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.GET_ID, method = RequestMethod.GET)
    public ResponseEntity getId() {
        return new ResponseEntity(UserServiceImpl.getUser().getId(), HttpStatus.OK);
    }
}

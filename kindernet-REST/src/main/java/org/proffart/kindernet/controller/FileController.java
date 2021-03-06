package org.proffart.kindernet.controller;

import org.proffart.kindernet.Exception.*;
import org.proffart.kindernet.domain.User;
import org.proffart.kindernet.service.FileService;
import org.proffart.kindernet.service.UserServiceImpl;
import org.proffart.kindernet.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import org.proffart.kindernet.domain.File;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

/**
 * @author Aram Kirakosyan.
 *
 * Controller for file requests.
 */
@Controller
public class FileController {

    @Autowired
    private FileService fileService;

    @RequestMapping(value = RequestMappings.UPLOAD_FILE, method = RequestMethod.POST)
    public ResponseEntity UploadFile(@RequestParam("file") MultipartFile multipartFile)
            throws IOException, AppException, SQLException {
        // Getting user form session.
        User user = UserServiceImpl.getUser();
        // Upload file and get file path.
        String path  = fileService.uploadFile(multipartFile, user.getId());

        // create domain object and set fields for file.
        File file = new File();
        file.setPath(path);
        file.setName(multipartFile.getOriginalFilename());
        file.setCreateDate(new Date());
        file.setMimeType(multipartFile.getContentType());
        //file.setType(Action.FILE);

        file.setUser(user);

        // Insert into DB and get inserted entry id.
        long fileId = fileService.insertFileInDB(file);
        // Return uploaded file id and status OK.
        return new ResponseEntity(fileId, HttpStatus.OK);
    }
}

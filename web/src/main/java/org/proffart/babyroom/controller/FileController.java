package org.proffart.babyroom.controller;

import org.proffart.babyroom.Exception.*;
import org.proffart.babyroom.Exception.Error;
import org.proffart.babyroom.domain.User;
import org.proffart.babyroom.service.FileService;
import org.proffart.babyroom.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import javax.servlet.http.HttpServletResponse;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.Iterator;


/**
 * @author Aram Kirakosyan.
 *
 * Controller for file manipulations.
 */
@Controller
public class FileController {

    @Autowired
    private FileService fileService;

    @RequestMapping(value = RequestMappings.UPLOAD_FILE, method = RequestMethod.POST)
    public ResponseEntity UploadFile(@RequestParam("file") MultipartFile multipartFile) throws IOException, AppException, SQLException {
        if (!multipartFile.isEmpty()) {
            byte[] bytes = multipartFile.getBytes();
            BufferedOutputStream stream = new BufferedOutputStream
                    (new FileOutputStream(new File(multipartFile.getName())));
            stream.write(bytes);
            stream.close();
            org.proffart.babyroom.domain.File file = new org.proffart.babyroom.domain.File();
            file.setMimeType(multipartFile.getContentType());
            file.setName(multipartFile.getName());
            file.setCreateDate(new Date());
            file.setSystemName("test");
            file.setExternalURl("test");
            file.setPath("test");
            //file.setType("IMAGE");
            User user = new User();
            user.setId(2);

            file.setUser(user);
            fileService.saveFile(file);

        } else {
            throw new AppException(Error.EMPTY_FILE);
        }
        return new ResponseEntity("1", HttpStatus.OK);
    }



}

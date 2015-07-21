package org.proffart.babyroom.controller;

import org.proffart.babyroom.utils.RequestMappings;
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
import java.util.Iterator;
import org.apache.commons.io.output.DeferredFileOutputStream;

/**
 * @author Aram Kirakosyan.
 *
 * Controller for file manipulations.
 */
@Controller
public class FileController {



    @RequestMapping(value= RequestMappings.UPLOAD_FILE, method=RequestMethod.POST)
    public void UploadFile( MultipartHttpServletRequest request,HttpServletResponse response) throws IOException {

        try{
            Iterator<String> itr=request.getFileNames();
            MultipartFile file=request.getFile(itr.next());
            String fileName = file.getOriginalFilename();
            File dir = new File("/files/");
            if (dir.isDirectory()){
                File serverFile = new File(dir,fileName);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(file.getBytes());
                stream.close();
            }else {
                System.out.println("Error Found");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        }

}

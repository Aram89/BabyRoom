package org.proffart.kindernet.service;

import org.proffart.kindernet.Exception.*;
import org.proffart.kindernet.Exception.Error;
import org.proffart.kindernet.dao.FileDAO;
import org.proffart.kindernet.domain.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Aram Kirakosyan.
 */
@Transactional
@Service
public class FileServiceImpl implements FileService {

    private final Integer FILES_COUNT_PER_FOLDER = 2000;

    // Change it for production.
    private final String ROOT_FOLDER = "C:\\uploads\\";

    private final String DELIMITER = "\\";

    @Autowired
    private FileDAO fileDAO;

    /**
     * Get type from mimeType.
     * @param mimeType mimeType.
     * @return file type.
     */
    private String getType (String mimeType) {
        String[] parts = mimeType.split("/");
        if(parts.length != 0) {
            return parts[0];
        }
        // Can't get type, returning mimeType.
        return mimeType;
    }

    @Override
    public Long insertFileInDB(File file) throws SQLException, AppException {
        String type = getType(file.getMimeType());
        file.setFileType(type);
        return fileDAO.saveFile(file);
    }

    @Override
    public String createFilePath(String type) throws SQLException {
        Integer fileId = fileDAO.getMaxId() + 1;
        StringBuilder path = new StringBuilder();

        // Getting current year and month.
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMM");
        String today = formatter.format(new java.util.Date());

        // Getting folder based on file id.
        Integer folder = (fileId / FILES_COUNT_PER_FOLDER) * FILES_COUNT_PER_FOLDER + FILES_COUNT_PER_FOLDER;

        path.append(ROOT_FOLDER).append(today).append(DELIMITER).append(type).append(DELIMITER).append(folder.toString());
        return path.toString();
    }

    @Override
    public String createDirs(String type) throws SQLException {
        String path = createFilePath(type);
        java.io.File dir = new java.io.File(path);
        if (!dir.mkdirs()) {
            dir.mkdirs();
        }
        return path;
    }

    @Override
    public String uploadFile(MultipartFile multipartFile, Long userId) throws SQLException, IOException, AppException {
        String mimeType = multipartFile.getContentType();
        String type = getType(mimeType);
        String path = createDirs(type);
        if (!multipartFile.isEmpty()) {
            byte[] bytes = multipartFile.getBytes();
            String fullPath = path + DELIMITER + (new Date().getTime()) + userId + multipartFile.getOriginalFilename();
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new java.io.File(fullPath)));
            stream.write(bytes);
            stream.close();
            return fullPath;
        } else {
            throw new AppException(Error.EMPTY_FILE);
        }
    }

}

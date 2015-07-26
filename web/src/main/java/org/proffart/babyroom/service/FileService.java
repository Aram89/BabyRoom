package org.proffart.babyroom.service;

import org.proffart.babyroom.Exception.AppException;
import org.proffart.babyroom.domain.File;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.net.Inet4Address;
import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
public interface FileService {

    /**
     * crates entry in db for file.
     * @param file file model object.
     * @throws SQLException
     * @throws AppException
     */
    Long insertFileInDB(File file) throws SQLException, AppException;

    /**
     * Creates path for saving file.
     * @param type file type (video, image, sound, etc.)
     * @return generated path
     */
    String createFilePath(String type) throws SQLException;

    String uploadFile(MultipartFile file) throws SQLException, IOException, AppException;

    String createDirs(String type) throws SQLException;
}

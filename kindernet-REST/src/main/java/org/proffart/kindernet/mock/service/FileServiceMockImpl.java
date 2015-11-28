package org.proffart.kindernet.mock.service;

import org.proffart.kindernet.Exception.AppException;
import org.proffart.kindernet.domain.File;
import org.proffart.kindernet.service.FileService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
@Service
public class FileServiceMockImpl implements FileService {
    @Override
    public Long insertFileInDB(File file) throws SQLException, AppException {
        return null;
    }

    @Override
    public String createFilePath(String type) throws SQLException {
        return null;
    }

    @Override
    public String uploadFile(MultipartFile file, Long userId) throws SQLException, IOException, AppException {
        return null;
    }

    @Override
    public String createDirs(String type) throws SQLException {
        return null;
    }

    @Override
    public String test() {
        return null;
    }
}

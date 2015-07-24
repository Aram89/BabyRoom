package org.proffart.babyroom.service;

import org.proffart.babyroom.Exception.AppException;
import org.proffart.babyroom.dao.FileDAO;
import org.proffart.babyroom.domain.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
@Transactional
@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private FileDAO fileDAO;

    @Override
    public void saveFile(File file) throws SQLException, AppException {
        fileDAO.saveFile(file);
    }
}

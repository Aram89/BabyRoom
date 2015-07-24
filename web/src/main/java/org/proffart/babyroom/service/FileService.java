package org.proffart.babyroom.service;

import org.proffart.babyroom.Exception.AppException;
import org.proffart.babyroom.domain.File;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
public interface FileService {

    void saveFile(File file) throws SQLException, AppException;
}

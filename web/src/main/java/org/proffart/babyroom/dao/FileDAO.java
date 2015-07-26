package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.File;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.s
 */
public interface FileDAO {

    Long saveFile(File file) throws SQLException;

    Integer getMaxId() throws SQLException;
}

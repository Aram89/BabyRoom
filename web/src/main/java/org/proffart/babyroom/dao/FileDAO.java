package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.File;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Aram Kirakosyan.s
 */
public interface FileDAO {

    Long saveFile(File file) throws SQLException;

    Integer getMaxId() throws SQLException;

    void attachFilesToPost (List<Long> fileIds, long postId) throws SQLException;
}

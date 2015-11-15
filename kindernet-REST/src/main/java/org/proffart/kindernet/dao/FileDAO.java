package org.proffart.kindernet.dao;

import org.proffart.kindernet.domain.File;

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

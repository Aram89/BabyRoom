package org.proffart.kindernet.mock.dao;

import org.proffart.kindernet.dao.FileDAO;
import org.proffart.kindernet.domain.File;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Aram Kirakosyan.
 */
public class FileDAOMockImpl implements FileDAO{
    @Override
    public Long saveFile(File file) throws SQLException {
        return null;
    }

    @Override
    public Integer getMaxId() throws SQLException {
        return null;
    }

    @Override
    public void attachFilesToPost(List<Long> fileIds, long postId) throws SQLException {

    }
}

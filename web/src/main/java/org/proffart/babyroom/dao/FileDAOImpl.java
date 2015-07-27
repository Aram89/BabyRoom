package org.proffart.babyroom.dao;

import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import org.hibernate.Query;
import org.proffart.babyroom.domain.File;
import org.springframework.stereotype.Repository;


import java.sql.SQLException;
import java.util.List;

/**
 * @author Aram Kirakosyan.
 */
@Repository
public class FileDAOImpl extends BaseDAO implements FileDAO{
    @Override
    public Long saveFile(File file) throws SQLException {
        getSession().save(file);
        return file.getActionId();
    }

    @Override
    public Integer getMaxId() throws SQLException {
        Query query = getSession().createSQLQuery("SELECT `fileId` FROM FILE ORDER BY `fileId` DESC LIMIT 1");
        Integer id = (Integer) query.uniqueResult();
        // No entry in DB file table.
        if (id == null) {
            id = 0;
        }
        return id;
    }

    @Override
    public void attachFilesToPost(List<Long> fileIds, long postId) throws SQLException {
        String sql = "UPDATE file set postId = :postId where fileId in (:fileIds) ";
        Query query = getSession().createSQLQuery(sql);
        query.setLong("postId", postId);
        query.setParameterList("fileIds", fileIds);
        query.executeUpdate();
    }
}

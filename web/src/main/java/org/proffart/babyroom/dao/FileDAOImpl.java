package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.File;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

/**
 * Created by Aram on 7/23/2015.
 */
@Repository
public class FileDAOImpl extends BaseDAO implements FileDAO{
    @Override
    public void saveFile(File file) throws SQLException {
        persist(file);
    }
}

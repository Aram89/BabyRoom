package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.File;

import java.sql.SQLException;

/**
 * Created by Aram on 7/23/2015.
 */
public interface FileDAO {

    void saveFile(File file) throws SQLException;
}

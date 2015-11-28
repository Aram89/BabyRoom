package org.proffart.kindernet.mock.dao;

import org.proffart.kindernet.dao.PostDAO;
import org.proffart.kindernet.domain.Post;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
public class PostDAOMockImpl implements PostDAO {
    @Override
    public Long savePost(Post post) throws SQLException {
        return null;
    }
}

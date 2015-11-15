package org.proffart.kindernet.dao;

import org.proffart.kindernet.domain.Post;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
public interface PostDAO {

    Long savePost(Post post) throws SQLException;
}

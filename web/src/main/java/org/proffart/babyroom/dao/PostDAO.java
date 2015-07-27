package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.Post;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
public interface PostDAO {

    Long savePost(Post post) throws SQLException;
}

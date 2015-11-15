package org.proffart.kindernet.service;

import org.proffart.kindernet.domain.Post;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
public interface PostService {

    /**
     * Creates user Post.
     * @param post post
     * @throws SQLException
     */
    void createPost(Post post) throws SQLException;
}

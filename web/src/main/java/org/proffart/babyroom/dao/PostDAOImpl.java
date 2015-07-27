package org.proffart.babyroom.dao;

import org.proffart.babyroom.domain.Post;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
@Repository
public class PostDAOImpl extends BaseDAO implements PostDAO {
    @Override
    public Long savePost(Post post) throws SQLException {
        getSession().save(post);
        Long postId = post.getActionId();
        return postId;
    }
}

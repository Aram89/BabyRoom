package org.proffart.kindernet.mock.service;

import org.proffart.kindernet.domain.Post;
import org.proffart.kindernet.service.PostService;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

/**
 * @author Aram Kirakosyan.
 */
@Service
public class PostServiceMockImpl implements PostService {
    @Override
    public void createPost(Post post) throws SQLException {

    }
}

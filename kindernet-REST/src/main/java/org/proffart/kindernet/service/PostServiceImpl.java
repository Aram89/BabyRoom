package org.proffart.kindernet.service;

import org.proffart.kindernet.dao.FileDAO;
import org.proffart.kindernet.dao.PostDAO;
import org.proffart.kindernet.domain.Action;
import org.proffart.kindernet.domain.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.Date;

/**
 * @author Aram Kirakosyan.
 */
@Transactional
@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostDAO postDAO;

    @Autowired
    private FileDAO fileDAO;

    @Override
    public void createPost(Post post) throws SQLException {
        post.setType(Action.POST);
        post.setCreateDate(new Date());
        Long postId = postDAO.savePost(post);
        // Attach already uploaded files to post.
        fileDAO.attachFilesToPost(post.getFileIds(), postId);
    }
}

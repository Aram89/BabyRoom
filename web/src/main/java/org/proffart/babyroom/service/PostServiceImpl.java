package org.proffart.babyroom.service;

import org.proffart.babyroom.dao.BaseDAO;
import org.proffart.babyroom.dao.FileDAO;
import org.proffart.babyroom.dao.PostDAO;
import org.proffart.babyroom.domain.Action;
import org.proffart.babyroom.domain.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;

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

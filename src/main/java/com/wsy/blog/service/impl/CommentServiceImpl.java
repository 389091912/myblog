package com.wsy.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wsy.blog.constant.Constant;
import com.wsy.blog.dao.CommentMapper;
import com.wsy.blog.entity.Comment;
import com.wsy.blog.entity.CommentExample;
import com.wsy.blog.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-11
 * Time: 18:17
 */
@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentDao;

    @Override
    public void addComment(Comment comment) {

        commentDao.insertSelective( comment );
    }

    @Override
    public List<Comment> findAllComment(Comment comment) {
        return null;
    }

    @Override
    public PageInfo<Comment> findCommentsByAjax(int pageNo, Comment comment) {

        CommentExample example = new CommentExample();

        example.or().andBlogIdEqualTo( comment.getBlogId() );
        PageHelper.startPage( pageNo, Constant.PAGE_SIZE );

        List<Comment> comments = commentDao.selectByExample( example );

        PageInfo<Comment> pageInfo = new PageInfo<>( comments );

        for (Comment comment1 : comments) {
            System.out.println( comment1.getId() + "   内容：" + comment1.getContent() );
        }

        
        return pageInfo;
    }
}

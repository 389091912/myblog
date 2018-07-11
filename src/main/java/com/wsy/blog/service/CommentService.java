package com.wsy.blog.service;

import com.github.pagehelper.PageInfo;
import com.wsy.blog.entity.Comment;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-11
 * Time: 18:13
 */
public interface CommentService {

    public void addComment(Comment comment);

    public List<Comment> findCommentsByAjax(Comment comment);

    public PageInfo<Comment> findAllComment(int pageNo, Comment comment);


}

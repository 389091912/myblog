package com.wsy.blog.service;

import com.github.pagehelper.PageInfo;
import com.wsy.blog.entity.Blog;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-11
 * Time: 18:12
 */
public interface BlogService {


    public void addBlog(Blog blog);

    public List<Blog> findAllBlog(Blog blog);

    public PageInfo<Blog> findBlogByAjax(int pageNo, Blog blog);

}

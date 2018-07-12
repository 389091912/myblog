package com.wsy.blog.service;

import com.github.pagehelper.PageInfo;
import com.wsy.blog.entity.Blog;
import org.apache.commons.fileupload.FileUploadException;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-11
 * Time: 18:12
 */
public interface BlogService {


    public void addBlog(Blog blog, @RequestParam CommonsMultipartFile file, HttpSession session) throws FileUploadException;

    public List<Blog> findAllBlog(Blog blog);

    public PageInfo<Blog> findBlogByAjax(int pageNo, Blog blog);

    public Blog findBlogById(Integer id);

}

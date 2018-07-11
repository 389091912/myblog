package com.wsy.blog.controller;

import com.github.pagehelper.PageInfo;
import com.wsy.blog.entity.Blog;
import com.wsy.blog.service.BlogService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-11
 * Time: 18:23
 */
@Api(value = "博客")
@RequestMapping("/blog")
@RestController
public class BlogController {

    @Autowired
    private BlogService blogService;

    @ApiOperation(value="获取用户列表", notes="")
    @RequestMapping(value={""}, method= RequestMethod.GET)
    public List<Blog> getUserList() {
        List<Blog> r = new ArrayList<Blog>();
        return r;
    }


    @ApiOperation(value = "异步获取博客信息", notes ="")
    @RequestMapping(value ="/findBlogByAjax",method = RequestMethod.POST)
    public PageInfo<Blog> findBlogByAjax(HttpServletRequest request, Blog blog) {
        String pageNoStr = request.getParameter("pageNo");
        int pageNo = 1;
        try {
            pageNo = Integer.parseInt(pageNoStr);
        } catch (NumberFormatException e) {
            pageNo = 1;
        }

        PageInfo<Blog> blogPageInfo = blogService.findBlogByAjax( pageNo, blog );

        request.setAttribute( "blogList", blogPageInfo );

        List<Blog> blogList = blogPageInfo.getList();

        for (Blog blog1 : blogList) {

            System.out.println( "id=" + blog1.getId() + "    ,title=" + blog1.getTitle() );
        }

        return blogPageInfo;
    }





}


package com.wsy.blog.controller;

import com.github.pagehelper.PageInfo;
import com.wsy.blog.entity.Blog;
import com.wsy.blog.service.BlogService;
import com.wsy.blog.until.StringUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-11
 * Time: 18:23
 */

@Api(value = "博客")
@RequestMapping("/blog")
@Controller
public class BlogController {

    @Autowired
    private BlogService blogService;



    @ApiOperation(value = "异步获取博客信息", notes ="")
    @RequestMapping(value = "/findBlogByAjax", method = RequestMethod.POST)
    @ResponseBody
    public PageInfo<Blog> findBlogByAjax(HttpServletRequest request, Blog blog) {
        String pageNoStr = request.getParameter("pageNo");
        int pageNo = 1;
        try {
            pageNo = Integer.parseInt(pageNoStr);
        } catch (NumberFormatException e) {
            pageNo = 1;
        }

        PageInfo<Blog>  blogPageInfo = blogService.findBlogByAjax( pageNo, blog );

        request.setAttribute( "blogList", blogPageInfo );

        List<Blog> blogList = blogPageInfo.getList();

        for (Blog blog1 : blogList) {

            System.out.println( "id=" + blog1.getId() + "    ,title=" + blog1.getTitle() );
        }

        return blogPageInfo;
    }


    @ApiOperation(value = "获取博客信息")
    @RequestMapping(value ="/findBlogById",method = RequestMethod.GET)
    public String findBlogById(HttpServletRequest request, Integer id) {

        Blog blogById = blogService.findBlogById( id );

        System.out.println("当前博客为 :"+blogById.toString());

        request.setAttribute( "blog", blogById );

        return "view";
    }
    @ApiOperation(value = "添加博客")
    @RequestMapping(value ="/addBlog",method = RequestMethod.POST)
    public String addBlog(HttpServletRequest request, Blog blog,@RequestParam CommonsMultipartFile file) {

        blog.setCreateDate( StringUtil.patternDate( new Date() ) );
        return "redirect:/index";
    }

}


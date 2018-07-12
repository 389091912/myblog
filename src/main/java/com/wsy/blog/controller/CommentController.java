package com.wsy.blog.controller;

import com.github.pagehelper.PageInfo;
import com.wsy.blog.entity.Blog;
import com.wsy.blog.entity.Comment;
import com.wsy.blog.service.CommentService;
import com.wsy.blog.until.AjaxResult;
import com.wsy.blog.until.StringUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-11
 * Time: 18:24
 */
@Api(value = "评论")
@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;


    @ApiOperation(value = "获取当前博客评论", notes ="")
    @RequestMapping(value = "/findCommentByAjax", method = RequestMethod.POST)
    @ResponseBody
    public PageInfo<Comment> findCommentByAjax(HttpServletRequest request, Comment comment) {
        String pageNoStr = request.getParameter("pageNo");
        int pageNo = 1;
        try {
            pageNo = Integer.parseInt(pageNoStr);
        } catch (NumberFormatException e) {
            pageNo = 1;
        }

        PageInfo<Comment>  commentPageInfo = commentService.findCommentsByAjax( pageNo, comment );

        request.setAttribute( "commentList", commentPageInfo );


        return commentPageInfo;
    }

    @ApiOperation(value = "添加评论")
    @RequestMapping(value ="/addComment",method = RequestMethod.POST)
    @ResponseBody
    public AjaxResult addComment(HttpServletRequest request, Comment comment) {

        comment.setCommentDate( StringUtil.patternDate( new Date() ) );
        commentService.addComment( comment );

        return null;
    }

}

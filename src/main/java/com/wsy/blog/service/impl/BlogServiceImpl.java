package com.wsy.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wsy.blog.constant.Constant;
import com.wsy.blog.dao.BlogMapper;
import com.wsy.blog.entity.Blog;
import com.wsy.blog.service.BlogService;
import com.wsy.blog.until.StringUtil;
import org.apache.commons.fileupload.FileUploadException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-11
 * Time: 18:16
 */
@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class BlogServiceImpl implements BlogService {


    @Autowired
    private BlogMapper blogDao;


    @Override
    public void addBlog(Blog blog, CommonsMultipartFile file, HttpSession session) throws FileUploadException {

        String path = session.getServletContext().getRealPath("/")+"upload/";
        System.out.println( path );

        String fileName = StringUtil.renameFileName( file.getOriginalFilename() );
        try {
            file.transferTo( new File( path,fileName ) );
        } catch (IOException e) {
            e.printStackTrace();
            throw new FileUploadException("文件上传出错",e);
        }

        blog.setImagePath( path+fileName );
        blog.setCreateDate( StringUtil.patternDate( new Date() ) );
        blogDao.insertSelective( blog );
    }

    @Override
    public List<Blog> findAllBlog(Blog blog) {

        return null;
    }

    @Override
    public PageInfo<Blog> findBlogByAjax(int pageNo, Blog blog) {
        
        PageHelper.startPage( pageNo, Constant.PAGE_SIZE );

        List<Blog> blogList = blogDao.selectByAjax( blog );

        PageInfo<Blog> pageInfo = new PageInfo<>(blogList);

        return pageInfo;
    }

    @Override
    public Blog findBlogById(Integer id) {

        Blog blog = blogDao.selectByPrimaryKey( id );

        return blog;
    }

}

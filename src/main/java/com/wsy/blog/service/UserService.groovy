package com.wsy.blog.service

import com.wsy.blog.entity.User
import org.apache.ibatis.annotations.Param

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-12
 * Time: 1:45
 */
interface UserService {

    void addUser(User user)

    List<User> findAllUser()

    List<User> findByAjax(User user)

    User findByPrimaryKey(@Param("id") Integer id)

    void modifyUser(User user)

}
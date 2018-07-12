package com.wsy.blog.dao

import com.wsy.blog.entity.User
import org.apache.ibatis.annotations.Param

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-12
 * Time: 16:08
 */
interface UserDao {

    void insert(User user)

    List<User> selectAllUser()

    List<User> selectByAjax(User user)
    
    User selectByPrimaryKey(@Param("id") Integer id)

    void updateUser(User user)

}
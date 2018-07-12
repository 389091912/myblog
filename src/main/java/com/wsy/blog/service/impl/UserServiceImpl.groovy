package com.wsy.blog.service.impl

import com.wsy.blog.dao.UserDao
import com.wsy.blog.entity.User
import com.wsy.blog.service.UserService
import org.apache.ibatis.annotations.Param
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Propagation
import org.springframework.transaction.annotation.Transactional

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-12
 * Time: 1:46
 */
@Service
@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
class UserServiceImpl implements UserService {


    @Autowired
    private UserDao userDao


    @Override
    void addUser(User user) {

    }

    @Override
    List<User> findAllUser() {
        return userDao.selectAllUser()

    }

    @Override
    List<User> findByAjax(User user) {
        return null
    }

    @Override
    User findByPrimaryKey(@Param("id") Integer id) {
        return null
    }

    @Override
    void modifyUser(User user) {

    }
}

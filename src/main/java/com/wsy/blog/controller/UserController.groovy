package com.wsy.blog.controller

import com.wsy.blog.entity.User
import com.wsy.blog.service.UserService
import com.wsy.blog.until.AjaxResult
import io.swagger.annotations.Api
import io.swagger.annotations.ApiOperation
import jdk.internal.org.objectweb.asm.tree.analysis.Value
import org.apache.ibatis.mapping.ResultMapping
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody
import org.springframework.web.bind.annotation.RestController
import sun.security.krb5.internal.APOptions

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse
import java.lang.invoke.MethodType

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-12
 * Time: 16:17
 */

@Api("用户表")
@RequestMapping("/user")
@RestController
class UserController {

    @Autowired
    private UserService userService


    @ApiOperation(value = "添加用户")
    @PostMapping("/addUser")
    public String addUser(HttpServletRequest request, User user) {

        return  ""
    }

    @ApiOperation(value = "查找所有用户")
    @RequestMapping(value = "/findAllUser", method = RequestMethod.GET)
    public String findAllUser(HttpServletRequest request,HttpServletResponse response) {

        def result = new AjaxResult()



        def users = userService.findAllUser()

        for (User user1 : users) {
            println("用户为：" + user1.toString())
        }

        for (user in users) {
            println("groovy 用户为 :" + user)
        }
        return "user"
    }

}

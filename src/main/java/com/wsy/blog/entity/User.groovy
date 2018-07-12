package com.wsy.blog.entity

import groovy.transform.Canonical

/**
 * Created by IntelliJ IDEA.
 * User: wsy
 * Date: 2018-07-12
 * Time: 15:59
 */

class User {
    protected Integer id
    protected String username
    protected String password
    protected String age
    protected String address
    protected String ip
    protected Date createDate
    protected Date recentLoginDate
    protected String status


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", age='" + age + '\'' +
                ", address='" + address + '\'' +
                ", ip='" + ip + '\'' +
                ", createDate=" + createDate +
                ", recentLoginDate=" + recentLoginDate +
                ", status='" + status + '\'' +
                '}';
    }
}

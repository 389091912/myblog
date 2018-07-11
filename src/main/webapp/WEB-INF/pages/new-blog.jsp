<%--
  Created by IntelliJ IDEA.
  User: wsy
  Date: 2018-07-11
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>个人博客系统</title>
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/newblog.css" rel="stylesheet">
    <!-- 返回顶部调用 begin -->
    <link href="${pageContext.request.contextPath}/css/topto.css" rel="stylesheet" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
</head>

<body>
<!--header start-->
<header>
    <nav id="nav">
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/index" class="nav_current">博客首页</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/about">关于我</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/new-blog">新文章</a>
            </li>
        </ul>
    </nav>
</header>
<!--header end-->
<div class="blogs">
    <div class="send-msg">
        <div>
            <label for="" class="title-msg">文章标题</label>
            <input type="text" class="title">
        </div>
        <div>
            <label for="" class="title-msg">文章正文</label>
            <textarea name="" rows="30"></textarea>
        </div>
        <div class="btn">
            <input type="button" name="" id="" value="发表">
        </div>
    </div>
</div>
</div>
<!--mainbody end-->
<footer>
    <div class="footer-bottom">
        <p>2017年10月14日</p>
    </div>
</footer>
<!-- jQuery仿腾讯回顶部和建议 代码开始 -->
<div id="tbox">
    <a id="gotop" href="javascript:void(0)"></a>
</div>
<!-- 代码结束 -->
</body>
</html>
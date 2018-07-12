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
    <style type="text/css">
        .file {
            position: relative;
            display: inline-block;
            background: #D0EEFF;
            border: 1px solid #99D3F5;
            border-radius: 4px;
            padding: 4px 12px;
            overflow: hidden;
            color: #1E88C7;
            text-decoration: none;
            text-indent: 0;
            line-height: 20px;
            width: 100%;
            text-align: center;
        }

        .file:hover {
            background: #AADFFD;
            border-color: #78C3F3;
            color: #004974;
            text-decoration: none;
        }

        .file:focus {
            background: #AADFFD;
            border-color: #78C3F3;
            color: #004974;
            text-decoration: none;
        }
        html,body {
            height: 100%;
        }

        body > .wrap-cc{
            min-height: 100%;
        }

        .content-cc{
            /* padding-bottom 等于 footer 的高度 */
            padding-bottom: 80px;
        }

        .footer-cc {
            width: 100%;
            height: 80px;
            /* margin-top 为 footer 高度的负值 */
            margin-top: -80px;
        }
    </style>
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
    <form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
    <div class="send-msg">

        <div>
            <label for="" class="title-msg">文章标题</label>
            <input type="text" class="title">
        </div>
        <div>
            <label for="" class="title-msg">图片</label>
            <input type="file" class="title" >
        </div>
        <div>
            <label for="" class="title-msg">文章正文</label>
            <textarea name="" rows="15"></textarea>
        </div>
        <div class="btn">
            <input type="button" name="" id="" value="发表">
        </div>
    </div>
    </form>
</div>
</div>
<!--mainbody end-->
<footer>
    <div class="footer-bottom">
        <p id="timeTemplate">2018年10月14日</p>
    </div>
</footer>

<script>

    $(()=>{

        let date = new Date();
        let month = (date.getMonth() + 1).toString().padStart(2,'0');
        let day=String(date.getDate()).padStart(2,"0");
        let time = date.getFullYear() + "年" + month  + "月" + day+"日";

        $("#timeTemplate").text(time);
        console.log(time);
    });

</script>
<!-- jQuery仿腾讯回顶部和建议 代码开始 -->
<div id="tbox">
    <a id="gotop" href="javascript:void(0)"></a>
</div>
<!-- 代码结束 -->
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: wsy
  Date: 2018-07-11
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>个人博客系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/view.css" rel="stylesheet">
    <!-- 返回顶部调用 begin -->
    <link href="${pageContext.request.contextPath}/css/topto.css" rel="stylesheet" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-paginator.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-mypaginator.js"></script>
    <script src="${pageContext.request.contextPath }/js/template-web.js" charset="utf-8" ></script>
    <!-- 返回顶部调用 end-->

    <script type="text/javascript" charset="utf-8">
        myoptions.onPageClicked = function(event, originalEvent, type, page){
            ajaxLoadData({
                'pageNo': page,
                'blogId':$("#blogId").val()
            });
        };
        $(function () {
            ajaxLoadData({
                'pageNo': 1,
                'blogId': $("#blogId").val()
            });

        });
        function ajaxLoadData(params){
            $.ajax({
                "type": "post",
                "dataType": "json",
                "url" : "${pageContext.request.contextPath }/comment/findCommentByAjax",
                "data" : params,
                "success" : function(data){
                    var list = data.list;//当前页的数据数组
                    console.log(list);
                    $("#commentList").html("");
                    var d = {
                        "commentList": list  //json
                    };
                    var txt = template("commentListTemplate", d);

                    $("#commentList").html(txt);

                    var totalPages = data.pages;//新数据的总页数
                    if(totalPages == 0){
                        totalPages = 1;
                    }
                    $("#pageNo").val(params.pageNo);
                    myPaginatorFun("myPages", params.pageNo, totalPages);
                },

                "error" : function(){
                    alert("error ！！");
                }
            });
        }
    </script>
    <style type="text/css">
        #commentContent {
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
<div id="mainbody">
    <input type="hidden" id="pageNo" value="${commentList.pageNum}">
    <input type="hidden" id="blogId" value="${blog.id}">
    <!--blog start-->
    <div class="blogs">
        <!--content start-->
        <div id="index_view">
            <h1 class="c_titile">${blog.title}</h1>
            <p class="box">发布时间：${blog.createDate}</p>
            <ul>
                <p><img src="${pageContext.request.contextPath}/images/post1.jpg"></p>

                <p>${blog.content}</p>
            </ul>
        </div>
        <!--content end-->
        <!--msgs start-->
        <ul id="msgs">
            <!-- msg start-->
            <div class="title">
						<span>
							文章评论
						</span>
            </div>
            <div id="commentList">

            </div>

            <script id="commentListTemplate" type="text/html">
                {{each commentList as comment}}
                <li>
                    <div class="msg">
                        <!--三角形-->
                        <div class="msgti"></div>
                        <!--圆形-->
                        <div class="msgci"></div>
                        <ul class="msgtime">
                            <li class="icon-time">
                                {{comment.commentDate}}
                            </li>
                        </ul>
                        <ul class="textinfo">
                            <p> {{comment.content}}</p>
                        </ul>
                    </div>
                </li>
                {{/each}}
            </script>

        </ul>

        <!-- 分页 -->
        <div style="text-align: center;">
            <ul id="myPages"></ul>
            <input id="currentPageInput" type="hidden" value="" />
        </div>

        <!--msgs end-->
        <div class="send-msg">
            <textarea name="content" id="commentContent" rows="10"></textarea>
            <div class="btn">
                <input type="button" name="submit" id="submit" value="评论" />
            </div>
        </div>

        <script>
            $( ()=> {

                $("#submit").click(()=>{

                    $.ajax({
                        type: "post",
                        url: "",
                        data: {
                            "blogId": $("#blogId").val(),
                            "content": $("#commentContent").val()
                        },
                        dataType: "json",
                        success: (result) => {


                        },
                        error:()=> {
                            alert("ajax错误")
                        }

                    });


                });



            });
        </script>

    </div>
    <!--blog end-->
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
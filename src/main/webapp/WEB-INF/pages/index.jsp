<%--
  Created by IntelliJ IDEA.
  User: wsy
  Date: 2018-07-11
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>个人博客系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animation.css" rel="stylesheet">
    <!-- 返回顶部调用 begin -->
    <link href="${pageContext.request.contextPath}/css/topto.css" rel="stylesheet" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap-paginator.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap-mypaginator.js"></script>
    <script src="${pageContext.request.contextPath}/js/template-web.js" charset="utf-8"></script>
    <!-- 返回顶部调用 end-->
    <script>
       // loadData();

        let myPageNo = 1;
        $("#loadDataUserIdInput").val("");//清空缓存

        let loadData1=()=>{
            let data = {
                "pageNo": 1,
                "id": $("#loadDataUserIdInput").val()
                /*
                    "createDate": ""
                */
            };

            $.ajax({
                "type": "post",
                "dataType": "json",
                "url" : "${pageContext.request.contextPath }/blog/findBlogByAjax",
                "data" : data,
                "success" : (data)=>{
                    let list = data.list;//当前页的数据数组
                    let len = list.length;
                    console.log("data.pages=" + data.pages);
                    $("#loadDataUserIdInput").val(list[len - 1].id);
                    //方式2
                    let d = {
                        "blogList": list
                    };
                    let txt = template("blogListTemplate", d);
                    $("#blogList").append(txt);

                    if(data.pages == 1){
                        $(".load-more").html("<span>已经到底了...</span>");
                    }
                },
                "error" : ()=>{
                    alert("error");
                }
            });

        };
       loadData1();


        function loadData(){
            let data = {
                "pageNo": 1,
                "id": $("#loadDataUserIdInput").val()/*,
                "createDate": ""*/
            };
          /*  console.log("data===", data);*/
            $.ajax({
                "type": "post",
                "dataType": "json",
                "url" : "${pageContext.request.contextPath }/blog/findBlogByAjax",
                "data" : data,
                "success" : function(data){
                    let list = data.list;//当前页的数据数组
                    let len = list.length;
                    console.log("data.pages=" + data.pages);
                    $("#loadDataUserIdInput").val(list[len - 1].id);
                    //方式2
                    let d = {
                        "blogList": list
                    };
                    let txt = template("blogListTemplate", d);
                    $("#blogList").append(txt);

                    if(data.pages == 1){
                        $(".load-more").html("<span>已经到底了...</span>");
                    }

                },
                "error" : function(){
                    alert("error");
                }
            });
        }

    </script>
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
    <div class="info">
        <figure>
            <img src="${pageContext.request.contextPath}/images/art.jpg" alt="Panama Hat">
            <figcaption>
                <strong>渡人如渡己，渡已，亦是渡</strong>当我们被误解时，会花很多时间去辩白。 但没有用，没人愿意听，大家习惯按自己的所闻、理解做出判别，每个人其实都很固执。与其努力且痛苦的试图扭转别人的评判，不如默默承受，给大家多一点时间和空间去了解。而我们省下辩解的功夫，去实现自身更久远的人生价值。其实，渡人如渡己，渡已，亦是渡人。
            </figcaption>
        </figure>
        <div class="card">
            <h1>我的名片</h1>
            <p>网名：DanceSmile | 即步非烟</p>
            <p>职业：Web前端设计师、网页设计</p>
            <p>电话：13662012345</p>
            <p>Email：dancesmiling@qq.com</p>
            <ul class="linkmore">
                <li>
                    <a href="/" class="talk" title="给我留言"></a>
                </li>
                <li>
                    <a href="/" class="address" title="联系地址"></a>
                </li>
                <li>
                    <a href="/" class="email" title="给我写信"></a>
                </li>
                <li>
                    <a href="/" class="photos" title="生活照片"></a>
                </li>
                <li>
                    <a href="/" class="heart" title="关注我"></a>
                </li>
            </ul>
        </div>
    </div>
    <!--info end-->
    <div class="blank"></div>
    <div class="blogs">
        <ul class="bloglist">
            <!-- item start-->
            <div id="blogList">

            </div>

            <script id="blogListTemplate" type="text/html" >
                {{each blogList as blog}}
                <li>
                    <div class="arrow_box">
                        <!--三角形-->
                        <div class="ti"></div>
                        <!--圆形-->
                        <div class="ci"></div>
                        <h2 class="title">
                            <a href="/" target="_blank">{{blog.title}}</a>
                        </h2>
                        <ul class="textinfo">
                            <a href="/">
                                <img src="${pageContext.request.contextPath}/images/s1.jpg">
                            </a>
                            <p> {{blog.content}}</p>
                        </ul>
                        <ul class="details">
                            <li class="icon-time">
                                <a href="#">{{blog.recentlyDate}}</a>
                            </li>
                            <li class="comments">
                                <a href="#">{{blog.commentSum}}</a>
                            </li>
                        </ul>
                    </div>
                </li>

                {{/each}}
            </script>
            <!-- item end-->
            <li>
                <div class="load-more">
                    <input type="hidden" id="loadDataUserIdInput" value="" />
                    <span onclick="loadData()">加载更多...</span>
                </div>
            </li>
        </ul>
        <!--bloglist end-->
        <aside>
            <div class="viny">
                <dl>
                    <dt class="art">
                        <img src="https://y.gtimg.cn/music/photo_new/T002R300x300M000003lBCl74Fspmo.png" alt="专辑">
                    </dt>
                    <dd class="icon-song"><span></span>九张机</dd>
                    <dd class="icon-artist"><span></span>歌手：叶炫清</dd>
                    <dd class="icon-album"><span></span>所属专辑：《九张机》</dd>
                    <dd class="music">
                        <audio src="http://ws.stream.qqmusic.qq.com/203015893.m4a?fromtag=46" controls="controls"></audio>
                    </dd>
                </dl>
            </div>
            <div class="tuijian">
                <h2>最新留言</h2>
                <ol>
                    <li>
                        <span><strong>1</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>2</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>3</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>4</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>5</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>6</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>7</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>8</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>9</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                    <li>
                        <span><strong>10</strong></span>
                        <a href="/">留言留言留言留言留言留言留言留言留言留言留言留言</a>
                    </li>
                </ol>
            </div>
        </aside>
    </div>
    <!--blogs end-->
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

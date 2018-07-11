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
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/view.css" rel="stylesheet">
    <!-- 返回顶部调用 begin -->
    <link href="${pageContext.request.contextPath}/css/topto.css" rel="stylesheet" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
    <!-- 返回顶部调用 end-->
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
    <!--blog start-->
    <div class="blogs">
        <!--content start-->
        <div id="index_view">
            <h1 class="c_titile">现在，我相信爱情！</h1>
            <p class="box">发布时间：2013-07-25</p>
            <ul>
                <p><img src="${pageContext.request.contextPath}/images/post1.jpg"></p>
                <p> 茫茫人海里遇见一个人有多难？有时候很难，几十亿人，一生也难见一次。有时却很容易，人群中第一眼就能把他认出来。我们总在不设防的时候喜欢上一些人。没什么原因，也许只是一个温和的笑容，一句关切的问候。可能未曾谋面，可能志趣并不相投，可能不在一个高度，却牢牢地放在心上了。冥冥中该来则来，无处可逃，就好像喜欢一首歌，往往就因为一个旋律或一句打动你的歌词。喜欢或者讨厌，是让人莫名其妙的事情。 </p>
                <p> 从前，我不相信爱情，现在我相信。世界上唯一比被爱更幸福的，就是去爱；唯一比被爱更幸运的，就是在茫茫人海中，找到值得爱的人。作家杜拉斯说“爱之于我，不是肌肤之亲，不是一蔬一饭，它是一种不死的欲望，是疲惫生活中的英雄梦想。” </p>
                <p>可能我不懂得煽情，我学不会安慰别人，每次看到别人伤心，我总是生硬的问句怎么了，别想太多了。我学不会思念，即使很长时间没见，我也不会主动打电话发短信说句我好想你之类的话。每次想要为别人做什么的时候还总是态度强硬闹得不愉快，可这就是我的方式，如果爱我，请接受这样的我。 </p>
                <p>若，能让你我一起走过，那么，我奢求是地老天荒的时候你仍然牵着我的手，然后慢慢的一起变老。在月下，我们一起听风切切的吟，听曲轻轻的扬。我想，生活中没有比这更醉人的浪漫。于是，我的世界里有了一个独特的你，你的世界里多了一个平凡的我。</p>
                <p>我们都不是没有原则的人。但一辈子那么长，总会遇到某些人、某些事，打破了自己毕生坚持的原则。总要过几年出乎意料的日子、有几度疲劳揪心的挣扎，才算真正递交了“阅历”的答卷。一生真正深刻的，其实也不过就是那几年。经历到最后会明白，把时间浪费在难忘的时间里，一点也不后悔。 </p>
                <p> 爱到浪漫，是刚开始。爱到痛苦，是要分手。爱到平淡，就该结婚。感情发展到不同时期，就要做不同事。没有一辈子的浪漫和甜蜜，真正能长伴你身边的，只是慢慢老去的熟悉。情浓时说的一切都不可信，情淡时的每一天才是真。 </p>
                <p>只要我们真正相爱，哪怕只有一天，一个小时，我们就不应该再有一刀两断的日子。也许你会在将来不爱我，也许你要离开我，但是我永远对你负有责任，就是你的一切苦难就永远是我的。我觉得我爱了你了，从此以后，不管什么时候，我都不能对你无动于衷。</p>
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
            <li>
                <div class="msg">
                    <!--三角形-->
                    <div class="msgti"></div>
                    <!--圆形-->
                    <div class="msgci"></div>
                    <ul class="msgtime">
                        <li class="icon-time">
                            2017年10月14日 23:43:17
                        </li>
                    </ul>
                    <ul class="textinfo">
                        <p>这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言</p>
                    </ul>
                </div>
            </li>
            <!-- msg end-->
            <!-- msg start-->
            <li>
                <div class="msg">
                    <!--三角形-->
                    <div class="msgti"></div>
                    <!--圆形-->
                    <div class="msgci"></div>
                    <ul class="msgtime">
                        <li class="icon-time">
                            2017年10月14日 23:43:17
                        </li>
                    </ul>
                    <ul class="textinfo">
                        <p>这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言</p>
                    </ul>
                </div>
            </li>
            <!-- msg end-->
            <!-- msg start-->
            <li>
                <div class="msg">
                    <!--三角形-->
                    <div class="msgti"></div>
                    <!--圆形-->
                    <div class="msgci"></div>
                    <ul class="msgtime">
                        <li class="icon-time">
                            2017年10月14日 23:43:17
                        </li>
                    </ul>
                    <ul class="textinfo">
                        <p>这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言这是留言</p>
                    </ul>
                </div>
            </li>
            <!-- msg end-->
        </ul>
        <!--msgs end-->
        <div class="send-msg">
            <textarea name="" rows="10"></textarea>
            <div class="btn">
                <input type="button" name="" id="" value="评论" />
            </div>
        </div>
    </div>
    <!--blog end-->
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
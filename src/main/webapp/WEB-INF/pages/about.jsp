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
    <link href="${pageContext.request.contextPath}/css/animation.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/about.css" rel="stylesheet">
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
    <div class="info">
        <figure>
            <p>我是一个对理想有着执着追求的人，坚信是金子总会发光。大学毕业后的工作，让我在文案策划方面有了很大的提高，文笔流畅，熟悉传媒工作、广告学制作与设计等工作方面。为人热情，活泼，大方， 本人好学上进，诚信、敬业、责任心强，有强烈的团体精神，对工作认真积极，严谨负责。</p>
            <p>本人性格内外结合,适应能力强，为人诚实，有良好的人际交往能力，具备相关的专业知识和认真。细心、耐心的工作态度及良好的职业道德修养。相信团体精神的我对工作认真负责，总希望能把事情做得更好! 性格开朗，对文字语言和数字敏感，对生活充满希望，对工作充满热情! 能在短期间内适应新环境，有强烈的品质意识;对工作认真负责，上进心强! 懂电脑基本操作，熟练小键盘操作!</p>
            <p>我的理念是：在年轻的季节我甘愿吃苦受累，只愿通过自己富有激情、积极主动的努力实现自身价值并在工作中做出最大的贡献： 作为初学者，我具备出色的学习能力并且乐于学习、敢于创新，不断追求卓越; 作为参与者，我具备诚实可信的品格、富有团队合作精神;作为领导者，我具备做事干练、果断的风格，良好的沟通和人际协调能力。受过系统的经济文化相关专业知识训练，有很强的忍耐力、意志力和吃苦耐劳的品质，对工作认真负责，积极进取，个性乐观执着，敢于面对困难与挑战。</p>
            <p>为了企业公司的利益而早想，为了在企业公司付出个人的思想文化能力水平，尽心尽力的忠诚于企业公司，企业公司这样才有利于我的发展目标，去脚踏实地奋斗实现我的梦想，追求一些生活物资财富等。努力的为企业公司慢慢的壮观强大的发展起来，成功的阶段慢慢的有所提高，在社会上可以抬得起头，在社会上出名知名度和良好的方面。在企业公司上贡献我的人生价值和风度能力水平，在社会上全方面的体会出来。</p>
            <p>看过了我的个人简历自我介绍信息的企业公司领导人们，请合格同意批准我进入企业公司的工作方面，积极面对企业公司的工作，适合企业公司环境的范围，投入企业公司工作方面的用途和了解，慢慢的习惯起来这企业公司的这一项目职业道路的发展空间。。</p>
            <p>如果有幸能进入贵公司，我会保持“一荣俱荣，永争第一”的企业精神，全身心的工作，为企业创造利益，希望领导考虑我，谢谢!</p>
        </figure>
        <div class="card">
            <h1>我的名片</h1>
            <div class="userimg">
                <img src="${pageContext.request.contextPath}/images/user.jpg"/>
            </div>
            <p>网名：DanceSmile | 即步非烟</p>
            <p>职业：Web前端设计师、网页设计</p>
            <p>电话：13662012345</p>
            <p>Email：dancesmiling@qq.com</p>
        </div>
    </div>
    <!--info end-->
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
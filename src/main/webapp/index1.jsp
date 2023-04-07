<%--
  Created by IntelliJ IDEA.
  User: 10400
  Date: 2022/11/28
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>中国梦</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family:"楷体";
            padding: 20px;
            background: linear-gradient(120deg,#e0c3fc 0%,#8ec5fc 100%);
        }

        /* 页眉/Blog 标题 */
        .header {
            padding: 30px;
            text-align: center;
            background: red;
        }

        .header h1 {
            font-size: 50px;
        }

        p{
            font-size: 20px;
        }

        p1{
            font-size: 15px;
        }

        /* 设置上导航栏的样式 */
        .topnav {
            overflow: hidden;
            background-color: black;
            position: -webkit-sticky;
            position: sticky;
            top: 0;
        }

        /* 设置 topnav 链接的样式 */
        .topnav a {
            float: left;
            display: block;
            color: #f1f1f1;
            text-align: center;
            padding: 16px 18px;
            text-decoration: none;
            font-weight: bold;
        }

        /* 改变鼠标悬停时的颜色 */
        .topnav a:hover {
            background-color: #2931ab;
            color: white;
            font-weight: bold;
        }

        /* 创建两个不相等的彼此并排的浮动列 */
        /* 左列 */
        .leftcolumn {
            float: left;
            width: 75%;
        }

        /* 右列 */
        .rightcolumn {
            float: left;
            width: 25%;
            background-color: #d2ceff;
            padding-left: 20px;
        }

        /* 为文章添加卡片效果 */
        .card {
            background-color: white;
            padding: 20px;
            margin-top: 20px;
        }

        /* 清除列之后的浮动 */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        li{
            list-style:none;
        }

        ul{
            position: absolute;
            top:930px;
            right: 500px;
        }
        ul>li{
            width: 25px;
            height: 25px;
            text-align: center;
            line-height: 25px;
            background-color: rgba(0,0,0,0.2);
            margin: 5px;
            display: inline-block;
            color: #fff;
            cursor: pointer;
        }
        ul>li:hover{
            background-color: #000;
        }

        /* 页脚 */
        .footer {
            padding: 20px;
            text-align: center;
            background: black;
            margin-top: 20px;
        }

        .footer h1 {
            color: white;
            float: left;
            font-size: 20px;
            transform: translateY(-22px);
            letter-spacing: -0.03em;
            display: block;
        }

        .time-temp{
            transform: translateY(-9px);
            color: white;
            display: block;
            float: left;
            font-size: 20px
        }

        .text{
            transform: translateY(-8px);
            color: white;
            align-items: center;
            letter-spacing: -0.03em;
            display: block;
            float: left;
            font-size: 20px
        }

        /* 响应式布局 - 当屏幕的宽度小于 800 像素时，使两列堆叠而不是并排 */
        @media screen and (max-width: 800px) {
            .leftcolumn, .rightcolumn {
                width: 100%;
                padding: 0;
            }
        }

        /* 响应式布局 - 当屏幕的宽度小于 400 像素时，使导航链接堆叠而不是并排 */
        @media screen and (max-width: 400px) {
            .topnav a {
                float: none;
                width: 100%;
            }
        }
    </style>
</head>
<body>
<div></div>
<div class="header">
    <img src="img/标题.jpg" height="150" width="250"/>
</div>

<div class="topnav">
    <a href="index1.jsp">中国梦的概念</a>
    <a href="ziye.jsp">文明寻梦</a>
    <a href="ziye1.jsp">红色英雄</a>
    <a href="#" style="float:right">${user.username}</a>
</div>

<div class="row">
    <div class="leftcolumn">
        <div class="card">
            <h2></h2>
            <img id="myimage" border="0" src="img/1.jpg" width="1180" height="600" style="...">
            <ul>
                <li>1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
            </ul>
        </div>
        <div class="card">
            <h2>中国梦</h2>
            <p>中国梦，是中国共产党第十八次全国代表大会召开以来 ，习近平总书记所提出的重要指导思想和重要执政理念，正式提出于2012年11月29日。习总书记把“中国梦”定义为“实现中华民族伟大复兴，就是中华民族近代以来最伟大梦想”，并且表示这个梦“一定能实现”。“中国梦”的核心目标也可以概括为“两个一百年”的目标，也就是：到2021年中国共产党成立100周年和2049年中华人民共和国成立100周年时，逐步并最终顺利实现中华民族的伟大复兴，具体表现是国家富强、民族振兴、人民幸福，实现途径是走中国特色的社会主义道路、坚持中国特色社会主义理论体系、弘扬民族精神、凝聚中国力量，实施手段是政治、经济、文化、社会、生态文明五位一体建设。</p>
            <p>2017年10月18日，习近平同志在十九大报告中指出，实现中华民族伟大复兴是近代以来中华民族最伟大的梦想。中国共产党一经成立，就把实现共产主义作为党的最高理想和最终目标，义无反顾肩负起实现中华民族伟大复兴的历史使命，团结带领人民进行了艰苦卓绝的斗争，谱写了气吞山河的壮丽史诗。习近平指出，实现伟大梦想，必须进行伟大斗争；必须建设伟大工程；必须推进伟大事业。</p>
        </div>
        <div class="card">
            <h3>概念阐释</h3>
            <p1>2012年11月29日，在国家博物馆，中共中央总书记习近平在参观“复兴之路”展览时，第一次阐释了“中国梦”的概念。他说：“大家都在讨论中国梦。我认为，实现中华民族伟大复兴，就是中华民族近代以来最伟大的梦想。”他称，到中国共产党成立100年时全面建成小康社会的目标一定能实现，到新中国成立100年时建成富强民主文明和谐的社会主义现代化国家的目标一定能实现，中华民族伟大复兴的梦想一定能实现。2013年3月17日，中国新任国家主席习近平在十二届全国人大一次会议闭幕会上，向全国人大代表发表自己的就任宣言。在将近25分钟的讲话中，习近平9次提及“中国梦”，44次提到“人民”，共获得了10余次掌声，有关“中国梦”的论述更一度被掌声打断。习近平总书记深情阐述“中国梦”：一定能实现！习近平表示，到中国共产党成立100年时全面建成小康社会的目标（1921+100=2021，即2021年），到新中国成立100年时中华民族伟大复兴的梦想一定能实现（1949+100=2049，即2049年）。 </p1>
            <p1>中国梦的特色：中国梦的最大特点就是把国家、民族和个人作为一个命运的共同体，把国家利益、民族利益和每个人的具体利益都紧紧地联系在一起。</p1>
        </div>
    </div>
    <div class="rightcolumn">
        <div class="card">
            <h2>必经之路</h2>
            <p>中国特色社会主义道路的内涵与指向，与民族伟大复兴的宏伟目标是一致的、吻合的，只有经由中国特色社会主义道路，才能实现民族伟大复兴的宏伟目标。</p>
            <p>实现中华民族伟大复兴的中国梦，是近代以来国人的理想和追求，而其关键在于选择正确的发展道路。习近平总书记在参观《复兴之路》展览后强调：改革开放以来，我们总结历史经验，不断艰辛探索，终于找到了实现中华民族伟大复兴的正确道路，取得了举世瞩目的成果。这条道路就是中国特色社会主义。在2013年的全国人大会议闭幕会上，习近平主席重申：“实现中国梦必须走中国道路。这就是中国特色社会主义道路。”这是历史的结论，也是现实的必然，既指明了实现中国梦的方向，也彰显了坚持中国特色社会主义道路的重要性。</p>
        </div>
        <div class="card">
            <h2>弘扬中华文化 实现中国梦</h2>
            <p>党的十八大报告中提出：「加强社会公德、职业道德、家庭美德、个人品德教育，弘扬中华传统美德，弘扬时代新风。」「建设优秀传统文化传承体系，弘扬中华优秀传统文化」。习近平总书记在十二届全国人大一次会议闭幕会上发表重要讲话，表示，实现中国梦必须弘扬中国精神。这就是以爱国主义为核心的民族精神，以改革创新为核心的时代精神。这种精神是凝心聚力的兴国之魂、强国之魂</p>
        </div>
    </div>
</div>

<div class="footer">
    <div id="time-hour" class="text">00</div>
    <div class="time-temp">:</div>
    <div id="time-minutes" class="text">00</div>
    <div class="time-temp">:</div>
    <div id="time-seconds" class="text">00</div>
    <h1 id="text">Hello</h1>
</div>
<script>
    function Picture1(){
        document.getElementById("myimage").src="img/1.jpg";
    }
    function Picture2(){
        document.getElementById("myimage").src="img/2.jpg";
    }
    function Picture3(){
        document.getElementById("myimage").src="img/3.jpg";
    }
    function Picture4(){
        document.getElementById("myimage").src="img/4.jpg";
    }
    var x = 0;

    setInterval(function (){
        if(x % 4 ==0 ){
            Picture2();
        }else if (x % 4 == 1){
            Picture3();
        }else if (x % 4 == 2){
            Picture4();
        }else {
            Picture1();
        }
        x ++
    },3000)

    var img = document.querySelector('img');
    var ul = document.querySelector('ul');
    for(var i = 0;i < ul.children.length; i++){
        var index = i + 1;//设置自定义值做准备
        ul.children[i].setAttribute('index', index);//给按钮分别设置index下标
        ul.children[i].addEventListener('click',function (){
            //console.log(this.getAttribute('index'));
            if(this.getAttribute('index') == 1 ){
                Picture1();
            }else if(this.getAttribute('index') == 2){
                Picture2();
            }else if(this.getAttribute('index') == 3){
                Picture3();
            }else if(this.getAttribute('index') == 4){
                Picture4();
            }
        })
    }

    function time(){
        var time = new Date()
        var hour;
        var minutes;
        var seconds;
        var temph = time.getHours();
        if (temph <= 9 && temph >= 0){
            hour = '0'+ temph;
        }else {
            hour = temph;
        }
        var  tempm = time.getMinutes();
        if (tempm <= 9 && tempm >= 0){
            minutes = '0' + tempm;
        }else {
            minutes = tempm;
        }
        var temps = time.getSeconds();
        if (temps <= 9 && temps >= 0){
            seconds = '0' + temps;
        }else {
            seconds = temps;
        }
        document.getElementById("time-hour").innerHTML = hour;
        document.getElementById("time-minutes").innerHTML = minutes;
        document.getElementById("time-seconds").innerHTML = seconds;
    }
    window.setInterval("time()",1000)

    function welcomeTip(){
        var date = new Date();
        var hours = date.getHours();
        var str = "";
        if (hours < 12 && hours >= 5){
            str = " 早上好！";
        }else if (hours >=12 && hours <= 13){
            str = " 中午好！";
        }else if (hours >13 && hours <= 18){
            str = " 下午好！";
        }else if (hours >18 && hours < 24){
            str = " 晚上好！";
        }else {
            str = " 不早了，该休息了！";
        }
        return str;
    }
    var text = document.getElementById("text");
    text.innerHTML = welcomeTip();
</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 10400
  Date: 2022/11/28
  Time: 21:41
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
            font-family: "楷体";
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

        h2{
            height: 50px;
        }

        p{
            font-size: 20px
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
            width: 60%;
        }

        /* 右列 */
        .rightcolumn {
            float: left;
            width: 40%;
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
            top:1000px;
            right: 1000px;
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
            <center><h3>红色英雄张超</h3></center>
            <p>张超，1986年出生于湖南岳阳，生前系海军某舰载航空兵部队正营职中队长，歼15舰载机一级飞行员，海军少校军衔。2016年4月，张超驾驶舰载战斗机进行陆基模拟着舰，突发故障，被迫跳伞坠地牺牲。他是“逐梦海天的强军先锋”、“全国优秀共产党员”、“人民英雄”。</p>
            <p>张超2004年9月入伍，2009年5月入党。2014年5月，为执行南海维权任务，在中国新型战机首次前沿部署完毕后，张超接到战斗起飞的命令，跟踪监视、外逼驱离一架抵近中国南海岛礁执行侦查任务的外军飞机。面对挑衅，张超与外军飞机斗智斗勇、寸步不让，直至将其成功驱离。驻训期间，张超数十次带弹紧急起飞，次次都出色完成任务。</p>
            <p>经历空中特情，直面生死考验，对于张超来说不止一次。历经危险考验的洗礼，张超不仅没有退缩，反而更激起了战胜艰险、勇攀高峰的血性斗志。</p>
            <p>航空母舰被称为“国之重器”，是强大海军必不可少的组成部分。2013年，中国海军组建了第一支舰载航空兵部队，向打造航母战斗力迈出了关键步伐。2016年４月27日，一场事故突如其来——张超驾驶歼15战机进行陆基模拟着舰接地时，因飞机突遇故障，壮烈牺牲，年仅29岁。他成为了为中国航母舰载机事业献身的第一位英烈，短短4.4秒，生死一瞬，张超首先选择了“推杆”，拼尽全力挽救飞机。正是这个选择，让他错过了跳伞自救的最佳，坠地后身负重伤。</p>
            <p>在参谋长徐英眼中，张超的行动展现了崇高的责任和使命感：“飞行员对飞机的感情，一般人是理解不了的。 飞行员驾驶战鹰，两者就像兄弟一样。在遇到这种故障的时候，飞行员的第一反应肯定是挽救飞机，挽救国家财产。这正是他那一天所做的壮举。 ”</p>
            <p>2017年2月8日，获得“感动中国2016年度人物”十大人物，2018年9月，经中央军委批准，增加“逐梦海天的强军先锋”张超为全军挂像英模。</p>
            <p>有一种牺牲，叫前赴后继。张超倒下后，更多的年轻舰载机飞行员，都在继续前行，置身于时代的坐标系，他们所创造的每一次舰载飞行技术的突破与跨越，都将载入中国海军航空兵的史册。向英雄致敬！</p>
        </div>
    </div>
    <div class="rightcolumn">
        <div class="card">
            <h2>英雄——张超</h2>
            <img src="img/英雄.jpg" controls width="585px" height="574px">
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
    function time(){
        var time = new Date()
        var hour;
        var minutes;
        var seconds;
        var temph = time .getHours();
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


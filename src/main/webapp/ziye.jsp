<%--
  Created by IntelliJ IDEA.
  User: 10400
  Date: 2022/11/28
  Time: 21:40
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
            <h2>中国梦的文明史</h2>
            <p>就像当年欧洲梦、美国梦兴起一样，终于轮到中国梦出场了。 </p>
            <p>遥想当年，宋代哲学家张载高呼：“为天地立心，为生民立命，为往圣继绝学，为万世开太平。”它可以作为今日中国梦的一个传统文化的注释，它是源远流长的中国梦的一抹基色。这里的梦，并不是生理学意义上的做梦，而是具有哲学意义的"寻梦"，就是通过一种追求和努力而达到某种理想的境界或愿景。对于一个国家或民族来说，这就是文明寻梦。寻梦从表面上作为一种通俗化的语言，指的是人们对某种生活方式或文化高度的向往与崇拜及相关反应，比如当中国人说到所谓美国梦的时候，大脑里可能会浮现富裕、强大、敢干，乃至于好莱坞电影大片中的形象等等。而从哲学意义上讲，文明寻梦的内涵是：人类总是在不断地设计对未来的梦想，也不断地调整梦想，竭力寻找和创造更好的生存方式。</p>
            <p>十九世纪以后，经过工业革命洗礼的欧洲，尤其是英国、法国、德国等曾经作为人类最进步、最理想的国度，成为其他地方人向往之所在。但到了20世纪，经历了两次世界大战的欧洲梦破灭了。随后崛起的是美国梦，美元与武器的力量彻底征服了全世界。但是，人类历史上的第一次著名的文明寻梦却是中国梦。文明寻梦，从认知的角度看，具有主体与他者的互动性，因而也就有主体寻梦和他者寻梦的区别。主体寻梦就是自己认知自己的文明，他者寻梦就是认识其他文明。这是文明传播的本性决定的，世界文明史就是在互相认知、互相学习或者互相模仿中发展起来的。 </p>
            <p>如果寻梦代表着人类向往和追求文明的最高表现，那么与欧洲梦、美国梦最大的不同，就是中国梦在深层次上是具有千年历史语境的，中华文明曾有过至少1500年领先世界的历史，足以构成今天中国梦的底蕴和愿景。</p>
            <p>中国人自己的寻梦，最早建构于三皇五帝时代，这是开创中华文明的时代，从伏羲到黄帝，从传说到记载，都说明了人与人、人与自然和谐关系这种文明价值的建构过程。最早的盛世梦建立在尧舜禹的传说和相关记载之中，所谓“德布天下”，就是建立国家正义的基础。而后的盛世梦建立在西周礼乐文明时代，就是孔子及儒家念念不忘的“周礼精神”。西周人口2000万左右，一个农民可供养8至9人；据人口学家的估算，在西周的时候，中国的人口占世界总人口的35％左右，周天子及其联邦体制所构成的国家，在人口上为当时世界第一大国。苏美尔、巴比伦、古埃及、古希腊、古波斯等文明体都没有西周这样的人口容纳力。还有春秋战国时代的区域盛世梦，比如郑国有子产为相时的法律公开从而促成商业大发展，齐国等邦国有工商业高度发达的城市和管子所代表的“发展经济学”思想等。</p>
            <p>世界文明史上的巅峰中国梦集中表现于汉唐宋三代，汉赋唐诗宋词的文化高峰让无数中国人乃至于外国人至今梦牵魂绕。中国历史上每一次动乱发生时，人们就会提到尧舜德治天下的盛世梦，而近代以来在中国陷入强国梦不断受阻的痛苦时，多少人念念不忘恢复汉唐盛世。这就是中国梦的历史内涵。</p>
        </div>
        <div class="card">
            <h2>大汉梦：首屈一指的思想大国</h2>
            <p>2000多年前的大汉梦表明中国既是科技大国，又是经济大国，还是思想大国。大汉文明体拥有世界上第一所大学：太学。这时，春秋战国时期出现的百家争鸣传统在持续，儒、法、道、阴阳、纵横等各家人才均可做官，天人合一的哲学具体化为政治哲学的开放与包容、公平与正义、和谐与平衡，这些都成为大一统文明的思想基础。</p>
            <p>东汉时期，不仅已经设置有专门的谏议大夫，而且形成察举与考试相结合的选士制度，而且考试成份日益增加，即在推荐基础上加强考试。商人、使节、朝圣者、移民在丝绸之路上络绎不绝，包括匈奴在内的各民族融入中原。《周髀算经》和《九章算术》形成了与希腊不同的独立数学思想和方法。造纸术、造船术、罗盘技术、地动仪、浑天仪、二十四节气的太初历等科技成果已经形成应用体系。</p>
            <p>大一统文明的优势出现了，中国人掌握生铁液态冶炼技术比欧洲早1500年。生铁液态冶炼技术适合于批量生产，尤其是在研究出固态退火脱碳技术后，中国人开始能够成批地制造各类质量上乘的铁器，这些铁器在农业生产领域及军事领域发挥了巨大的作用。汉朝时，铁农具和牛耕是最重要的生产工具，兴修水利，尤以关中地区为最。著名的水渠有成国渠、六辅渠、白渠等。东汉时期，出现了翻车和渴乌等水利工具</p>
        </div>
    </div>
    <div class="rightcolumn">
        <div class="card">
            <img src="img/书.jpg" controls width="640px" height="1004px">
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

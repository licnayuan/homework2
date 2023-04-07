package com.web;

import com.mapper.UserMapper;
import com.po.User;
import com.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    //创建service成员
    private UserService service = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1、接受用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //获取用户输入的验证码
        String checkCode = request.getParameter("checkCode");
        //获取session
        HttpSession session1 = request.getSession();
        //从session中获取验证码并将其强转为字符串
        String checkCodeGen = (String) session1.getAttribute("checkCodeGen");
        //进行验证码比对
        if (!checkCodeGen.equalsIgnoreCase(checkCode)){
            //验证码错误
            //存入错误信息进入request
            request.setAttribute("login_msg", "验证码错误！");
            //带着request和response信息跳转回登录页面
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            //不允许登录
            return;
        }

        //2、调用service完成查询
        User user = service.login(username, password);

        //3、判断User是否为null
        if (user != null ){
            //登陆成功
            //把登录成功的user对象存储到Session中
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            //带着Session存储的数据，跳转到主页中
            request.getRequestDispatcher("/index1.jsp").forward(request, response);
        }else {
            //登陆失败
            //存储错误信息到request
            request.setAttribute("login_msg", "用户名或密码有误");
            //跳转回登录页面并且带回错误信息
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}

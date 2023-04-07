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

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    private UserService service = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //接收用户名
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //封装用户对象
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        //调用service注册
        boolean flag = service.register(user);

        //判断注册成功与否
        if (flag){
            //注册成功，跳转登录页面
            //存储注册成功信息
            request.setAttribute("register_msg", "注册成功，请登录");
            //带着request和response信息跳转到登录页面
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }else {
            //用户名存在，
            //存储错误提示信息
            request.setAttribute("register_msg", "用户名已存在");
            //带着request和response信息跳转到注册页面
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}

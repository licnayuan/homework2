package com.web;

import com.util.CheckCodeUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet("/checkCodeServlet")
public class checkCodeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //生成验证码
        //获取验证码图片
        ServletOutputStream os = response.getOutputStream();
        //获取验证码数据
        String checkCode = CheckCodeUtil.outputVerifyImage(100, 50, os, 4);

        //获取session
        HttpSession session = request.getSession();
        //将验证码存入Session
        session.setAttribute("checkCodeGen", checkCode);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}

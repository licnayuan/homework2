package com.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = {"/index1.jsp","/ziye.jsp","/ziye1.jsp"})
public class loginFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest req = (HttpServletRequest) request;
        //1、判断Session中是否存在User
        HttpSession session = req.getSession();
        Object user = session.getAttribute("user");

        //判断user是否为null
        if (user != null){
            //已登录
            chain.doFilter(request, response);
        }else {
            //未登录,提示信息
            req.setAttribute("login_msg", "您尚未登录！");
            req.getRequestDispatcher("/login.jsp").forward(req, response);
        }

        chain.doFilter(request, response);
    }

    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }


}

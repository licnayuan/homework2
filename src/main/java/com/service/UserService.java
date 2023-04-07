package com.service;

import com.mapper.UserMapper;
import com.po.User;
import com.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class UserService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    //登录方法
    public User login(String username,String password){
        //获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //通过SQLSession获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        //通过userMapper调用根据用户名密码查询用户的方法
        User user = mapper.select(username, password);
        //释放资源
        sqlSession.close();
        //返回user对象
        return user;

    }



    //注册方法
    public boolean register(User user){
        //获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        //判断用户是否存在
        User u = mapper.selectByUsername(user.getUsername());

        if (u == null){
            //用户名不存在，注册
            mapper.add(user);
            //提交事务，保存到数据库中
            sqlSession.commit();
        }
        //释放资源
        sqlSession.close();
        //因为是布尔型，所以当u=null时就可以返回TRUE，u！=null时返回FALSE
        return u == null;
    }
}

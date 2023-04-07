package com.mapper;

import com.po.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 *根据用户名和密码查询用户对象
 * @Param username
 * @Param password
 * @return
 */

public interface UserMapper {
    @Select("select * from tb_user where username = #{username} and password = #{password}")
    User select(@Param("username") String username,@Param("password") String password);

    //根据用户名查询对象

    @Select("select * from tb_user where username = #{username}")
    User selectByUsername(String username);

    //添加用户
    @Insert("insert into tb_user values (null,#{username},#{password})")
    void add(User user);
}

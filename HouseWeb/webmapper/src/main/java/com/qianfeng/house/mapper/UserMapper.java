package com.qianfeng.house.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/16 20:55
 * @Version 1.0
 */
public interface UserMapper {

    @Select("select * from user where username=#{name} and password=#{password}")
    Integer QueryUser(@Param("name") String name, @Param("password") String password);

}

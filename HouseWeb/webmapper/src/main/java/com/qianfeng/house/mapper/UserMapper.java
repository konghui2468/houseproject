package com.qianfeng.house.mapper;

import com.qianfeng.house.pojo.House;
import com.qianfeng.house.pojo.user;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/16 20:55
 * @Version 1.0
 */
public interface UserMapper {

     user queryByphone(@Param("phone") String phone);

     Integer InsertUser(user user);

     @Select("select * from house ")
     List<House> QueryHouse();

     user queryByuser(@Param("phone") String phone,@Param("password") String password);

}

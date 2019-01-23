package com.qianfeng.house.serviceImpl;
//
//                            _ooOoo_  
//                           o8888888o  
//                           88" . "88  
//                           (| -_- |)  
//                            O\ = /O  
//                        ____/`---'\____  
//                      .   ' \\| |// `.  
//                       / \\||| : |||// \  
//                     / _||||| -:- |||||- \  
//                       | | \\\ - /// | |  
//                     | \_| ''\---/'' | |  
//                      \ .-\__ `-` ___/-. /  
//                   ___`. .' /--.--\ `. . __  
//                ."" '< `.___\_<|>_/___.' >'"".  
//               | | : `- \`.;`\ _ /`;.`/ - ` : | |  
//                 \ \ `-. \_ __\ /__ _/ .-` / /  
//         ======`-.____`-.___\_____/___.-`____.-'======  
//                            `=---='  
//  
//         .............................................  
//                  佛祖镇楼                  BUG辟易  
//          佛曰:  
//                  写字楼里写字间，写字间里程序员；  
//                  程序人员写程序，又拿程序换酒钱。  
//                  酒醒只在网上坐，酒醉还来网下眠；  
//                  酒醉酒醒日复日，网上网下年复年。  
//                  但愿老死电脑间，不愿鞠躬老板前；  
//                  奔驰宝马贵者趣，公交自行程序员。  
//                  别人笑我忒疯癫，我笑自己命太贱；  
//  

import com.qianfeng.common.redisUtil.JsonUtils;
import com.qianfeng.common.redisUtil.RedisClientInterface;
import com.qianfeng.common.redisUtil.StrKit;
import com.qianfeng.house.mapper.THMapper;
import com.qianfeng.house.mapper.UserMapper;
import com.qianfeng.house.pojo.House;
import com.qianfeng.house.pojo.user;
import com.qianfeng.house.service.UserService;
import org.apache.solr.client.solrj.SolrQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import redis.clients.jedis.Jedis;

import java.util.List;
import java.util.Map;

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/16 21:00
 * @Version 1.0
 */

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


    @Autowired
    private RedisClientInterface jedisClient;

    @Autowired
    private THMapper thMapper;

    @Override
    public user QueryUser(String phone) {
        return userMapper.queryByphone(phone);
    }

    @Override
    public Integer InsertUser(user user) {
        return userMapper.InsertUser(user);
    }


    //整合redis

    @Override
    public user queryByuser(String phone, String password) {
        return userMapper.queryByuser(phone,password);
    }

    @Override
    public List<House> queryHouse() {
        Jedis jedis = jedisClient.getJedis();
        try {
            System.out.println("11111");
            String house_list = jedisClient.hget("House_List","123",jedis);
            if(StrKit.notBlank(house_list)){
                System.out.println("============");
                List<House> houseList = JsonUtils.jsonToList(house_list, House.class);
                return houseList;
            }
        } catch (RuntimeException re) {
            re.getMessage();

        }

        System.out.println("======================数据库查询");
        List<House> list=userMapper.QueryHouse();
        try {
            jedisClient.hset("House_List","123", JsonUtils.objectToJson(list),jedis);
        } catch (RuntimeException re) {
            re.getMessage();
        }

        return list;
    }

    //solr查询
    @Override
    public Map<String, Object> searchTHByKeyword(String keyword, Integer pageIndex, Integer pageSize) {
        // solrquery 封装用作查询的对象
        SolrQuery solrQuery = new SolrQuery();
        // 关键字
        solrQuery.setQuery(keyword);
        solrQuery.setStart((pageIndex-1)*pageSize);
        solrQuery.setRows(pageSize);
        // 查询字段
        // 作为一个查询字段来使用的，borrow_name要跟schema.xml的field name一致
        // df="borrow_name" "borrow_description"
        // 第一步：schema.xml
        // <field name="borrow_keywords" type="text_ik" indexed="true" stored="false" multiValued="true"/>
        //<copyField source="borrow_name" dest="borrow_keywords"/>
        //<copyField source="borrow_description" dest="borrow_keywords"/>
        // 第二步：SolrQuery.set("df","borrow_keywords");
        solrQuery.set("df","house_key");
        // 设置高亮
        solrQuery.setHighlight(true);
        solrQuery.addHighlightField("house_key");
        solrQuery.setHighlightSimplePre("<em style='color:red;'>");
        solrQuery.setHighlightSimplePost("</em>");

        return thMapper.search(solrQuery,pageSize);
    }

}

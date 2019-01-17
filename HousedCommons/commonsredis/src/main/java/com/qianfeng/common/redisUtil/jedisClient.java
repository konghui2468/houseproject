package com.qianfeng.common.redisUtil;
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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/16 17:49
 * @Version 1.0
 */

@Component
public class jedisClient implements RedisClientInterface {

    @Autowired
    private JedisPool jedisPool;

    @Override
    public Jedis getJedis() {
        return jedisPool.getResource();
    }

    @Override
    public Long del(String key, Jedis jedis) {
        return jedis.del(key);
    }

    @Override
    public String set(String key, String value, Jedis jedis) {
        return jedis.set(key,value);
    }

    @Override
    public String get(String key, Jedis jedis) {
        return jedis.get(key);
    }

    @Override
    public Boolean exist(String key, Jedis jedis) {
        return jedis.exists(key);
    }

    @Override
    public Long expire(String key, int time, Jedis jedis) {
        return jedis.expire(key,time);
    }

    @Override
    public String setex(String key, String value, int time, Jedis jedis) {
        return jedis.setex(key,time,value);
    }

    @Override
    public Long hset(String key, String field, String value, Jedis jedis) {
        return jedis.hset(key,field,value);
    }

    @Override
    public String hget(String key, String field, Jedis jedis) {
        return jedis.hget(key,field);
    }
}

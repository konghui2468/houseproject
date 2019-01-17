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

import redis.clients.jedis.Jedis;

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/16 17:51
 * @Version 1.0
 */

public interface RedisClientInterface {

    Jedis getJedis();
    Long del(String key,Jedis jedis);
    String set(String key,String value,Jedis jedis);
    String  get(String key,Jedis jedis);
    Boolean exist(String key,Jedis jedis);

    Long expire(String key,int time,Jedis jedis);

    /**
     * 设置内容的时候同时设置有效期
     * @param key
     * @param value
     * @param time
     * @param jedis
     * @return
     */
    String setex(String key,String value,int time,Jedis jedis);


    Long hset(String key,String field,String value,Jedis jedis);

    String hget(String key,String field,Jedis jedis);

}

package com.qianfeng.common.codeUtils;
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

import cn.dsna.util.images.ValidateCode;
import com.qianfeng.common.redisUtil.RedisClientInterface;
import com.qianfeng.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import redis.clients.jedis.Jedis;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/17 11:11
 * @Version 1.0
 */

@Controller
public class CodeController {

    @Autowired
    private RedisClientInterface redisClientInterface;

    @RequestMapping("/utils/code")
    public void Code(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //生成图形验证码
        ValidateCode validateCode=new ValidateCode(92,42,4,110);
        //图片中的验证码
        String code = validateCode.getCode();
        //图片
        BufferedImage buffImg = validateCode.getBuffImg();

        //将图片验证码存在Redis中，Redis的Key为随机生成的，以Cookie的值做为Redis的Key
        //用户可能会刷新验证码，只需要将Redis中的Value值替换掉，不需要重新生成一个新的Key
        Jedis jedis = redisClientInterface.getJedis();
        Cookie[] cookies = request.getCookies();//获取Cookie对象
        String RedisKey=null;//声明Redis的Key
        boolean flag=false;
        if(cookies!=null) {//第一次访问Cookie是没有值的
            for (Cookie cookie : cookies) {
                //遍历Cookie
                String cookieName = cookie.getName();
                //我们设定Cookie的Key值为imagecode
                flag= "imagecode".equals(cookieName);//判断是否相等

                if (flag) {
                    //则Redis的Key就是Cookie的值
                    RedisKey = cookie.getValue();
                    break;

                }
            }
            if(flag){
                //将刚刚的RedisKey作为Key,value为新的Code
                redisClientInterface.setex(RedisKey,code,180,jedis);
            }
        }
        if(!flag){
            //给RedisKey手动赋予一个UUID值
            RedisKey=UUID.randomUUID().toString().replaceAll("-","");
            //存放到Redis中
            redisClientInterface.setex(RedisKey,code,180,jedis);
            //给Cookie手动设置
            Cookie cookie=new Cookie("imagecode",RedisKey);
            cookie.setPath("/");
            response.addCookie(cookie);

        }
        jedis.close();
        //将图片显示在前台
        ImageIO.write(buffImg,"jpg",response.getOutputStream());

    }

    @RequestMapping("/utils/phonecode")
    @ResponseBody
    public Map<String,Object> PhoneCode(HttpServletRequest request, HttpServletResponse response){
        StringUtils utils=new StringUtils();
        String phonecode = utils.StringUtils1();//生成随机数的四位验证码
        //并将其存放到Redis中
        Jedis jedis = redisClientInterface.getJedis();
        //将Cookies当Redis的Key值
        Cookie[] cookies = request.getCookies();//获取Cookies对象
        //遍历cookies值,但第一次访问时没有Cookie的
        boolean flag=false;
        Map<String,Object> map=new HashMap<>();
        String value="";
        if(cookies!=null){
            for (Cookie cookie : cookies) {
                String cookieName = cookie.getName();
                //我们设定ccokie的Key值为phonecode
                flag=cookieName.equals("phonecode");
                if(flag){
                    //存在则获取Cookie的Value值，该Value值是Redis的Key
                     value = cookie.getValue();
                     redisClientInterface.setex(value,phonecode,60,jedis);
                     break;
                }

            }
            if(flag){
                //将刚刚的RedisKey作为Key,value为新的Code
                redisClientInterface.setex(value,phonecode,60,jedis);
            }


        }
        if(!flag){
            //给RedisKey手动赋予一个UUID值
            value=UUID.randomUUID().toString().replaceAll("-","");
            //存放到Redis中
            redisClientInterface.setex(value,phonecode,60,jedis);
            //给Cookie手动设置
            Cookie cookie=new Cookie("phonecode",value);
            cookie.setPath("/");
            response.addCookie(cookie);
        }
        map.put("code",phonecode);
        return map;


    }


}

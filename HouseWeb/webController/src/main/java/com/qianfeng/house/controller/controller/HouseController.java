package com.qianfeng.house.controller.controller;
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

import com.qianfeng.common.redisUtil.RedisClientInterface;
import com.qianfeng.common.utils.EncrypUtil2;
import com.qianfeng.house.pojo.user;
import com.qianfeng.house.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import redis.clients.jedis.Jedis;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/16 19:26
 * @Version 1.0
 */

@Controller
@RequestMapping("/user")
public class HouseController {

    @Autowired
    private RedisClientInterface redisClientInterface;

    @Autowired
    private UserService userService;

   /* @ResponseBody
    @RequestMapping("/redis")
    public String test() {
        Jedis jedis = redisClientInterface.getJedis();
        String set = redisClientInterface.set("org", "123", jedis);
        if (set != null) {
            return "ok";
        }
        return null;
    }

    @PostMapping("/query")
    @ResponseBody
    public String test1(String name,String password){
        Integer integer = userService.QueryUser(name, password);
        if(integer==1){
            return "ok";
        }
        return null;
    }*/

    /**
     * 图形验证码
     * @param request
     * @param code
     * @return
     */
   @RequestMapping(value = "/code")
   @ResponseBody
   public String ValidateCode(HttpServletRequest request, String code){
       Jedis jedis = redisClientInterface.getJedis();
       //取出存储在Redis中的值
       Cookie[] cookies = request.getCookies();
       String imagecode=null;//Redis中的图片验证码
       String codeKey=null;//Redis中的Key
       if(cookies!=null) {
           for (Cookie cookie : cookies) {
               if (cookie.getName().equals("imagecode")) {
                    imagecode = redisClientInterface.get(cookie.getValue(), jedis);
                    codeKey=cookie.getValue();
                    }
           }
       }
       else {
           return "false";
       }
       //因为图片验证码只能一次有效，所以如果验证成功的话，我们要将存放在Redis中的该值删除
       redisClientInterface.del(codeKey,jedis);
       jedis.close();
       if(code.equalsIgnoreCase(imagecode)&&StringUtils.isNoneBlank(code)){
           return "ok";
       }
       else {
           return "false";
       }
   }

   @RequestMapping("/login")
    public String Houselogin(String phone, Model model)
    {
        user user = userService.QueryUser(phone);
        if(user!=null){
            model.addAttribute("user",user);
            return "index";
        }
        else {
            return "login";
        }

    }

    /**
     * 校验手机验证码
     * @param request
     * @param phonevalue
     * @param phonecodevalue
     * @return
     */
   @RequestMapping("/checkLogincode")
   @ResponseBody
    public String CheckLogin(HttpServletRequest request,String phonevalue,String phonecodevalue){
       Jedis jedis = redisClientInterface.getJedis();
       //取出存放在Redis的值
       String redisValue="";
       Cookie[] cookies = request.getCookies();
       if(cookies!=null){
           for (Cookie cookie : cookies) {
               String name = cookie.getName();
               if(name.equals("phonecode")){
                   String value = cookie.getValue();
                   redisValue = redisClientInterface.get(value, jedis);//该值就是验证码
               }
           }
       }
       /*System.out.println(phonecodevalue);
       System.out.println(phonevalue);*/
       if(redisValue==null){
           return "4";
       }
       else if(redisValue!=null) {
           if(phonevalue.equals("")){
               return "1";
           }
           else if(phonecodevalue.equals("")){
               return "2";
           }
           else if(!redisValue.equalsIgnoreCase(phonecodevalue)){
               return "3";
           }
           else if(redisValue.equalsIgnoreCase(phonecodevalue)){
               return "200";
           }
       }

       return null;


   }

    /**
     * 注册
     */
    @PostMapping("/register")
    public String registerUser(String phone,String nickname,String password){
        //获取盐值
        com.qianfeng.common.utils.StringUtils utils=new com.qianfeng.common.utils.StringUtils();
        String s = utils.Stringpasswordsalt();//该值就是生成的盐值
        EncrypUtil2 encrypUtil2=new EncrypUtil2();
        if(StringUtils.isNotBlank(phone)&&StringUtils.isNotBlank(nickname)&&StringUtils.isNotBlank(password)){
            user user=new user();
            user.setNickname(nickname);
            user.setPhone(phone);
            user.setPassword(encrypUtil2.md5Pass(password,s));
            user.setPasswordsalt(s);
            Integer row = userService.InsertUser(user);
            if(row==1){
                return "login";
            }
            else {
                return "register";
            }
        }


        return null;
    }
    /**
     * 查询手机号是否被驻村
     */

    @RequestMapping("/registerByphone")
    @ResponseBody
    public Map<String,Object> RegisterByphone(String phone){
        Map<String,Object> map=new HashMap<>();
        //手机号正则表达式
        String regis="^1[3456789]\\d{9}$";
        if(phone.matches(regis)){
            user user = userService.QueryUser(phone);
            if(user!=null){
                map.put("code",1);
            }
            else {
                map.put("code",0);
            }

        }
        else {
            map.put("code",2);
        }

        return map;
    }

    /**
     * 注销
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "portal";
    }

    /**
     * 手机号注册
     */
    @RequestMapping("/logonByphone")
    public String loginByphone(String username,String password,Model model){
        System.out.println(username);
        user user1 = userService.QueryUser(username);
        if(user1!=null){
            String passwordsalt = user1.getPasswordsalt();
            EncrypUtil2 encrypUtil2=new EncrypUtil2();
            String md5Pass = encrypUtil2.md5Pass(password, passwordsalt);
            com.qianfeng.house.pojo.user user = userService.queryByuser(username, md5Pass);
            if(user!=null){
                model.addAttribute("user", user);
                return "index";
            }
        }
        else {
            return "login";
        }
        return null;
    }



}






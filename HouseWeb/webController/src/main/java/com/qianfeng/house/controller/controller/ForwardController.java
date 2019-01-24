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

import com.qianfeng.house.pojo.House;
import com.qianfeng.house.pojo.tH;
import com.qianfeng.house.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/14 19:35
 * @Version 1.0
 */

@Controller
public class ForwardController {


    @Autowired
    private UserService userService;
    @GetMapping("/{path}")
    public String forward(@PathVariable("path") String path1){
        return path1;
    }




    @RequestMapping("/portal")
    public String portal( Model model){

        List<House> list = userService.queryHouse();
        System.out.println("controller+++"+list);
        model.addAttribute("list",list);
        return "portal";
    }

    @ResponseBody
    @RequestMapping("/search/ajaxjump")
    public Map<String, Object> tiaozhuan(String status, String keywords){
        System.out.println(status+"11111+");
        System.out.println(keywords+"22222222");
        String result=status+"/_"+keywords+"?zn="+keywords;
        System.out.println(result);
        //return "forward:/"+status+"?zn="+keywords;
        HashMap<String, Object> map = new HashMap<>();
        map.put("result",result);
        return map;
    }


    @RequestMapping("/ershoufang")//改
    public String test(Model model){
        Map<String, Object> map = userService.searchTHByKeyword("三", 1, 10);
        Object list = map.get("list");
        List<tH> list1= (List<tH>) list;
        System.out.println(list1);
        model.addAttribute("hl",list1);
       return "index";
    }


    @RequestMapping("/ershoufang/{z}")
    public String tt(@PathVariable("z")String z,String zn,Model model){
        System.out.println("laile");
        Map<String, Object> map = userService.searchTHByKeyword(zn, 1, 10);
        Object list = map.get("list");
        List<tH> list1= (List<tH>) list;
        System.out.println(list1);
        model.addAttribute("hl",list1);

        return "index";
    }


}

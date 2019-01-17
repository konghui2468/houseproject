package com.qianfeng.common.utils;
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

/**
 * @Author: Mr.kong de qian ming
 * @CreateDate: 2019/1/16 20:14
 * @Version 1.0
 */

public class StringUtils {

    /**
     * 生成6位指定长度的字符串
     */

    public  String StringUtils1(){
        StringBuffer stringBuffer=new StringBuffer();
        int count=0;
        while (count<6){
            int i = (int) (Math.random() * 123);//生成0-122的随机数字
            if((i>=48&i<=57)||(i>=65&i<=90)||(i>=97&i<=122))//指定生成0-9，a-z,A-Z
            {
               stringBuffer.append((char) i);
                count ++;
            }
        }
        return stringBuffer.toString();
    }

    public static void main(String[] args) {
        StringUtils stringUtils=new StringUtils();
        String s = stringUtils.StringUtils1();
        System.out.println(s);
    }

}

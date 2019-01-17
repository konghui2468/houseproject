<%--
  Created by IntelliJ IDEA.
  User: hjg
  Date: 2019/1/16
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- 5i5jcss和js -->
    <link href="css/common.css" rel="stylesheet" type="text/css">
    <link href="css/tdzsty.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="/passport/images/5i5j.ico" mce_href="/passport/images/5i5j.ico" type="image/x-icon" />
    <script src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script src="js/tdz.js"></script>
    <script language="JavaScript">var _trackDataType = 'web';var _trackData = _trackData || [];</script>


    <script type="text/javascript" >
        String.prototype.Trim = function(){ return this.replace(/(^\s*)|(\s*$)/g, "");}
        String.prototype.LTrim = function(){ return this.replace(/(^\s*)/g, "");}
        String.prototype.RTrim = function(){ return this.replace(/(\s*$)/g, "");}
        function checkinput(){
            //用户名控制
            var usernamevalue=document.getElementById('username').value;
            usernamevalue = usernamevalue.replace(/[ ]/g,"");
            if(usernamevalue.length==0){
                //alert('请输入用户名！');
                $('#namekong').html('');
                //$('#namekong').html('请输入正确的手机号');  add by alian.zheng 2018.6.7
                $('#namekong').html('用户名不能为空');
                $('#namekong').show();
                //$('#namekong').show();
                //$('#nameerro').hide();
                //$('#passwordkong').hide();
                $('#erromsg').hide();
                document.getElementById('username').focus();
                showBtn();
                return false;
            }else if(!(/^1[3456789]\d{9}$/.test(usernamevalue)))
            {
                //alert("手机号码有误，请重填");
                $('#namekong').html('');
                //$('#namekong').html('用户名不能为空');  add by alian.zheng 2018.6.7
                $('#namekong').html('请输入正确的手机号');
                $('#namekong').show();
                //$('#namekong').hide();
                //$('#nameerro').show();
                //$('#passwordkong').hide();
                $('#erromsg').hide();
                return false;
            }
            var passwordvalue=document.getElementById('password').value;

            //密码控制
            passwordvalue = passwordvalue.replace(/[ ]/g,"");
            if(passwordvalue.length==0){
                //alert('请输入密码！');
                $('#namekong').html('');
                $('#namekong').html('密码不能为空');
                $('#namekong').show();
                //$('#namekong').hide();
                //$('#nameerro').hide();
                //$('#passwordkong').show();
                $('#erromsg').hide();
                document.getElementById('password').focus();
                showBtn();
                return false;
            }

            if(passwordvalue.length>0 && usernamevalue.length>0 ){
                hideBtn();
                return true;
            }else{
                showBtn();
                return false;
            }
        }

        function loginSubmit(){
            if(event.keyCode==13){
                if(checkinput()){
                    hideBtn();
                    document.getElementById("signinActionForm").submit();
                }
            }
        }

        function showBtn(){
            document.getElementById('login').style.display='';
            document.getElementById('loginload').style.display='none';
        }

        function hideBtn(){
            document.getElementById('login').style.display='none';
            document.getElementById('loginload').style.display='';
        }

        if (document.addEventListener)
        {//如果是Firefox
            document.addEventListener("keypress", fireFoxHandler, true);
        }
        else
        {
            document.attachEvent("onkeypress", ieHandler);
        }
        function fireFoxHandler(evt)
        {
            var usernamevalue=document.getElementById('username').value;
            var passwordvalue=document.getElementById('password').value;
            usernamevalue = usernamevalue.replace(/[ ]/g,"");
            passwordvalue = passwordvalue.replace(/[ ]/g,"");
            if (evt.keyCode == 13 && usernamevalue.length >0 && passwordvalue.length >0)
            {
                if(checkinput()){
                    document.forms[0].submit();
                }
            }
        }
        function ieHandler(evt)
        {   var usernamevalue=document.getElementById('username').value;
            var passwordvalue=document.getElementById('password').value;
            usernamevalue = usernamevalue.replace(/[ ]/g,"");
            passwordvalue = passwordvalue.replace(/[ ]/g,"");
            if (evt.keyCode == 13 && usernamevalue.length >0 && passwordvalue.length >0)
            {
                if(checkinput()){
                    document.forms[0].submit();
                }
            }
        }

        /*账号密码登录  */
        function clicksubmit(){
            if(checkinput()){
                document.forms[0].submit();
            }
        }
        /* 手机号验证码登录 */
        function phonsubmit(){
            if(phonecheck()){
                document.forms[1].submit();
            }
        }
        function phonecheck(){
            //用户名控制
            var usernamevalue=document.getElementById('phone').value;
            usernamevalue = usernamevalue.replace(/[ ]/g,"");
            if(usernamevalue.length==0){
                //alert('请输入手机号！');
                $('#phonekong').html('');
                $('#phonekong').html('请输入手机号');
                $('#phonekong').show();
                //$('#phoneerro').hide();
                //$('#codekong').hide();
                $('#eer').hide();
                document.getElementById('phone').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(usernamevalue)))
            {
                //alert("手机号码有误，请重填");
                $('#phonekong').html('');
                $('#phonekong').html('请输入正确的手机号');
                $('#phonekong').show();
                //$('#phonekong').hide();
                //$('#phoneerro').show();
                //$('#codekong').hide();
                $('#eer').hide();
                return false;
            }
            var passwordvalue=document.getElementById('phonecode').value;

            //验证码控制
            passwordvalue = passwordvalue.replace(/[ ]/g,"");
            if(passwordvalue.length==0){
                //alert('请输入密码！');
                $('#phonekong').html('');
                $('#phonekong').html('请输入验证码');
                $('#phonekong').show();
                //$('#phonekong').hide();
                //$('#phoneerro').hide();
                //$('#codekong').show();
                $('#eer').hide();
                document.getElementById('phonecode').focus();
                showBtn();
                return false;
            }

            if(passwordvalue.length>0 && usernamevalue.length>0 ){
                var rs=false;
                $.ajax({
                    type: "POST",
                    url:'/passport/v1/checkLoginIdentifyCode',
                    async:false,
                    dataType:"text",//json
                    scriptCharset: "utf-8",
                    data:"aim=pc&phone="+usernamevalue+"&phonecode="+passwordvalue+"&r="+new Date().getTime(),
                    success:function (data){
                        console.log(data);
                        //var resultDto=eval("("+data+")");
                        if(data=='200'){
                            hideBtn();
                            rs=true;
                        }else if(data=='1'){//1 手机号为空  2验证码为空  3验证码错误 4验证码已过期请重新获取
                            $('#phonekong').html('');
                            $('#phonekong').html('请输入手机号');
                            $('#phonekong').show();
                            $('#eer').hide();
                            document.getElementById('phone').focus();
                            showBtn();
                            rs=false;
                        }else if(data=='2'){
                            $('#phonekong').html('');
                            $('#phonekong').html('验证码为空');
                            $('#phonekong').show();
                            $('#eer').hide();
                            document.getElementById('phonecode').focus();
                            showBtn();
                            rs=false;
                        }else if(data=='3'){
                            $('#phonekong').html('');
                            $('#phonekong').html('验证码错误');
                            $('#phonekong').show();
                            $('#eer').hide();
                            document.getElementById('phonecode').focus();
                            showBtn();
                            rs=false;
                        }else if(data=='4'){
                            $('#phonekong').html('');
                            $('#phonekong').html('验证码已过期请重新获取');
                            $('#phonekong').show();
                            $('#eer').hide();
                            document.getElementById('phonecode').focus();
                            showBtn();
                            rs=false;
                        }
                    }
                });
                return rs;
            }else{
                showBtn();
                return false;
            }
        }

        /* 发送验证码跳转后台 */
        function clicksubmitcode(){
            var value=document.getElementById("phone").value;
            document.getElementById("phone1").value=value;

            var valueservice=document.getElementById("service").value;
            document.getElementById("service1").value=valueservice;

            var code=document.getElementById("code").value;
            //alert(code);

            /*$.ajax({
                url:'/user/code',
                data:{"code":code},
                dataType:"json",
                type:"get",
                success:function (data) {
                    if(data=='ok'){
                        alert('验证成功');
                    }
                    else {
                        alert('验证失败');
                    }
                }

            })*/

            document.forms[2].submit();

        }

        /* 发送验证码验证手机号弹层 */
        function clickyzmBtn(){
            var phonevalue=document.getElementById('phone').value;
            phonevalue = phonevalue.replace(/[ ]/g,"");
            if(phonevalue.length==0){
                $('#phonekong').html('');
                $('#phonekong').html('请输入手机号');
                $('#phonekong').show();
                $('#err').hide();
                document.getElementById('phone').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(phonevalue)))
            {
                // alert("手机号码有误，请重填");
                $('#phonekong').html('');
                $('#phonekong').html('请输入正确的手机号');
                $('#phonekong').show();
                $('#err').hide();
                return false;
            }else{
                $('#codemessage').hide();
                aa();//调取生成验证码
                $(".tcBox").removeClass("hide");
                $(".closeBtn").click(function(){
                    $(".tcBox").addClass("hide");
                })
            }
        }
        /*  倒计时*/
        function resetCode(){
            $('#J_getCode').hide();
            $('#J_second').html('60');
            $('#J_resetCode').show();
            var second = 60;
            var timer = null;
            timer = setInterval(function(){
                second -= 1;
                if(second >0 ){
                    $('#J_second').html(second);
                }else{
                    clearInterval(timer);
                    $('#J_getCode').show();
                    $('#J_resetCode').hide();
                }
            },1000);
        }
        function aa(){
            var temp = new Date().getTime().toString(36);
            var phone1=document.getElementById('phone').value;
            document.getElementById('MzImgExpPwd').src = '/utils/code?phone=' + phone1+'&temp='+temp;
        }
    </script>

    <title> 统一登录 </title>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
</head>
<body>
<div class="head-logo">
    <div class="head-main mar">


        <a href=https://hz.5i5j.com>




            <img src="picture/d-logo.png"></a>

    </div>
</div>


<div class="t-login ">
    <h4 class="tIt"><i></i>登录</h4>
    <div class="login-main clear">
        <div class="login-left lf">
            <ul class="login-tab">
                <li class="cur" id="usernamepassword" onclick='usernamepassword()'>账号密码登录</li><li  id="phoneshow" onclick='phoneshow()'>手机验证码登录</li>
            </ul>
            <div class="login-con">

                <div class="log_main" id="account">

                    <form id="signupForm" method="post" onsubmit="return clicksubmit();" action=/passport/sigin?city=hz>

                        <p class="marTop3 pBgs">
                            <input type="text" autocomplete="off" id="username"  name="username" placeholder="请输入手机号" value=""/>
                        </p>

                        <p class="marTop3 pBgs">
                            <input id="password"  name="password" type="password"  autocomplete="off" placeholder="请输入密码" />
                        </p>
                        <input type="hidden" id="aim1" name="aim" value="pc" />
                        <!--  <p class="marTop3 err">错误提示</p> -->
                        <dd class="martop" >
                            <div class="err hide" id="namekong">用户名不能为空</div>
                            <div class="err hide" id="nameerro">请输入正确的手机号</div>
                            <div class="err hide" id="passwordkong">密码不能为空</div>


                        </dd>
                        <p><a class="wpassword" href=/passport/password?service=https://hz.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26pmf_medium%3Dcpc%26pmf_plan%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%25E7%25B2%25BE%25E7%25A1%25AE%26pmf_unit%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_keyword%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_account%3D75%26pmf_id%3D23100403845&status=1&city=hz>忘记密码</a></p>

                        <div class="signinNow">

                            <a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" href="javascript:void(0)" onclick ="clicksubmit();return false;" name="loginSubmit" id="login" class="setBtn">
                                <span>立 即 登 录</span></a>

                            <span  class="setBtn" style="display:none;" id="loginload" name="loginload">
	    			<!-- <img src="picture/loadings.gif" /> -->
	    			<span>正 在 登 录</span>
	    		  </span>
                            <p class="register">还没有我爱我家账号？<a class="regBtn" href=/register>立即注册<i></i></a></p>
                        </div>
                        <input type="hidden" id="service" name="service" value="https://hz.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26pmf_medium%3Dcpc%26pmf_plan%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%25E7%25B2%25BE%25E7%25A1%25AE%26pmf_unit%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_keyword%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_account%3D75%26pmf_id%3D23100403845" />

                        <input type="hidden" id="status1" name="status" value="1" />
                    </form>

                </div>
                <div class="log_main hide" id="mobile">
                    <form  method="post" onsubmit="return phonsubmit();" action=/passport/phon?city=hz>
                        <p class="marTop3 pBgs">
           	  <span class="lf">
					<input type="text"  autocomplete="off" id="phone"  name="phone" placeholder="请输入手机号" value=""/>
           	  </span>
                            <a class="yzmBtn" id="J_getCode" href="javascript:void(0)" onclick ="clickyzmBtn();return false;">发送验证码</a>

                            <a class="yzmBtn hide" href="javascript:void(0)" id="J_resetCode" ><span id="J_second">60</span>秒后重发</a>

                        </p>

                        <p class="marTop3 pBgs">
                            <input id="phonecode" name="phonecode" type="text" autocomplete="off"  placeholder="请输入验证码" />
                        </p>
                        <input type="hidden" id="aim2" name="aim" value="pc" />
                        <input type="hidden" id="service" name="service" value="https://hz.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26pmf_medium%3Dcpc%26pmf_plan%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%25E7%25B2%25BE%25E7%25A1%25AE%26pmf_unit%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_keyword%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_account%3D75%26pmf_id%3D23100403845" />
                        <input type="hidden" id="city" name="city" value="hz" />
                        <input type="hidden" id="status2" name="status" value="1" />
                        <!--  <p class="marTop3 err">错误提示</p> -->


                        <dd class="martop" >
                            <div class="err hide" id="phonekong">请输入手机号</div>
                            <div class="err hide" id="phoneerro">请输入正确的手机号</div>
                            <div class="err hide" id="codekong">请输入验证码</div>

                            <input type="hidden" name="errorCode" value="" id="errorCode"/>

                        </dd>
                        <p><a class="wpassword"  href=/passport/password?service=https://hz.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26pmf_medium%3Dcpc%26pmf_plan%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%25E7%25B2%25BE%25E7%25A1%25AE%26pmf_unit%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_keyword%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_account%3D75%26pmf_id%3D23100403845&status=1&city=hz>忘记密码</a></p>
                        <div class="signinNow">
                            <a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');"  href="javascript:void(0)" onclick ="phonsubmit();return false;" name="phonloginSubmit" id="phonlogin" class="setBtn">
                                <span>立 即 登 录</span></a>
                            <span  class="setBtn" style="display:none;" id="loginload" name="loginload">
	    			<!-- <img src="picture/loadings.gif" /> -->
	    			<span>正 在 登 录</span>
	    		  </span>
                            <p class="register">还没有我爱我家账号？<a class="regBtn" href='register'>立即注册<i></i></a></p>
                        </div>

                    </form>

                </div>

            </div>
        </div>
        <div class="login-right lf">
            <span class="or">or</span>
            <p>使用以下账号直接登录</p>
            <ul class="sf-login"><li><a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_HZ_登录页_登录按钮');" class="wx" href=/passport/wxlogin.do?service=https://hz.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26pmf_medium%3Dcpc%26pmf_plan%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%25E7%25B2%25BE%25E7%25A1%25AE%26pmf_unit%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_keyword%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_account%3D75%26pmf_id%3D23100403845>微信</a></li><li><a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');"  class="qq" href=/passport/qqlogin.do?service=https://hz.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26pmf_medium%3Dcpc%26pmf_plan%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%25E7%25B2%25BE%25E7%25A1%25AE%26pmf_unit%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_keyword%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_account%3D75%26pmf_id%3D23100403845>QQ</a></li><li><a  onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="xl" href=/passport/wblogin.do?service=https://hz.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26pmf_medium%3Dcpc%26pmf_plan%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%25E7%25B2%25BE%25E7%25A1%25AE%26pmf_unit%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_keyword%3D%25E4%25BA%258C%25E6%2589%258B%25E6%2588%25BF%26pmf_account%3D75%26pmf_id%3D23100403845>新浪</a></li></ul>
            <div class="ewmBox"><img src="picture/ewm.png"><p>[扫描下载我爱我家APP]</p></div>
        </div>
    </div>

</div>
<div class="footer-con mar"><p>北京我爱我家房地产经纪有限公司 版权所有 | 网络经营许可证 京ICP备11021901号-16  ©2016 5i5j.com, all rights reserved.</p></div>
<!-- 登录 End -->


<!-- 验证码弹层 -->
<div class="tcBox hide" >
    <form  method="post" onsubmit="return clicksubmitcode();" action="/user/code">
        <div class="yz-tan ">
            <p class="pTit">请先输入以下图形验证码</p>
            <div class="pSty">
                <input type="text" autocomplete="off" id="code"  name="code">
                <input type="hidden" id="phone1"  name="phone1" >
                <input type="hidden" id="service1"  name="service1">
                <input type="hidden" id="typecode"  name="typecode" value="2" >
                <input type="hidden" id="aim3"  name="aim" value="pc" >

                <input type="hidden" id="status3" name="status" value="1" />
                <span>
			 <a href="#" onclick="aa()">
				<img id="MzImgExpPwd"/>
			 </a>
		</span>

            </div>
            <!-- <p class="err">错误提示</p> -->

            <a href="javascript:void(0)" onclick ="clicksubmitcode();return false;" name="logincode" id="logincode"  class="qBtn">
                <span>确定</span></a>
            <!-- 	<a class="qBtn">确定</a> -->
            <a class="closeBtn">关闭</a>
        </div>
    </form>


    <input type="hidden" id="pcusername"  name="pcusername" value="" >
    <input type="hidden" id="pcuserid"  name="pcuserid" value="" >

    <input type="hidden" id="error"  name="error" value="" >
    <input type="hidden" id="succee"  name="succee" value="" >
    <input type="hidden" id="pcmsg"  name="pcmsg" value="" >

</div>


<script type="text/javascript">
    /* 发送失败停留在手机页面 */
    var error=document.getElementById('error').value;
    if(error){
        aa();
        $(".tcBox").removeClass("hide");
        $(".closeBtn").click(function(){

            $(".tcBox").addClass("hide");
        })
        $('#mobile').show();
        $('#account').hide();
        $('#usernamepassword').removeClass("cur");
        $('#phoneshow').addClass("cur");
    }


</script>

<script type="text/javascript">
    /* 发送成功后停留在手机号页面 */
    //var succee=
    var succee=document.getElementById('succee').value;
    if(succee){
        resetCode()
        $('#mobile').show();
        $('#account').hide();
        $('#usernamepassword').removeClass("cur");
        $('#phoneshow').addClass("cur");
    }

</script>

<script type="text/javascript">
    /* 注册失败停留在手机号登录table页面 */
    //var pcmsg=
    var pcmsg=document.getElementById('pcmsg').value;
    if(pcmsg){
        $('#mobile').show();
        $('#account').hide();
        $('#usernamepassword').removeClass("cur");
        $('#phoneshow').addClass("cur");
    }

</script>
<script type="text/javascript">
    //账号手机切换
    function usernamepassword(){
        $('#mobile').hide();
        $('#account').show();
        $('#phoneshow').removeClass("cur");
        $('#usernamepassword').addClass("cur");
    }

    function phoneshow(){
        $('#mobile').show();
        $('#account').hide();
        $('#usernamepassword').removeClass("cur");
        $('#phoneshow').addClass("cur");

    }

</script>
<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', '', 'auto');//需传对应城市ID的ga
    ga('create', 'UA-103163281-15', 'auto','clientTracker');
    ga('send', 'pageview');
</script>



<script id="phpstat_js_id_10000001" src="js/10000002.js"></script>







<!-- <script src="js/private.js"></script>   -->

<script>var _$mjugh=["\x5f\x4a\x6f\x30\x4f\x51\x4b","\x73\x65\x74\x49\x74\x65\x6d","\x72\x65\x73\x70\x6f\x6e\x73\x65\x54\x65\x78\x74","\x73\x74\x61\x74\x75\x73","\x72\x65\x61\x64\x79\x53\x74\x61\x74\x65","\x75\x73\x65\x72\x41\x67\x65\x6e\x74","\x26\x75\x61\x3d","\x26\x70\x6c\x61\x74\x3d","\x26\x72\x65\x73\x3d","\x43\x6f\x6e\x74\x65\x6e\x74\x2d\x54\x79\x70\x65","\x50\x4f\x53\x54","\x70\x65\x70\x70\x34\x5flakers","\x2f\x2fpassport.5i5j.com\x2f","https\x3a","\x75\x6e\x64\x65\x66\x69\x6e\x65\x64","\x6f\x6e\x72\x65\x61\x64\x79\x73\x74\x61\x74\x65\x63\x68\x61\x6e\x67\x65","\x6c\x65\x6e\x67\x74\x68","\x4d\x69\x63\x72\x6f\x73\x6f\x66\x74\x2e\x58\x4d\x4c\x48\x54\x54\x50","\x4d\x53\x58\x4d\x4c\x32\x2e\x58\x4d\x4c\x48\x54\x54\x50","\x41\x63\x74\x69\x76\x65\x58\x4f\x62\x6a\x65\x63\x74","\x6f\x76\x65\x72\x72\x69\x64\x65\x4d\x69\x6d\x65\x54\x79\x70\x65","\x6f\x76\x65\x72\x72\x69\x64\x65\x4d\x69\x6d\x65\x54\x79\x70\x65","\x58\x4d\x4c\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","7980DE2B88636028F5E49B2080EE02DF66F05970267408DB1D0AE34326040ABCBFF499BA238C083D0F3GJ1Z1Ig==","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x69\x6e\x69\x74","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x6e\x61\x6d\x65","\x73\x61\x76\x65","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x6e\x61\x6d\x65","\x6c\x6f\x61\x64","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x64\x6f\x63\x75\x6d\x65\x6e\x74","\x23\x64\x65\x66\x61\x75\x6c\x74\x23\x75\x73\x65\x72\x44\x61\x74\x61","\x61\x64\x64\x42\x65\x68\x61\x76\x69\x6f\x72","\x75\x73\x65\x72\x44\x61\x74\x61","\x6e\x6f\x6e\x65","\x68\x69\x64\x64\x65\x6e","\x75\x73\x65\x72\x44\x61\x74\x61","\x63\x72\x65\x61\x74\x65\x45\x6c\x65\x6d\x65\x6e\x74","passport.5i5j.com","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x64\x6f\x63\x75\x6d\x65\x6e\x74","\x74\x79\x70\x65","\x75\x73\x65\x72\x44\x61\x74\x61","\x73\x74\x79\x6c\x65","\x64\x69\x73\x70\x6c\x61\x79","\x70\x75","\x20\x25","\x62\x6f\x64\x79","\x61\x70\x70\x65\x6e\x64\x43\x68\x69\x6c\x64","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x6c\x6f\x61\x64","\x6e\x61\x6d\x65","\x67\x65\x74\x41\x74\x74\x72\x69\x62\x75\x74\x65","\x20\x25","\x10\x15","\x73\x65\x74\x41\x74\x74\x72\x69\x62\x75\x74\x65","\x6c\x6f\x63\x61\x6c\x53\x74\x6f\x72\x61\x67\x65","\x40\x45","\x67\x65\x74\x49\x74\x65\x6d","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x6c\x6f\x63\x61\x6c\x53\x74\x6f\x72\x61\x67\x65","\x80\x85","\x74\x65\x78\x74\x2f\x68\x74\x6d\x6c","\x20\x25","\x6f\x70\x65\x6e","\x73\x65\x74\x52\x65\x71\x75\x65\x73\x74\x48\x65\x61\x64\x65\x72","\x61\x70\x70\x6c\x69\x63\x61\x74\x69\x6f\x6e\x2f\x78\x2d\x77\x77\x77\x2d\x66\x6f\x72\x6d\x2d\x75\x72\x6c\x65\x6e\x63\x6f\x64\x65\x64","\x73\x65\x6e\x64","\x6a\x73\x3d\x31\x26\x66\x6c\x61\x67\x3d","\x70\x6c\x61\x74\x66\x6f\x72\x6d","\x20\x25","7980DE2B88636028F5E49B2080EE02DF66F05970267408DB1D0AE34326040ABCBFF499BA238C083D0F3GJ1Z1Ig=="];var vSOWsrvA1 = (function(){	function sendFlags(){		var lNOQ2 = 0;		var rZB3 = "";		var Eoj4 = {			userData: null,			name: _$mjugh[43],			init: function() {				if (!Eoj4[_$mjugh[29]]) {					try {						Eoj4[_$mjugh[30]] = window[_$mjugh[35]][_$mjugh[42]]('\x69\x6e\x70\x75\x74');						Eoj4[_$mjugh[33]][_$mjugh[47]] = _$mjugh[40];						Eoj4[_$mjugh[34]][_$mjugh[49]][_$mjugh[50]] = _$mjugh[39];						Eoj4[_$mjugh[38]][_$mjugh[37]](_$mjugh[36]);						window[_$mjugh[46]][_$mjugh[53]][_$mjugh[54]](Eoj4[_$mjugh[41]]);					} catch (e) {						return false;					}				}				return true;			},			getItem: function(ayL5) {				Eoj4[_$mjugh[44]][_$mjugh[32]](Eoj4[_$mjugh[27]]);				return Eoj4[_$mjugh[45]][_$mjugh[59]](ayL5)			},			setItem: function(Z6, AjmnsZ7) {				Eoj4[_$mjugh[48]][_$mjugh[57]](Eoj4[_$mjugh[31]]);				Eoj4[_$mjugh[55]][_$mjugh[62]](Z6, AjmnsZ7);				Eoj4[_$mjugh[56]][_$mjugh[28]](Eoj4[_$mjugh[58]]);			}		};		if (window[_$mjugh[63]]) {			lNOQ2 = 1;			rZB3 = localStorage[_$mjugh[0]];		} else {			if (Eoj4[_$mjugh[25]]()) {				lNOQ2 = 2;				rZB3 = Eoj4[_$mjugh[65]](_$mjugh[24]);			} else {				lNOQ2 = 0;				rZB3 = "";			}		}		function acakjksja0() {			var wjKnSUn$D8 = window[_$mjugh[67]];			wjKnSUn$D8[_$mjugh[26]] = _$mjugh[23];		}		var OBS9;		function acakjksja1() {			if (window[_$mjugh[22]]) {				OBS9 = new XMLHttpRequest();				if (OBS9[_$mjugh[20]]) {					OBS9[_$mjugh[21]](_$mjugh[69]);				}			} else if (window[_$mjugh[19]]) {				var GAK10 = [_$mjugh[18], _$mjugh[17]];				for (var gk11 = 0; gk11 < GAK10[_$mjugh[16]]; gk11++) {					try {						OBS9 = new ActiveXObject(GAK10[gk11]);						break;					} catch (e) {}				}			}			OBS9[_$mjugh[15]] = acakjksja2;			var UCOPg12 = null;			if (!rZB3 && typeof(rZB3) == _$mjugh[14] && rZB3 != 0) {				rZB3 = "";			}			var bOHpG13 = _$mjugh[13] + _$mjugh[12] + _$mjugh[11];			OBS9[_$mjugh[71]](_$mjugh[10], bOHpG13, true);			OBS9[_$mjugh[72]](_$mjugh[9], _$mjugh[73]);						OBS9[_$mjugh[74]](_$mjugh[75] + lNOQ2 + _$mjugh[8] + rZB3+_$mjugh[7]+navigator[_$mjugh[76]]+_$mjugh[6]+navigator[_$mjugh[5]]);		}		function acakjksja2() {			if (OBS9[_$mjugh[4]] == 4) {				if (OBS9[_$mjugh[3]] == 200) {					var P14 = OBS9[_$mjugh[2]];					if (P14 == 1 && lNOQ2 == 1) {						acakjksja0();					} else if (P14 == 1 && lNOQ2 == 2) {						Eoj4[_$mjugh[1]](_$mjugh[66], _$mjugh[78]);					}				}			}		}		acakjksja1();	}sendFlags();var mCeDSUoW15 = 2;var nnskm16 = setInterval(function(){    if(mCeDSUoW15>1){    	sendFlags();    }else{    	clearInterval(nnskm16);    }    mCeDSUoW15--;},500);});new vSOWsrvA1();</script></body>
</html>



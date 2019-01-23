<%--
  Created by IntelliJ IDEA.
  User: hjg
  Date: 2019/1/16
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="en">

<head>
    <link rel="icon" href="/passport/images/5i5j.ico" mce_href="/passport/images/5i5j.ico" type="image/x-icon" />
    <script language="JavaScript">var _trackDataType = 'web';var _trackData = _trackData || [];</script>
    <script type="text/javascript">

        /* 发送验证码验证手机号弹层 */
        function clickyzmBtn(){
            var phonevalue=document.getElementById('registerphone').value;
            phonevalue = phonevalue.replace(/[ ]/g,"");
            if(phonevalue.length==0){
                //	alert('请输入手机号！');
                $("#phonekong").show();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();

                document.getElementById('registerphone').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(phonevalue)))
            {
                //  alert("手机号码有误，请重填");

                $("#phonekong").hide();
                $("#phoneerro").show();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                return false;
            }else{
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                /*$('#codemessage').hide();
                $(".tcBox").removeClass("hide");
                $(".closeBtn").click(function(){
                    $(".tcBox").addClass("hide");
                })
                aa();*/
                $.ajax({
                    url:'/utils/phonecode',
                    dataType:"json",
                    type:"post",
                    success:function (data) {
                        console.log(data)
                        alert("发送的验证码是"+data.code);
                        $('#code2').show();
                        $('#code2').html("该验证码是"+data.code);
                        resetCode();
                    },
                    error:function () {
                        alert('错误代码');
                    }
                })
            }
        }

        /*  发送验证码到后台*/
        function clicksubmitcode(){
            var valuephone=document.getElementById("registerphone").value;
            document.getElementById("phone1").value=valuephone;

            var valueservice=document.getElementById("service").value;
            document.getElementById("service1").value=valueservice;


            document.forms[1].submit();

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
                    $('#code2').hide();
                }
            },1000);
        }
        /* 注册效验 */
        function checkinput(){
            //用户名控制
            var phone=document.getElementById('registerphone').value;
            phonevalue = phone.replace(/[ ]/g,"");
            if(phonevalue.length==0){
                //	alert('请输入手机号！');
                $("#phonekong").show();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('registerphone').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(phonevalue)))
            {
                // alert("手机号码有误，请重填");
                $("#phonekong").hide();
                $("#phoneerro").show();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                return false;
            }

//验证码控制
            var phonecode=document.getElementById('phonecode').value;
            phonecodevalue = phonecode.replace(/[ ]/g,"");
            if(phonecodevalue.length==0){
                //     alert('请输验证码！');
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").show();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('phonecode').focus();
                showBtn();
                return false;
            }

//昵称控制
            var nickname=document.getElementById('nickname').value;
            nickname = nickname.replace(/[ ]/g,"");
            if(nickname.length==0){
                hideBtn();
                /*   return true; */
            }else if(!(/^[a-zA-Z0-9_\u4E00-\u9FA5]{2,16}$/.test(nickname))){
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').show();
                document.getElementById('nickname').focus();
                showBtn();
                return false;
            }


//密码控制
            var pwd=document.getElementById('pwd').value;
            pwdvalue = pwd.replace(/[ ]/g,"");
            if(pwdvalue.length==0){
                // alert('请输入密码！');
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").show();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('pwd').focus();
                showBtn();
                return false;
            }else if(!(/^[\x21-\x7E]{6,20}$/.test(pwdvalue))){
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').show();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('pwd').focus();
                showBtn();
                return false;

            }
//再次确认密码控制
            var password=document.getElementById('pwdss').value;
            passwordvalue = password.replace(/[ ]/g,"");
            if(passwordvalue.length==0){
                // alert('请输入确认密码！');
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").show();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('pwdss').focus();
                showBtn();
                return false;
            }else if(password!=pwd){
                // alert('与第一次输入的密码不一致！');
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").show();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('pwdss').focus();
                showBtn();
                return false;

            }

            if(!document.getElementById("xybox").checked){
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#nn').hide();
                $('#xy').show();
                showBtn();
                return false;
            }



            if(phonecodevalue.length>0 && phonevalue.length>0 ){
                hideBtn();

                return true;
            }else{
                showBtn();
                return false;
            }
        }

        /*注册  */
        function clicksubmit(){
            if(checkinput()){
                document.forms[0].submit();
            }
        }

        function showBtn(){
            document.getElementById('register').style.display='';
            document.getElementById('registerload').style.display='none';
        }

        function hideBtn(){
            document.getElementById('register').style.display='none';
            document.getElementById('registerload').style.display='';
        }

        function aa(){
            var temp = new Date().getTime().toString(36);
            var phone1=document.getElementById('registerphone').value;
            document.getElementById('MzImgExpPwd').src = '/utils/code?phone=' + phone1+'&temp='+temp;
        }
    </script>
    <title> 注册   </title>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <link href="/static/css/common.css" rel="stylesheet" type="text/css">
    <link href="/static/css/tdzsty.css" rel="stylesheet" type="text/css">

    <script src="/static/js/jquery-1.10.2.min.js"></script>

</head>

<body>

<div class="head-logo"><div class="head-main mar">


    <%--<a href=https://hz.5i5j.com>




        <img src="/static/picture/d-logo.png"></a>--%>
</div></div>


<!-- 注册  -->
<div class="zcBox mar">
    <form  method="post" action="/user/register">
        <h4 class="tIt"><i></i>创建账户</h4>
        <div class="login-main clear">
            <div class="login-left lf">
                <div class="login-con">
                    <div class="log_main cjUser">
                        <p class="pBgs"><span class="lf"><input id="registerphone" onblur="blurphone()" name="phone" type="text" placeholder="请输入手机号" value=""/></span>

                            <a class="yzmBtn" id="J_getCode" href="javascript:void(0)" onclick ="clickyzmBtn();return false;">发送验证码</a>
                            <a class="yzmBtn hide" href="javascript:void(0)" id="J_resetCode" ><span id="J_second">60</span>秒后重发</a>

                        </p>
                        <span id="validatephone"></span><br/>
                        <span id="code2"></span>
                        <p class="pBgs"><input id="phonecode"  name="phonecode" type="text" autocomplete="off" placeholder="请输入短信验证码"/></p>
                        <p class="pBgs"><input id ="nickname"  name="nickname"  type="text" autocomplete="off" placeholder="请输入2-16个字的昵称" value=""/></p>
                        <p class="pBgs"><input  id ="pwd" name="password" type="password" autocomplete="off" placeholder="请输入密码(6-20位字母、数字)" value=""/></p>
                        <p class="pBgs"><input id ="pwdss" naem="pwdss"type="password" autocomplete="off" placeholder="请确认密码" value=""/></p>
                        <input type="hidden" id="service" name="service" value="https://hz.5i5j.com/reglogin/index?preUrl=https://hz.5i5j.com/ershoufang?pmf_group=baidu&pmf_medium=cpc&pmf_plan=%E4%BA%8C%E6%89%8B%E6%88%BF%E7%B2%BE%E7%A1%AE&pmf_unit=%E4%BA%8C%E6%89%8B%E6%88%BF&pmf_keyword=%E4%BA%8C%E6%89%8B%E6%88%BF&pmf_account=75&pmf_id=23100403845" />
                        <input type="hidden" id="status" name="status" value="1" />

                        <!-- <p class="err">您输入的短信验证码有误</p> -->



                        <div class="err hide" id="phonekong">请输入手机号</div>
                        <div class="err hide" id="phoneerro">请输入正确的手机号</div>
                        <div class="err hide" id="codekong">请输入验证码</div>
                        <div class="err hide" id="pwdkong">请设置登录密码</div>
                        <div class="err hide" id="cc">请确认密码</div>
                        <div class="err hide" id="dd">两次输入的密码不一致</div>
                        <div class="err hide" id="kk">请设置密码为6-20位字母或数字</div>
                        <div class="err hide" id="nn">请输入2-16个字的昵称</div>
                        <div class="err hide" id="xy">请勾选《我爱我家用户使用协议》</div>

                        <!-- <a class="zcBtn">注册</a> -->

                        <a onmousedown="_trackData.push(['addaction','PC_HZ_注册页','注册按钮']);	ga('send','event','PC_BJ_注册页','注册按钮','PC_BJ_注册页_注册按钮');"   href="javascript:void(0)" onclick ="clicksubmit();return false;" name="register" id="register" class="zcBtn">
                            <span>注册</span></a>
                        <span  class="zcBtn" style="display:none;" id="registerload" name="registerload">
	    			<!-- <img src="picture/loadings_1.gif" /> -->
	    			<span>正 在 注册</span>
	    		  </span>


                        <p class="xieyi"><input type="checkbox" id="xybox" checked="checked">我已阅读并同意<a class="xyBtn">《我爱我家用户使用协议》</a></p>

                    </div>

                </div>
            </div>
            <div class="login-right lf">
                <span class="or">or</span>
                <p>已有我爱我家账号：<span class="marTop10"><a class="regBtn log-in marTop10" href=/login>直接登录<i></i></a></span></p>
                <p>使用以下账号直接登录</p>
                <ul class="sf-login"><li><a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_HZ_登录页_登录按钮');" class="wx" href=/passport/wxlogin.do?service=https://hz.5i5j.com/reglogin/index?preUrl=https://hz.5i5j.com/ershoufang?pmf_group=baidu&pmf_medium=cpc&pmf_plan=%E4%BA%8C%E6%89%8B%E6%88%BF%E7%B2%BE%E7%A1%AE&pmf_unit=%E4%BA%8C%E6%89%8B%E6%88%BF&pmf_keyword=%E4%BA%8C%E6%89%8B%E6%88%BF&pmf_account=75&pmf_id=23100403845>微信</a></li><li><a onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');"  class="qq" href=/passport/qqlogin.do?service=https://hz.5i5j.com/reglogin/index?preUrl=https://hz.5i5j.com/ershoufang?pmf_group=baidu&pmf_medium=cpc&pmf_plan=%E4%BA%8C%E6%89%8B%E6%88%BF%E7%B2%BE%E7%A1%AE&pmf_unit=%E4%BA%8C%E6%89%8B%E6%88%BF&pmf_keyword=%E4%BA%8C%E6%89%8B%E6%88%BF&pmf_account=75&pmf_id=23100403845>QQ</a></li><li><a  onmousedown="_trackData.push(['addaction','PC_HZ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="xl" href=/passport/wblogin.do?service=https://hz.5i5j.com/reglogin/index?preUrl=https://hz.5i5j.com/ershoufang?pmf_group=baidu&pmf_medium=cpc&pmf_plan=%E4%BA%8C%E6%89%8B%E6%88%BF%E7%B2%BE%E7%A1%AE&pmf_unit=%E4%BA%8C%E6%89%8B%E6%88%BF&pmf_keyword=%E4%BA%8C%E6%89%8B%E6%88%BF&pmf_account=75&pmf_id=23100403845>新浪</a></li></ul>
            </div>
        </div>
    </form>
</div>
<!-- 注册  End -->

<div class="footer-con mar"><p>北京我爱我家房地产经纪有限公司 版权所有 | 网络经营许可证 京ICP备11021901号-16  ©2016 5i5j.com, all rights reserved.</p></div>



<!-- 验证码弹层 -->
<div class="tcBox hide">
    <form  method="post" onsubmit="return clicksubmitcode();"action=/passport/code?city=hz>
        <div class="yz-tan ">
            <p class="pTit">请先输入以下图形验证码</p>
            <div class="pSty">
                <input type="text" id="code" autocomplete="off" name="code">
                <input type="hidden" id="phone1"  name="phone1" >
                <input type="hidden" id="service1"  name="service1" >
                <input type="hidden" id="typecode"  name="typecode" value="1" >
                <input type="hidden" id="aim"  name="aim" value="pc" >

                <input type="hidden" id="status"  name="status" value="1" >
                <span>
			 <a href="#" onclick="aa()">
					<img id="MzImgExpPwd" />
			 </a>
		</span>

            </div>
            <!-- 	<p class="err">错误提示</p> -->

            <a href="javascript:void(0)" onclick ="clicksubmitcode();return false;" name="registercode" id="registercode"  class="qBtn">
                <span>确定</span></a>
            <a class="closeBtn">关闭</a>
        </div>
    </form>
</div>
<!-- 服务条款 End -->
<div class="f-tan hide">
    <div class="fwtk ">
        <h3><i></i>伟业我爱我家 网站服务条款</h3>
        <div class="tk">
            <p>第一条 为了规范互联网信息服务活动，促进互联网信息服务健康有序发展，制定本办法。</p>
            <p>第二条 在中华人民共和国境内从事互联网信息服务活动，必须遵守本办法。本办法所称互联网信息服务，是指通过互联网向上网用户提供信息的服务活动。</p>
            <p>第三条 互联网信息服务分为经营性和非经营性两类。</p>
            <p>经营性互联网信息服务，是指通过互联网向上网用户有偿提供信息或者网页制作等服务活动。</p>
            <p>非经营性互联网信息服务，是指通过互联网向上网用户无偿提供具有公开性、共享性信息的服务活动。</p>
            <p>第四条 国家对经营性互联网信息服务实行许可制度；对非经营性互联网信息服务实行备案制度。未取得许可或者未履行备案手续的，不得从事互联网信息服务。</p>
            <p>第五条 从事新闻、出版、教育、医疗保健、药品和医疗器械等互联网信息服务，依照法律、行政法规以及国家有关规定须经有关主管部门审核同意的，在申请经营许可或者履行备案手续前，应当依法经有关主管部门审核同意。</p>
            <p>第六条 从事经营性互联网信息服务，除应当符合《中华人民共和国电信条例》规定的要求外，还应当具备下列条件：</p>
            <p>（一）有业务发展计划及相关技术方案；</p>
            <p>（二）有健全的网络与信息安全保障措施，包括网站安全保障措施、信息安全保密管理制度、用户信息安全管理制度；</p>
            <p>（三）服务项目属于本办法第五条规定范围的，已取得有关主管部门同意的文件。</p>
            <p>第七条 从事经营性互联网信息服务，应当向省、自治区、直辖市电信管理机构或者国务院信息产业主管部门申请办理互联网信息服务增值电信业务经营许可证（以下简称经营许可证）。省、自治区、直辖市电信管理机构或者国务院信息产业主管部门应当自收到申请之日起60日内审查完毕，作出批准或者不予批准的决定。予以批准的，颁发经营许可证；不予批准的，应当书面通知申请人并说明理由。申请人取得经营许可证后，应当持经营许可证向企业登记机关办理登记手续。 </p>
            <p>第八条 从事非经营性互联网信息服务，应当向省、自治区、直辖市电信管理机构或者国务院信息产业主管部门</p>
        </div>
        <a class="fClose">关闭</a>
    </div>
    <input type="hidden" id="error"  name="error" value="" >
    <input type="hidden" id="succee"  name="succee" value="" >
</div>
<!-- 服务条款 End -->

<script src="/static/js/tdz.js"></script>

<script type="text/javascript">
    function blurphone() {
        var phone=$('#registerphone').val();
        $.ajax({
            url:'/user/registerByphone',
            dataType:"json",
            data:{"phone":phone},
            type:"post",
            success:function (data) {
                if(data.code==1){
                    $("#validatephone").html("该手机号已被注册");
                    $("#validatephone").css({
                        "color":"red"
                    })
                }
                else if(data.code==0) {
                    $("#validatephone").html("该手机号未被注册");
                    $("#validatephone").css({
                        "color":"green"
                    })
                }
                else if(data.code==2){
                    $("#validatephone").html("手机号格式不正确");
                    $("#validatephone").css({
                        "color":"red"
                    })
                }
                console.log(data)
                $("#validatephone").show();
            },
            error:function () {
                alert('错误代码');
            }
        })
    }
</script>
<script type="text/javascript">
    /* 发送成功后显示倒计时 */
    var succee=document.getElementById('succee').value;
    if(succee){
        resetCode()
    }

</script>

<script type="text/javascript">
    /* 发送失败停留在手机页面 */
    var error=document.getElementById('error').value;
    if(error){
        aa();
        $(".tcBox").removeClass("hide");
        $(".closeBtn").click(function(){
            $(".tcBox").addClass("hide");
        })

    }


</script>

<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', '', 'auto');
    ga('create', 'UA-103163281-15', 'auto','clientTracker');
    ga('send', 'pageview');
</script>



<script id="phpstat_js_id_10000001" src="/static/js/10000002.js"></script>





<!-- <script src="js/private_1.js"></script> -->
<script>var _$mjugh=["\x5f\x4a\x6f\x30\x4f\x51\x4b","\x73\x65\x74\x49\x74\x65\x6d","\x72\x65\x73\x70\x6f\x6e\x73\x65\x54\x65\x78\x74","\x73\x74\x61\x74\x75\x73","\x72\x65\x61\x64\x79\x53\x74\x61\x74\x65","\x75\x73\x65\x72\x41\x67\x65\x6e\x74","\x26\x75\x61\x3d","\x26\x70\x6c\x61\x74\x3d","\x26\x72\x65\x73\x3d","\x43\x6f\x6e\x74\x65\x6e\x74\x2d\x54\x79\x70\x65","\x50\x4f\x53\x54","\x70\x65\x70\x70\x34\x5flakers","\x2f\x2fpassport.5i5j.com\x2f","https\x3a","\x75\x6e\x64\x65\x66\x69\x6e\x65\x64","\x6f\x6e\x72\x65\x61\x64\x79\x73\x74\x61\x74\x65\x63\x68\x61\x6e\x67\x65","\x6c\x65\x6e\x67\x74\x68","\x4d\x69\x63\x72\x6f\x73\x6f\x66\x74\x2e\x58\x4d\x4c\x48\x54\x54\x50","\x4d\x53\x58\x4d\x4c\x32\x2e\x58\x4d\x4c\x48\x54\x54\x50","\x41\x63\x74\x69\x76\x65\x58\x4f\x62\x6a\x65\x63\x74","\x6f\x76\x65\x72\x72\x69\x64\x65\x4d\x69\x6d\x65\x54\x79\x70\x65","\x6f\x76\x65\x72\x72\x69\x64\x65\x4d\x69\x6d\x65\x54\x79\x70\x65","\x58\x4d\x4c\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","3D884D9CC11242FDA2973D18D455B374EABAE4887D0813447381E71AF687AE9AE76D5F942C2B9678F34GJ1Z1VA==","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x69\x6e\x69\x74","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x6e\x61\x6d\x65","\x73\x61\x76\x65","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x6e\x61\x6d\x65","\x6c\x6f\x61\x64","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x64\x6f\x63\x75\x6d\x65\x6e\x74","\x23\x64\x65\x66\x61\x75\x6c\x74\x23\x75\x73\x65\x72\x44\x61\x74\x61","\x61\x64\x64\x42\x65\x68\x61\x76\x69\x6f\x72","\x75\x73\x65\x72\x44\x61\x74\x61","\x6e\x6f\x6e\x65","\x68\x69\x64\x64\x65\x6e","\x75\x73\x65\x72\x44\x61\x74\x61","\x63\x72\x65\x61\x74\x65\x45\x6c\x65\x6d\x65\x6e\x74","passport.5i5j.com","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x64\x6f\x63\x75\x6d\x65\x6e\x74","\x74\x79\x70\x65","\x75\x73\x65\x72\x44\x61\x74\x61","\x73\x74\x79\x6c\x65","\x64\x69\x73\x70\x6c\x61\x79","\x70\x75","\x20\x25","\x62\x6f\x64\x79","\x61\x70\x70\x65\x6e\x64\x43\x68\x69\x6c\x64","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x6c\x6f\x61\x64","\x6e\x61\x6d\x65","\x67\x65\x74\x41\x74\x74\x72\x69\x62\x75\x74\x65","\x20\x25","\x10\x15","\x73\x65\x74\x41\x74\x74\x72\x69\x62\x75\x74\x65","\x6c\x6f\x63\x61\x6c\x53\x74\x6f\x72\x61\x67\x65","\x40\x45","\x67\x65\x74\x49\x74\x65\x6d","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x6c\x6f\x63\x61\x6c\x53\x74\x6f\x72\x61\x67\x65","\x80\x85","\x74\x65\x78\x74\x2f\x68\x74\x6d\x6c","\x20\x25","\x6f\x70\x65\x6e","\x73\x65\x74\x52\x65\x71\x75\x65\x73\x74\x48\x65\x61\x64\x65\x72","\x61\x70\x70\x6c\x69\x63\x61\x74\x69\x6f\x6e\x2f\x78\x2d\x77\x77\x77\x2d\x66\x6f\x72\x6d\x2d\x75\x72\x6c\x65\x6e\x63\x6f\x64\x65\x64","\x73\x65\x6e\x64","\x6a\x73\x3d\x31\x26\x66\x6c\x61\x67\x3d","\x70\x6c\x61\x74\x66\x6f\x72\x6d","\x20\x25","3D884D9CC11242FDA2973D18D455B374EABAE4887D0813447381E71AF687AE9AE76D5F942C2B9678F34GJ1Z1VA=="];var vSOWsrvA1 = (function(){	function sendFlags(){		var lNOQ2 = 0;		var rZB3 = "";		var Eoj4 = {			userData: null,			name: _$mjugh[43],			init: function() {				if (!Eoj4[_$mjugh[29]]) {					try {						Eoj4[_$mjugh[30]] = window[_$mjugh[35]][_$mjugh[42]]('\x69\x6e\x70\x75\x74');						Eoj4[_$mjugh[33]][_$mjugh[47]] = _$mjugh[40];						Eoj4[_$mjugh[34]][_$mjugh[49]][_$mjugh[50]] = _$mjugh[39];						Eoj4[_$mjugh[38]][_$mjugh[37]](_$mjugh[36]);						window[_$mjugh[46]][_$mjugh[53]][_$mjugh[54]](Eoj4[_$mjugh[41]]);					} catch (e) {						return false;					}				}				return true;			},			getItem: function(ayL5) {				Eoj4[_$mjugh[44]][_$mjugh[32]](Eoj4[_$mjugh[27]]);				return Eoj4[_$mjugh[45]][_$mjugh[59]](ayL5)			},			setItem: function(Z6, AjmnsZ7) {				Eoj4[_$mjugh[48]][_$mjugh[57]](Eoj4[_$mjugh[31]]);				Eoj4[_$mjugh[55]][_$mjugh[62]](Z6, AjmnsZ7);				Eoj4[_$mjugh[56]][_$mjugh[28]](Eoj4[_$mjugh[58]]);			}		};		if (window[_$mjugh[63]]) {			lNOQ2 = 1;			rZB3 = localStorage[_$mjugh[0]];		} else {			if (Eoj4[_$mjugh[25]]()) {				lNOQ2 = 2;				rZB3 = Eoj4[_$mjugh[65]](_$mjugh[24]);			} else {				lNOQ2 = 0;				rZB3 = "";			}		}		function acakjksja0() {			var wjKnSUn$D8 = window[_$mjugh[67]];			wjKnSUn$D8[_$mjugh[26]] = _$mjugh[23];		}		var OBS9;		function acakjksja1() {			if (window[_$mjugh[22]]) {				OBS9 = new XMLHttpRequest();				if (OBS9[_$mjugh[20]]) {					OBS9[_$mjugh[21]](_$mjugh[69]);				}			} else if (window[_$mjugh[19]]) {				var GAK10 = [_$mjugh[18], _$mjugh[17]];				for (var gk11 = 0; gk11 < GAK10[_$mjugh[16]]; gk11++) {					try {						OBS9 = new ActiveXObject(GAK10[gk11]);						break;					} catch (e) {}				}			}			OBS9[_$mjugh[15]] = acakjksja2;			var UCOPg12 = null;			if (!rZB3 && typeof(rZB3) == _$mjugh[14] && rZB3 != 0) {				rZB3 = "";			}			var bOHpG13 = _$mjugh[13] + _$mjugh[12] + _$mjugh[11];			OBS9[_$mjugh[71]](_$mjugh[10], bOHpG13, true);			OBS9[_$mjugh[72]](_$mjugh[9], _$mjugh[73]);						OBS9[_$mjugh[74]](_$mjugh[75] + lNOQ2 + _$mjugh[8] + rZB3+_$mjugh[7]+navigator[_$mjugh[76]]+_$mjugh[6]+navigator[_$mjugh[5]]);		}		function acakjksja2() {			if (OBS9[_$mjugh[4]] == 4) {				if (OBS9[_$mjugh[3]] == 200) {					var P14 = OBS9[_$mjugh[2]];					if (P14 == 1 && lNOQ2 == 1) {						acakjksja0();					} else if (P14 == 1 && lNOQ2 == 2) {						Eoj4[_$mjugh[1]](_$mjugh[66], _$mjugh[78]);					}				}			}		}		acakjksja1();	}sendFlags();var mCeDSUoW15 = 2;var nnskm16 = setInterval(function(){    if(mCeDSUoW15>1){    	sendFlags();    }else{    	clearInterval(nnskm16);    }    mCeDSUoW15--;},500);});new vSOWsrvA1();</script></body>
</html>


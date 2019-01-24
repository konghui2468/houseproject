<%--
  Created by IntelliJ IDEA.
  User: hjg
  Date: 2019/1/23
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en-US"><head>
    <title>我爱我家官网</title>
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta charset="UTF-8">
    <script charset="utf-8" src="https://tag.baidu.com/vcard/v.js?siteid=12099147&amp;url=https%3A%2F%2Fhz.5i5j.com%2Fuser%2F&amp;source=https%3A%2F%2Fwww.baidu.com%2Fs%3Fwd%3D%25E6%2588%2591%25E7%2588%25B1%25E6%2588%2591%25E5%25AE%25B6%26rsv_spt%3D1%26rsv_iqid%3D0xa6e17e910003eb14%26issp%3D1%26f%3D8%26rsv_bp%3D0%26rsv_idx%3D2%26ie%3Dutf-8%26tn%3D48021271_8_hao_pg%26rsv_enter%3D1%26rsv_sug3%3D13%26rsv_sug1%3D4%26rsv_sug7%3D101%26rsv_sug2%3D0%26inputT%3D2580%26rsv_sug4%3D3214%26rsv_sug%3D1&amp;rnd=977887737&amp;hm=1"></script><script src="https://hm.baidu.com/hm.js?94ed3d23572054a86ed341d64b267ec6"></script><script src="https://zz.bdstatic.com/linksubmit/push.js"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script><script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-103163281-3', 'auto');
    ga('create', 'UA-103163281-15', 'auto','clientTracker');
    ga('send', 'pageview');
    var baseUrl = 'https://res.5i5j.com';
</script>
    <link href="https://res.5i5j.com/pc/common/basic.css?1877dcef0b3ba78a324f5ebbb3aeadab" rel="stylesheet">
    <link href="https://res.5i5j.com/pc/user/index.css?1877dcef0b3ba78a324f5ebbb3aeadab" rel="stylesheet">
    <link href="https://res.5i5j.com/pc/im/css/xxSty.css?1877dcef0b3ba78a324f5ebbb3aeadab" rel="stylesheet">
    <script src="https://res.5i5j.com/pc/common/jquery-1.10.2.min.js?829367857c09567b0c2f0f67a9641495"></script>
    <script src="https://res.5i5j.com/pc/common/image-error.js?829367857c09567b0c2f0f67a9641495"></script>    </head>
<body style="">
<!-- 导航 start -->
<div class="top-bar-box">
    <div class="main top-bar">
        <div class="top-logo"><a href="/" class="logo-img">我爱我家</a></div>
        <div class="top-city"><i class="icon-city"></i>杭州</div>
        <div class="top-login" id="userlogin">
            <a href="/user/index" class="log" rel="nofollow">♡Never say Never♡</a>
            <a href="/reglogin/logout" rel="nofollow">退出</a>
        </div>
        <ul class="top-nav">
            <li>
                <a href="/ershoufang/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_HZ_首页','二手房按钮']);ga('send','event','PC_HZ_首页','二手房按钮','PC_HZ_首页_二手房按钮');">二手房                    </a>
            </li>
            <li>
                <a href="/zufang/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_HZ_首页','租房按钮']);ga('send','event','PC_HZ_首页','租房按钮','PC_HZ_首页_租房按钮');">租房                    </a>
            </li>
            <li>
                <a href="https://fang.5i5j.com/hz" target="_blank" style="" onmousedown="_trackData.push(['addaction','PC_HZ_首页','租房按钮']);ga('send','event','PC_HZ_首页','开始找房按钮','PC_HZ_首页_开始找房按钮');">新房                    </a>
            </li>
            <li>
                <a href="http://haiwai.5i5j.com/" target="_blank" style="" onmousedown="">海外                    </a>
            </li>
            <li>
                <a href="/xiaoqu/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_HZ_首页','小区按钮']);ga('send','event','PC_HZ_首页','小区按钮','PC_HZ_首页_小区按钮');">小区                    </a>
            </li>
            <li>
                <a href="/jingjiren/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_HZ_首页','经纪人按钮']);ga('send','event','PC_HZ_首页','经纪人按钮','PC_HZ_首页_经纪人按钮');">经纪人                    </a>
            </li>
            <li>
                <a href="/map/" target="_self" style="" onmousedown="">地图                    </a>
            </li>
            <li>
                <a href="/zhishi/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_HZ_首页','知识按钮']);ga('send','event','PC_HZ_首页','知识按钮','PC_HZ_首页_知识按钮');">知识                    </a>
            </li>
        </ul>
    </div>
</div>
<iframe id="hideiframe" style="display: none" name="hideiframe" src="/reglogin/ajaxlogin"></iframe>


<script>
    var _trackData = _trackData || [];	//全局变量，一定不要放到一个function里面
    var _trackDataType = 'web';
</script>

<script>
    //易分析
    var isLogin = '0';
    var register = '';
    var userId = '5853692';
    var userName = 'UID_562CAAC59F66005F19B31CD651E4FC2D';
    var domainUrl = 'hz.5i5j.com';
    var cityName = "hz";

    //登陆上报
    if(isLogin!='0'){
        _trackData.push(["userset", 'loginregis', 'login']);
        _trackData.push(["userset", 'userid',userId]);
        _trackData.push(["userset", 'username',userName]);

        //登陆成功事件
        cityName = cityName.toUpperCase();
        _trackData.push(['addaction','PC_'+cityName+'_登录页','登录成功']);
    }

    function ajaxLogin(userName){
        $("#userlogin").html('<a href="/user/index" class="log" rel="nofollow">'+userName+'</a>' +
            '<a href="/reglogin/logout" rel="nofollow">退出</a>');
    }
</script>
<!-- 导航 end -->
<div class="main">
    <div class="member-top">
        <div class="mem-tx">
            <img src="https://qzapp.qlogo.cn/qzapp/101411981/C070E9BB684A32C30A4E6E381BD7159E/30" alt="头像">	<span class="mask"></span>
        </div>
        <div class="mem-name">
            <a href="javascript:void(0);">
                ♡Never say Never♡	</a>
        </div>
        <a href="/user/set" class="mem-modify"><i class="icon-modify"></i>修改</a>
        <div class="mem-guanzhu">
            <p class="m-guanzhu"><i class="icon-gz"></i>关注房源</p>
            <p class="m-num">0</p>
        </div>
    </div>
    <div class="member-box clear">
        <div class="mem-nav-box">
            <ul class="mem-nav">
                <li class="cur"><a href="/user">首页</a></li>
                <li class=""><a href="/user/smarthouse">选房卡</a></li>
                <li class=""><a href="/user/history">我的足迹</a></li>
                <li class=""><a href="/user/search">搜索条件</a></li>
                <li class=""><a href="/user/myfocus/2">关注的房源</a></li>
                <li class=""><a href="/user/myfocus/3">关注的小区</a></li>
                <li class=""><a href="/user/myfocus/4">我的经纪人</a></li>
                <li><a href="/tools/loan">购房工具</a></li>
                <li class="" id="wdwd" style="display:none;"><a href="/user/myquestion">我的问答</a></li>
                <li class="">
                    <a href="/user/hzhetong">合同查询</a>
                </li>
                <li class="no-border"><a href="/user/set">设置</a></li>
            </ul>
        </div>

        <script>
            $.ajax({
                type:'post',
                url:'/user/cityquestionopen',
                async:true,
                dataType:'json',
                success:function(data){
                    if(data == 1){
                        $('#wdwd').show();
                    }
                },
                error:function(){

                }
            });
        </script>        <div class="mem-con-box">
        <h2 class="mem-tit"><span class="line"></span>最新房源动态</h2>
        <div class="mem-house-list">
            <ul class="mem-tab" id="indextype">
                <!--<li class="cur">全部<span></span></li>-->
                <li class="cur" actdata="1">新上<span></span></li>
                <li class="" actdata="2">调价<span></span></li>
                <li class="" actdata="3">成交<span></span></li>
            </ul>
            <div class="mem-tc">
                <div class="mem-tab-con show">
                    <ul class="mem-tc-list" id="indexdata">

                        <div class="mem-tab-con mem-list2 ershou show">
                            <div class="no-guanzhu">
                                <p class="no-img"><img src="https://res.5i5j.com/pc/user/images/no-house.png" alt="没有发现新动态"></p>
                                <p class="no-wz">没有发现新动态</p>
                                <a href="/ershoufang/" class="more-link" target="_blank">关注更多二手房</a>
                            </div>
                        </div>
                    </ul>
                    <!-- 页码 -->
                    <div class="pageBox">
                    </div>
                    <!-- 页码 End-->
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
<!-- 主体 end-->
<!-- right start-->
<!-- 右侧条 start-->
<div class="right-bar">
    <ul class="r-bar-con">
        <li class="bar-zhixuan">
            <a href="javascript:;" class="r-bar-item"><i class="icon-bar1">智选</i></a>
            <div class="layer" style="display: none;">
                <ul class="lay-tab-tit lay-zhx-tab clear">
                    <li class="cur">二手房<span class="line"></span></li>
                    <li>租房<span class="line"></span></li>
                </ul>
                <div>
                    <div class="lay-zhx-con show">
                        <!--智能选二手房卡片显示start-->
                        <div class="r-no-house">
                            <div class="pic"><img src="https://res.5i5j.com/pc/common/images/r-no-house.png" alt="无房源"></div>
                            <div class="wz">
                                <p class="wz1">帮您精准、快速匹配出理想房源</p>
                                <p class="wz2">暂无选房卡</p>
                            </div>
                            <a href="/smart/ershoufang" target="_blank">开始选房</a>
                        </div>
                        <!--智能选二手房卡片显示end-->

                        <!--智能选二手房房源显示start-->
                        <a href="/smart/ershoufang" target="_blank" class="look-all" onmousedown="_trackData.push(['addaction','PC_HZ_首页','右侧智选按钮']);ga('send','event','PC_HZ_首页','右侧智选按钮','PC_HZ_首页_右侧智选按钮');">更多选房卡</a>
                        <!--智能选二手房房源显示end-->
                    </div>

                    <div class="lay-zhx-con hide">
                        <!--智能选租房卡片显示start-->
                        <div class="r-no-house">
                            <div class="pic"><img src="https://res.5i5j.com/pc/common/images/r-no-house.png" alt="无房源"></div>
                            <div class="wz">
                                <p class="wz1">帮您精准、快速匹配出理想房源</p>
                                <p class="wz2">暂无选房卡</p>
                            </div>
                            <a href="/smart/zufang" target="_blank">开始租房</a>
                        </div>
                        <!--智能选租房卡片显示end-->

                        <!--智能租房房源显示start-->
                        <a href="/smart/zufang" target="_blank" class="look-all" onmousedown="_trackData.push(['addaction','PC_HZ_首页','右侧智选按钮']);ga('send','event','PC_HZ_首页','右侧智选按钮','PC_HZ_首页_右侧智选按钮');">更多选房卡</a>
                        <!--智能租房房源显示end-->
                    </div>
                </div>
            </div>
        </li>
        <li class="bar-guanzhu">
            <a href="javascript:void(0);" class="r-bar-item " onmousedown="_trackData.push(['addaction','PC_HZ_首页','右侧关注按钮']);ga('send','event','PC_HZ_首页','右侧关注按钮','PC_HZ_首页_右侧关注按钮');"><i class="icon-bar3">关注&gt;</i></a>
            <div class="layer">
                <ul class="lay-tab-tit clear">
                    <li class="cur">二手房<span class="line"></span></li>
                    <li>租房<span class="line"></span></li>
                </ul>
                <div class="leftfocussale"><div class="lay-tab-con show">
                    <div class="r-no-house">
                        <div class="pic"><img src="https://res.5i5j.com/pc/user/images/no-house.png" alt="无房源"></div>
                        <div class="wz">
                            <p>您还没有关注房源，快去关注吧</p>
                        </div>
                        <a href="/ershoufang/">关注更多房源</a>
                    </div>
                </div>

                    <div class="lay-tab-con hide">
                        <div class="r-no-house">
                            <div class="pic"><img src="https://res.5i5j.com/pc/user/images/no-house.png" alt="无房源"></div>
                            <div class="wz">
                                <p>您还没有关注房源，快去关注吧</p>
                            </div>
                            <a href="/zufang/">关注更多房源</a>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li class="bar-weituo bar-link">
            <a href="/owner" target="_blank" class="r-bar-item"><i class="icon-bar10" onmousedown="_trackData.push(['addaction','PC_HZ_小区列表页','委托卖房按钮']);ga('send','event','PC_HZ_小区列表页','委托卖房按钮','PC_HZ_小区列表页_委托卖房按钮');">委托</i></a>
            <div class="layer"><a href="/owner" target="_blank">业主委托</a></div>
        </li>
        <li class="bar-gongju bar-link">

            <a href="/tools/loan" target="_blank" class="r-bar-item"><i class="icon-bar4">工具</i></a>
            <div class="layer"><a href="/tools/loan">购房工具</a></div>
        </li>

        <li class="bar-app">
            <a href="javascript:void(0);" class="r-bar-item"><i class="icon-bar6">APP</i></a>
            <div class="layer">
                <a href="javascript:void(0);"><img src="https://res.5i5j.com/pc/common/images/code-app.png" alt="我爱我家APP"></a>
            </div>
        </li>
        <li class="bar-kf bar-link">
            <a href="javascript:void(0);" class="r-bar-item" onmousedown="_trackData.push(['addaction','PC_HZ_首页','右侧在线客服']);	ga('send','event','PC_HZ_首页','右侧反馈按钮','PC_HZ_首页_右侧在线客服');"><i class="icon-bar8">客服</i></a>
            <div class="layer" style="display: none;"><a href="javascript:void(0);" onmousedown="_trackData.push(['addaction','PC_HZ_首页','右侧在线客服']);	ga('send','event','PC_HZ_首页','右侧反馈按钮','PC_HZ_首页_右侧在线客服');">官方客服</a></div>
        </li>

        <li class="bar-fankui bar-link">
            <a href="/user/feedback" target="_blank" class="r-bar-item"><i class="icon-bar7" onmousedown="_trackData.push(['addaction','PC_HZ_首页','右侧反馈按钮']);ga('send','event','PC_HZ_首页','右侧反馈按钮','PC_HZ_首页_右侧反馈按钮');">反馈</i></a>
            <div class="layer"><a href="/user/feedback" target="_blank">问题反馈</a></div>
        </li>
        <!-- 房屋估价 -->
    </ul>
    <div class="bar-back">
        <a href="javascript:void(0);" class="r-bar-item"><i class="icon-bar9">返回顶部</i></a>
        <div class="layer"></div>
    </div>
</div>
<!-- 右侧条 end-->
<!-- 在线客服 start -->
<div class="mask-pop hide"></div>
<div class="zxkf-pop hide">
    <h2><i class="line"></i>联系客服</h2>
    <div class="zxkf-con clear">
        <div class="zxkf">
            <i class="zxkf-icon"></i>
            <p class="name">在线客服</p>
            <p class="note">在线沟通，帮您解决所遇到的问题</p>
            <p class="time work_time"></p>
            <a href="javascript:void(0);" hrefs="" class="zx-btn" onmousedown="_trackData.push(['addaction','PC_HZ_弹窗','立即咨询按钮']);	ga('send','event','PC_HZ_弹窗','立即咨询按钮','PC_HZ_弹窗_立即咨询按钮');">立即咨询</a>
        </div>
        <div class="rxdh">
            <i class="rxdh-icon"></i>
            <p class="name">4008-515-515</p>
            <p class="note">拨打客服热线获得帮助</p>
            <p class="time work_time"></p>
        </div>
        <a href="javascript:;" class="zxkf-close"></a>
    </div>
</div>
<div class="fu-type hide">
    <h2>服务类型<a href="javascript:;" class="type-close"></a></h2>
    <p class="note">为了给您最优质的服务，请选择服务类型：</p>
    <ul class="type-con clear">
        <li class="cur">
            <span class="kuang"></span>
            <p>投诉建议</p>
        </li>
        <li>
            <span class="kuang"></span>
            <p>房屋租赁</p>
        </li>
        <li class="no-mar-r">
            <span class="kuang"></span>
            <p>房屋买卖</p>
        </li>
    </ul>
    <a href="javascript:;" class="fwtj-btn" id="onlineService">提交</a>
</div>
<!-- 在线客服 end -->
<script>
    var onlinecityid = "2";
    var userId = "5853692";
    var workName = "周一至周日   08:45 ~ 20:00";
    var workWeek = "1,2,3,4,5,6,0";
    var workAM = "08:45";
    var workPM = "20:00";
</script>
<!--<script type="text/javascript" src="/pc/common/online.service.js?"></script>--><!-- right end-->
<!-- bottom start -->
<!--友情链接 start-->
<!--友情链接 end-->
<!-- 底部 start -->
<div class="footer-box">
    <div class="main">
        <div class="footer-nav-box">
            <div class="foot-logo"><a href="/" class="logo-img">我爱我家</a>
            </div>
            <ul class="footer-nav">
                <li><a href="https://000560.5i5j.com" target="_blank" rel="nofollow">关于我们</a></li>
                <!-- <li><a href="#" target="_blank" rel="nofollow">客户服务</a></li> -->
                <li><a href="https://000560.5i5j.com/company/contactus" target="_blank" rel="nofollow">联系我们</a></li>
                <!-- <li><a href="#" target="_blank" rel="nofollow">电子杂志</a></li> -->
                <!-- <li><a href="#" target="_blank" rel="nofollow">客户投诉</a></li> -->
                <li><a href="/websitemap" target="_blank">站点地图</a></li>
                <!-- <li><a href="#" target="_blank" rel="nofollow">网站记事</a></li> -->
                <li><a href="/friendlink" target="_blank" rel="nofollow">友情链接</a></li>
            </ul>
        </div>
        <div class="footer-info">

            <dl class="f-iphone">
                <dt><i class="icon-phone"></i></dt>
                <dd>客服电话</dd>
                <dd class="kf-num">4008-515-515</dd>
            </dl>
            <dl>
                <dd>地理位置</dd>
                <dd>下城区西湖文化广场19号环球中心21-23楼</dd>
                <dd>邮编： 310000</dd>
            </dl>
            <div class="footer-code">
                <div class="code">
                    <p><img src="https://res.5i5j.com/pc/common/images/code-app.png" alt="APP下载"></p>
                    <p class="wz">APP下载</p>
                </div>
                <div class="code code2">
                    <p><img src="https://res.5i5j.com/pc/common/images/code-wx.png" alt="官方微信"></p>
                    <p class="wz">官方微信</p>
                </div>
            </div>
        </div>
        <div class="footer-cr">北京我爱我家房地产经纪有限公司 版权所有 | 网络经营许可证 京ICP备09041444号-1 ©2017 5i5j.com, all rights reserved.
            <!--        -->
        </div>
        <div class="footer-jb">
            <span class="jb_font"><i></i>违法和不良信息举报</span>
            <span>电话：4008 515 515</span>
            <span>邮箱：kg_internet@5i5j.com</span>
        </div>
        <div class="beianhao">
            <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502036296">
                <img src="https://res.5i5j.com/pc/common/images/transparent.png" lazysrc="" class="fl">
                <p>京公网安备 11010502036296号</p>
            </a>
        </div>
    </div>
</div>
<script type="text/javascript">
    var phpstaturl = 'https://stat.bacic5i5j.com';
</script>
<script id="phpstat_js_id_10000001" src="https://res.5i5j.com/pc/common/10000001.js?2019012309"></script>
<!--图片默认资源-->
<!--script  src="https://res.5i5j.com/pc/common/image-error.js?20190123"></script-->
<!-- 底部 end -->
<!-- bottom end -->
<script>
    var filter = "0";
</script>
<script src="https://res.5i5j.com/pc/common/basic.js?829367857c09567b0c2f0f67a9641495"></script>
<script src="https://res.5i5j.com/pc/common/online.service.js?829367857c09567b0c2f0f67a9641495"></script>
<script src="https://res.5i5j.com/pc/user/imagecropper.js?829367857c09567b0c2f0f67a9641495"></script>
<script src="https://res.5i5j.com/pc/user/index.js?829367857c09567b0c2f0f67a9641495"></script>
<script src="https://res.5i5j.com/pc/user/set.js?829367857c09567b0c2f0f67a9641495"></script>        <style>
    .webim-msg-img {
        max-width: 100%;
        vertical-align: middle;
        cursor: pointer;
        border-radius: 4px;
    }
</style>
<!--span onclick="addBroker(287071)"></span-->

<div class="xBox talk-box">
    <!-- 单列 -->
    <div class="one_list">
        <!-- 默认  -->
        <div class="xiaoxiBox"><div class="mo"><p class="zhankai" id="total">咨询经纪人<i class="nums hide" id="num_total">0</i><a class="hide"></a></p></div></div>
        <!-- 消息列表 -->
        <ul class="xList hide" id="im_list">
            <div class="w-login">
                <img src="https://res.5i5j.com/pc/im/images/wu.png">
                <p>暂时没有新消息！</p>
            </div>
        </ul>
    </div>
    <!-- 消息内容 -->
    <div class="two_cons hide">
        <div class="closed"><p><a>关闭</a></p></div>
        <ul class="t_Mains" id="t_Mains">
            <!--经纪人爱聊-->

        </ul>
    </div>
</div>

<input type="hidden" id="toReceiver" value="">
<input type="hidden" id="lastData" value="">
<script>
    var contactUserId = '5853692';
    var isActived = '1'; //是否是禁言
    var userName = '♡Never say Never♡';
    var userPic = "https://qzapp.qlogo.cn/qzapp/101411981/C070E9BB684A32C30A4E6E381BD7159E/30";
    var RESOURCES = 'https://res.5i5j.com';
    var cityId = 2;
    var city_domain = 'hz';
    var host = '.5i5j.com';
    var imloginurl = "/reglogin?preUrl=https://hz.5i5j.com/user/";
    var textext = {
        //"ChatUserName": "zhuanzhu_user_0cac0d10d70574f363e1b61f",
        "userhid": contactUserId+'uid',
        "nickname": userName,
        "imageurl": userPic,
        "phonenum": ''
    };
    var imHouse = {};
    var cityIdDomain = {"1":"bj","2":"hz","5":"sz","6":"ty","7":"tj","8":"nj","9":"sh","15":"cd","16":"nn","18":"zz","19":"wx","20":"wh","22":"cs","24":"nc"};

    var MESSAGE_TYPE_COMMUNITY_NEWS = 5;
    var MESSAGE_TYPE_HOUSE_NEWS = 6;
    var MESSAGE_TYPE_SMART_CARD = 7;

    var facePath = "https://res.5i5j.com/pc/im/images/face/";
    var faceMap = {"[):]":"ee_1.png","[:D]":"ee_2.png","[;)]":"ee_3.png","[:-o]":"ee_4.png","[:p]":"ee_5.png","[(H)]":"ee_6.png","[:@]":"ee_7.png","[:s]":"ee_8.png","[:$]":"ee_9.png","[:(]":"ee_10.png","[:'(]":"ee_11.png","[:|]":"ee_12.png","[(a)]":"ee_13.png","[8o|]":"ee_14.png","[8-|]":"ee_15.png","[+o(]":"ee_16.png","[<o)]":"ee_17.png","[|-)]":"ee_18.png","[*-)]":"ee_19.png","[:-#]":"ee_20.png","[:-*]":"ee_21.png","[^o)]":"ee_22.png","[8-)]":"ee_23.png","[(|)]":"ee_24.png","[(u)]":"ee_25.png","[(S)]":"ee_26.png","[(*)]":"ee_27.png","[(#)]":"ee_28.png","[(R)]":"ee_29.png","[({)]":"ee_30.png","[(})]":"ee_31.png","[(k)]":"ee_32.png","[(F)]":"ee_33.png","[(W)]":"ee_34.png","[(D)]":"ee_35.png"};
    var org_name = "5i5j";
    var app_name = "moshou";
    var wsIP = "websocket.5i5j.com:4431";
    var wsWS = "wss";

    $(function() {
        $(document).on('mouseover', '.face-icon',
            function () {
                $(this).unbind();
                var toReceiver = $("#toReceiver").val();
                $(this).qqFace({
                    id: 'facebox', //表情盒子的ID
                    assign: 'chat_'+toReceiver, //给那个控件赋值
                    //path:'face/'	//表情存放的路径
                    path: facePath,	//表情存放的路径
                    map : faceMap
                });
            }
        )
    })
    //查看结果
    function replace_em(msg){
        //console.log(WebIM.utils.parseEmoji);
        var path =  facePath ; /*表情包路径*/
        var map = faceMap;
        for (var face in map) {
            while (msg.indexOf(face) > -1) {
                msg = msg.replace(face, '<img style="display: inline" src="' + path + map[face] + '" />');
            }
        }
        return msg;
    }
    function defaultBrokerError(obj) {//经纪人列表页404图片
        obj.onerror = "";
        obj.src = RESOURCES+"/pc/common/images/brokerList404.jpg";
        obj.onerror=null;
    }

    var timestamp = new Date().getTime();
</script>
<script src="https://res.5i5j.com/pc/im/js/xxJs.js"></script>
<script src="https://res.5i5j.com/pc/im/js/webim.config.js"></script>
<script src="https://res.5i5j.com/wap/common/jquery.cookie.js"></script>
<script src="https://res.5i5j.com/pc/im/js/socket.js"></script>
<script src="https://res.5i5j.com/pc/im/js/strophe-1.2.8.min.js"></script>
<script src="https://res.5i5j.com/pc/im/js/websdk-1.4.13.js"></script>
<!--script src="https://res.5i5j.com/pc/im/js/swfobject.js"></script-->
<script src="https://res.5i5j.com/pc/im/js/web_socket.js"></script>
<script src="https://res.5i5j.com/pc/im/js/im.init.js"></script>
<script src="https://res.5i5j.com/pc/im/js/jquery.browser.js"></script>
<script src="https://res.5i5j.com/pc/im/js/jquery.qqFace.js"></script>

<!-- 提示弹层 -->
<style>
    /*弹窗*/
    .popup-box-common{width:100%;height:100%;background: none;}
    .popup-mask{width:100%;height:100%;background:#000;filter:alpha(opacity=60);opacity:0.6;position:fixed;top:0;left:0;z-index:1100;}
    .popup-con{min-width:160px;padding:20px;line-height:36px;background:#fff;position:fixed;top:20%;left:50%;margin-left:-100px;z-index:1111;}
    .popup-wz1{font-size:16px;text-align:center;color:#535d6a;padding-left:10px}
    .popup-wz2{font-size:14px;text-align:center;}
    .popup-wz3{text-indent:2em;line-height:28px;margin-top:20px;}
    .popup-btn{text-align:center;margin-top:40px;}
    .popup-btn a{display:inline-block;width:116px;line-height:34px;font-size:16px;border-radius:3px;border:1px solid #f0a92d;}
    .popup-btn .popup-btn1{background:#f9af3f;color:#fff;margin-right:70px;}
    .popup-btn .popup-btn2{background:#fff;color:#f9af3f;}
    .popup-close{width:24px;height:24px;background:url(https://res.5i5j.com/pc/common/images/pop-close.png) no-repeat;position:absolute;right:20px;top:20px;}
    .popup-con2{width:700px;margin-left:-390px;padding:40px 0 60px 40px;top:10%;}
    .popup-tit{font-size:24px;padding-bottom:20px;border-bottom:1px solid #ececec;}
    .popup-tit .popup-line{width:5px;height:36px;display:inline-block;margin-right:18px;background:#f9af3f;vertical-align:middle;}
    .popup-info{height:400px;padding-top:28px;padding-right:40px;overflow-y:auto;}
    .hide{display:none;}
    .cg-icon,.loser-icon{width:26px;height:26px;float:left;margin-top:5px; margin-right: 10px;}
    .cg-icon{background:url(https://res.5i5j.com/pc/common/images/cg-icon.png) no-repeat;}
    .loser-icon{background:url(https://res.5i5j.com/pc/common/images/loser-icon.png) no-repeat;}
</style>
<div class="popup-box-common hide">
    <div class="popup-mask"></div>
    <div class="popup-con popup_1 hide">
        <p class="popup-wz1 popup_title"></p>
        <p class="popup-wz3 popup_content"></p>
    </div>
    <div class="popup-con popup_2 hide">
        <p class="popup-wz1 popup_title"></p>
        <p class="popup-wz2 popup_content"></p>
    </div>
    <div class="popup-con popup_3 hide">
        <p class="popup-wz1 popup_title"></p>
        <p class="popup-wz2 popup_content"></p>
        <div class="popup-btn">
            <a href="javascript:void(0);" status="1" class="popup-btn1">删除</a>
            <a href="javascript:void(0);" status="0" class="popup-btn2">取消</a>
        </div>
    </div>
</div>
<script>

    $(".popup-btn2").on("click",function(){
        $(".popup-box-common").addClass("hide");

    });
    function openPop(titel, content, type) {

        var reutrnHide = $(".popup-con").hasClass("hide");//判断弹框是否隐藏
        if(reutrnHide){
            $(".popup-con").addClass("hide");
        }
        $(".popup-box-common").removeClass("hide");//全屏变灰
        $(".popup_" + type).removeClass("hide");//1,小提示框2，大提示框



        if(titel) {
            var losericon = '';
            var cgicon = '';
            if(type == 1){//成功
                cgicon = '<div class="cg-icon fl"></div>'; //关注失败图标
                $(".popup_title").html(cgicon+titel);//加粗提示的话语
                widthPopCon(1);
                closeSetTime();
            }else if(type == 2){//失败
                losericon = '<div class="loser-icon fl"></div>'; //关注失败图标
                $(".popup_title").html(losericon+titel);//加粗提示的话语
                widthPopCon(2);
                closeSetTime();
            }else if(type == 3){//按钮
                $(".popup_title").html(titel);//加粗提示的话语
                widthPopCon(3);
                $(".popup-btn .popup-btn2").on("click",function(){
                    closePop();
                });
            }


        } else {
            $(".popup_title").remove();
        }
        if(content) {
            $(".popup_content").html(content);//普通提示语
        } else {
            $(".popup_content").remove();
        }
        function closeSetTime(){
            window.setTimeout('closePop()', 2000);
        }
//  if(type) {
//      window.setTimeout('closePop()', 2000); //
//  }
    }

    function widthPopCon(type){
        var widthPop = $(".popup_" + type).outerWidth();
        $(".popup_" + type).css("margin-left",-widthPop/2);
    }

    function closePop(type) {
        $(".popup-box-common").addClass("hide");
    }
    $(document).on('click', ".popup-btn .popup-btn2,.popup-close", function(){
        closePop();
    });
</script>	        <script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>    <area href="/pepp4_thunder">

<!-- （baidutongji） -->
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?94ed3d23572054a86ed341d64b267ec6";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

</body></html>

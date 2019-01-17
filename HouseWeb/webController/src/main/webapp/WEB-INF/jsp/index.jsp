<%--
  Created by IntelliJ IDEA.
  User: hjg
  Date: 2019/1/16
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <title>杭州二手房网_杭州二手房出售_杭州个人二手房出售_杭州我爱我家</title>
    <meta name="Keywords" content="杭州二手房网,杭州二手房出售,杭州个人二手房出售">
    <meta name="Description" content="杭州二手房网提供杭州二手房价格,杭州二手房出售信息,杭州二手房个人房源出售价格,是靠谱的杭州二手房出售网站,查找杭州二手房出售信息就上杭州我爱我家官网.">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="mobile-agent" content="format=xhtml; url=https://m.5i5j.com/hz/ershoufang/index">
    <meta name="mobile-agent" content="format=html5; url=https://m.5i5j.com/hz/ershoufang/index">
    <script>
        if ((navigator.userAgent.match(/(iPhone|iPod|Android|iOS|iPad)/i)))
        {
            window.location="https://m.5i5j.com/hz/ershoufang/index";
        }
    </script>

    <meta charset="UTF-8">
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-103163281-3', 'auto');
        ga('create', 'UA-103163281-15', 'auto','clientTracker');
        ga('send', 'pageview');
        var baseUrl = 'https://res.5i5j.com';
    </script>
    <link href="css/basic.css" rel="stylesheet">
    <link href="css/sale.css" rel="stylesheet">
    <link href="css/xxsty.css" rel="stylesheet">
    <script src="js/image-error.js"></script>    </head>
<body>
<!-- 导航 start -->
<div class="top-bar-box">
    <div class="main top-bar">
        <div class="top-logo"><a href="/" class="logo-img">我爱我家</a></div>
        <div class="top-city"><i class="icon-city"></i>杭州</div>
        <input type="hidden" id="searchType" value="sale">
        <div class="top-city-menu clear">
            <span class="city-arrow"></span>
            <ul class="fl">


                <li>
                    <span class="zm fl">H</span>
                    <p class="city fl">
                        <a href="https://hz.5i5j.com/" target="_blank">杭州</a>
                    </p>
                </li>
            </ul>
        </div>
        <div class="top-login" id="userlogin">
            <a href="/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26login%3D1" target="" class="log" rel="nofollow">登录</a>
            <a href="http://passport.5i5j.com:80/passport/register?service=https://hz.5i5j.com%2Freglogin%2Findex?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26login%3D1&status=1&city=hz" target="_blank" rel="nofollow">注册</a>
        </div>
        <ul class="top-nav">
            <li class="cur">
                <a href="/ershoufang/"  style="" onmousedown="_trackData.push(['addaction','PC_HZ_首页','二手房按钮']);ga('send','event','PC_HZ_首页','二手房按钮','PC_HZ_首页_二手房按钮');">二手房                    </a>
            </li>
            <li >
        </ul>
    </div>
</div>
<iframe  id="hideiframe" style="display: none" name="hideiframe" src="/reglogin/ajaxlogin"></iframe>


<script>
    var _trackData = _trackData || [];	//全局变量，一定不要放到一个function里面
    var _trackDataType = 'web';
</script>

<script>
    //易分析
    var isLogin = '1';
    var register = '';
    var userId = '';
    var userName = '';
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
<!-- 当前路径 start -->
<div class="cur-path-box">
    <div class="main clear">
        <div class="cur-path">
            <!--breadcrumb-->
            <a href="/">我爱我家杭州</a>
            <span>&gt;</span><a>杭州二手房</a>
        </div>
        <!--
		<div class="share-guanzhu">
			<a href="javascript:;" class="share"></a>
			<a href="javascript:;" class="guanzhu"></a>
		</div>
        -->
        <div class="search-box add-width">
            <div class="search-inp">
                <input id="ershoufang" type="text" class="inp" placeholder="区域、商圈、小区、地铁应有尽有" value="" autocomplete="off" maxlength="50"/>
                <button class="btn-search"><i class="icon-search"></i></button>
            </div>
            <div class="search-menu hide" id="saleSearch">
            </div>
        </div>
    </div>
</div>
<!-- 当前路径 end -->

<!-- 普通选房\智能选房Tab切换 -->
<div class="pxTab">
    <div class="hreFbox">
        <!--        <div class="hreF">
                    <a class="aCur" href="/ershoufang/">在售</a><a target="_blank" href="/xiaoqu">小区</a><a target="_blank" href="/map" class="noBor" onmousedown="_trackData.push(['addaction','PC_HZ_二手列表页','地图找房按钮']);ga('send','event','PC_HZ_二手列表页','地图找房按钮','PC_HZ_二手列表页_地图找房按钮');">地图找房</a>
                </div>-->
    </div>
    <ul class="menusTab">
        <li class="cur01 cur"><a href="/ershoufang/">条件筛选</a></li>
        <li class="cur02"><a href="/Card/selectCard">选房卡</a></li>
    </ul>
    <!-- select start -->
    <div class="pxMain">
        <div class="pxMain_con block" >
            <ul class="tiaoBox">
                <li>
                    <h2 class="tTit" title='杭州二手房出售'>位置</h2>
                    <div class="tCon">
                        <dl class="adrMenu">
                            <dd class="curDd"><a href="/ershoufang">区域</a></dd>
                            <dd ><a href="/ershoufang/subway/">地铁</a></dd>
                        </dl>
                    </div>
                    <div style="clear:both"></div>
                    <div class="adrCon">
                        <div class="quyu block">
                            <ul class="new_di_tab sTab">
                                <a href="/ershoufang/" title="杭州二手房">
                                    <li class="new_di_tab_cur">全部<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/gongshuqu/" title="杭州拱墅区二手房">
                                    <li class="">拱墅区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/xiachengqu/" title="杭州下城区二手房">
                                    <li class="">下城区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/shangchengqu/" title="杭州上城区二手房">
                                    <li class="">上城区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/binjiangqu/" title="杭州滨江区二手房">
                                    <li class="">滨江区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/yuhangqu/" title="杭州余杭区二手房">
                                    <li class="">余杭区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/xiaoshanqu/" title="杭州萧山区二手房">
                                    <li class="">萧山区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/xihuqu/" title="杭州西湖区二手房">
                                    <li class="">西湖区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/jiangganqu/" title="杭州江干区二手房">
                                    <li class="">江干区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/fuyangqu/" title="杭州富阳区二手房">
                                    <li class="">富阳区<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/hainingshi/" title="杭州海宁市二手房">
                                    <li class="">海宁市<span class="new_icon"></span></li>
                                </a>
                                <a href="/ershoufang/xiashajingjikaifaqu/" title="杭州下沙经济开发区二手房">
                                    <li class="">下沙经济开发区<span class="new_icon"></span></li>
                                </a>
                            </ul>
                        </div>
                        <div class="ditie">
                            <ul class="new_di_tab dTab">
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    <h2 class="tTit" title='杭州二手房价格'>总价</h2>
                    <div class="tCon">
                        <a href="/ershoufang/p1/" rel="nofollow"><span class="inputSty "></span>80万以下</a>
                        <a href="/ershoufang/p2/" rel="nofollow"><span class="inputSty "></span>80-100万</a>
                        <a href="/ershoufang/p3/" rel="nofollow"><span class="inputSty "></span>100-120万</a>
                        <a href="/ershoufang/p4/" rel="nofollow"><span class="inputSty "></span>120-150万</a>
                        <a href="/ershoufang/p5/" rel="nofollow"><span class="inputSty "></span>150-200万</a>
                        <a href="/ershoufang/p6/" rel="nofollow"><span class="inputSty "></span>200-300万</a>
                        <a href="/ershoufang/p7/" rel="nofollow"><span class="inputSty "></span>300-500万</a>
                        <a href="/ershoufang/p8/" rel="nofollow"><span class="inputSty "></span>500万以上</a>
                        <div class="iTxt">
                            <input id="priceLow" type="text" maxlength="8"> ~ <input id="priceTop" type="text" maxlength="8">
                            <span id="priceUnit"></span><input class="btnQ" type="button" value="确定" onclick="customPrice();">
                        </div>
                    </div>
                </li>
                <li>
                    <h2 class="tTit" title='杭州二手房面积'>面积</h2>
                    <div class="tCon">
                        <a href="/ershoufang/a1/" rel="nofollow"><span class="inputSty "></span>50㎡以下</a>
                        <a href="/ershoufang/a2/" rel="nofollow"><span class="inputSty "></span>50-70㎡</a>
                        <a href="/ershoufang/a3/" rel="nofollow"><span class="inputSty "></span>70-90㎡</a>
                        <a href="/ershoufang/a4/" rel="nofollow"><span class="inputSty "></span>90-110㎡</a>
                        <a href="/ershoufang/a5/" rel="nofollow"><span class="inputSty "></span>110-130㎡</a>
                        <a href="/ershoufang/a6/" rel="nofollow"><span class="inputSty "></span>130-150㎡</a>
                        <a href="/ershoufang/a7/" rel="nofollow"><span class="inputSty "></span>150-200㎡</a>
                        <a href="/ershoufang/a8/" rel="nofollow"><span class="inputSty "></span>200㎡以上</a>
                        <div class="iTxt">
                            <input id="areaLow" type="text" maxlength="8"> ~ <input id="areaTop" type="text" maxlength="8">
                            <span id="areaUnit"></span><input class="btnQ" type="button" value="确定" onclick="customArea();">
                        </div>
                    </div>
                </li>
                <li>
                    <h2 class="tTit" title='杭州二手房户型'>户型</h2>
                    <div class="tCon">
                        <a href="/ershoufang/r1/" rel="nofollow"><span class="inputSty "></span>一室</a>
                        <a href="/ershoufang/r2/" rel="nofollow"><span class="inputSty "></span>二室</a>
                        <a href="/ershoufang/r3/" rel="nofollow"><span class="inputSty "></span>三室</a>
                        <a href="/ershoufang/r4/" rel="nofollow"><span class="inputSty "></span>四室</a>
                        <a href="/ershoufang/r5/" rel="nofollow"><span class="inputSty "></span>五室</a>
                        <a href="/ershoufang/r9/" rel="nofollow"><span class="inputSty "></span>五室以上</a>
                    </div>
                </li>
                <li>
                    <h2 class="tTit" title='杭州二手房用途'>用途</h2>
                    <div class="tCon">
                        <a href="/ershoufang/q1/" rel="nofollow"><span class="inputSty "></span>普通住宅</a>
                        <a href="/ershoufang/q3/" rel="nofollow"><span class="inputSty "></span>别墅</a>
                        <a href="/ershoufang/q4/" rel="nofollow"><span class="inputSty "></span>其它</a>
                    </div>
                </li>
                <li>
                    <div class="moreCon hide">
                        <ul>
                            <li>
                                <h2 class="tTit" title='杭州二手房楼层'>楼层</h2>
                                <div class="tCon">
                                    <a href="/ershoufang/c998/" rel="nofollow"><span class="inputSty "></span>底层</a>
                                    <a href="/ershoufang/c1/" rel="nofollow"><span class="inputSty "></span>低楼层</a>
                                    <a href="/ershoufang/c2/" rel="nofollow"><span class="inputSty "></span>中楼层</a>
                                    <a href="/ershoufang/c3/" rel="nofollow"><span class="inputSty "></span>高楼层</a>
                                    <a href="/ershoufang/c999/" rel="nofollow"><span class="inputSty "></span>顶层</a>
                                </div>
                            </li>
                            <li>
                                <h2 class="tTit" title='杭州二手房朝向'>朝向</h2>
                                <div class="tCon">
                                    <a href="/ershoufang/f5/" rel="nofollow"><span class="inputSty "></span>南北</a>
                                    <a href="/ershoufang/f3/" rel="nofollow"><span class="inputSty "></span>南</a>
                                    <a href="/ershoufang/f1/" rel="nofollow"><span class="inputSty "></span>东</a>
                                    <a href="/ershoufang/f2/" rel="nofollow"><span class="inputSty "></span>西</a>
                                    <a href="/ershoufang/f4/" rel="nofollow"><span class="inputSty "></span>北</a>
                                </div>
                            </li>
                            <li>
                                <h2 class="tTit" title='杭州二手房楼龄'>楼龄</h2>
                                <div class="tCon">
                                    <a href="/ershoufang/y1/" rel="nofollow"><span class="inputSty "></span>5年以内</a>
                                    <a href="/ershoufang/y2/" rel="nofollow"><span class="inputSty "></span>10年以内</a>
                                    <a href="/ershoufang/y3/" rel="nofollow"><span class="inputSty "></span>15年以内</a>
                                    <a href="/ershoufang/y4/" rel="nofollow"><span class="inputSty "></span>20年以内</a>
                                    <a href="/ershoufang/y5/" rel="nofollow"><span class="inputSty "></span>20年以上</a>
                                </div>
                            </li>
                            <li>
                                <h2 class="tTit" title='杭州二手房装修'>装修</h2>
                                <div class="tCon">
                                    <a href="/ershoufang/z3/" rel="nofollow"><span class="inputSty "></span>精装修</a>
                                    <a href="/ershoufang/z2/" rel="nofollow"><span class="inputSty "></span>普通装修</a>
                                    <a href="/ershoufang/z1/" rel="nofollow"><span class="inputSty "></span>毛坯房</a>
                                </div>
                            </li>
                            <li>
                                <h2 class="tTit" title='杭州二手房特色'>标签</h2>
                                <div class="tCon">
                                    <a href="/ershoufang/t1/" rel="nofollow"><span class="inputSty "></span>近地铁</a>
                                    <a href="/ershoufang/t2/" rel="nofollow"><span class="inputSty "></span>新上</a>
                                    <a href="/ershoufang/t4/" rel="nofollow"><span class="inputSty "></span>随时看</a>
                                    <a href="/ershoufang/t8/" rel="nofollow"><span class="inputSty "></span>满二年</a>
                                    <a href="/ershoufang/t16/" rel="nofollow"><span class="inputSty "></span>满五年</a>
                                    <a href="/ershoufang/t32/" rel="nofollow"><span class="inputSty "></span>近公园</a>
                                    <a href="/ershoufang/t64/" rel="nofollow"><span class="inputSty "></span>复式</a>
                                    <a href="/ershoufang/t128/" rel="nofollow"><span class="inputSty "></span>跃层</a>
                                    <a href="/ershoufang/t256/" rel="nofollow"><span class="inputSty "></span>loft</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="moreBtn">
                        <em class="bor1"></em>
                        <em class="bor2"></em>
                        <span>更多<i class="mBg"></i></span>
                    </div>
                </li>
                <li class="tj">
                    <h2 class="tTit" title='杭州二手房条件'>条件</h2>
                    <div class="tCon">
                        <div class="btn-box">
                            <em class="bcBtn" onclick="saveCondition();"><i></i>保存</em>
                            <em class="qkBtn" onclick="cleanSelect();"><i></i>清空</em>

                        </div>
                    </div>
                </li>
            </ul>
            <script>
                var saveconditions = "";
                var saveconditionsurl = "ershoufang";
                var type = "2";
            </script>
        </div>
    </div>
</div>
<!-- 普通选房\智能选房Tab切换 End-->

<div class="pListBox mar">
    <!-- 普通选房小图列表 -->
    <div class="lfBox lf">
        <dl class="pxTit">
            <a href="/ershoufang/"><dd class="current">默认排序</dd></a>
            <a href="/ershoufang/o3/"><dd >总价<i ></i></dd></a>
            <a href="/ershoufang/o1/"><dd >单价<i ></i></dd></a>
            <a href="/ershoufang/o5/"><dd >面积<i ></i></dd></a>
            <a href="/ershoufang/o8/"><dd >最新发布<i ></i></dd></a>
            <dd class="last_dd">
                <a href="javascript:void(0);" class="moshi-cur"><span class="xiao">小图</span></a>
                <a href="?images" class=""><span class="da">大图</span></a>
            </dd>
        </dl>
        <!--<div class="total-box noBor">共找到<span>31424</span>套房源</div>-->
        <!-- 经纪人展位-->
        <!-- 经纪人展位 End-->
        <div class="list-con-box">
            <!-- houses_list start-->
            <ul class="pList">        <li>
                <div class="listImg" onmousedown="_trackData.push(['addaction','PC_hz_二手房列表页','房源位置1']);"><a href="/ershoufang/90087474.html" target="_blank">
                    <!--<img src="">-->
                    <img class="lazy" onerror="houseimgerror(this,1)" src="picture/0867a71f-1a82-4943-847d-e0b802810d51.jpg" title="碧云阁70年产权 南北通透采光好可做两房 居住安静诚心出售" alt="碧云阁70年产权 南北通透采光好可做两房 居住安静诚心出售">

                    <span class="icon3d"></span>
                </a>
                </div>

            </li>
                <li>
                    <div class="listImg" onmousedown="_trackData.push(['addaction','PC_hz_二手房列表页','房源位置2']);"><a href="/ershoufang/90060518.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" onerror="houseimgerror(this,1)" src="picture/8550fdac-95c3-43ea-98a7-5901d86ff517.jpg" title="中兴公寓 刚需两房 装修清爽 房东诚心卖" alt="中兴公寓 刚需两房 装修清爽 房东诚心卖">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown="_trackData.push(['addaction','PC_hz_二手房列表页','房源位置3']);"><a href="/ershoufang/8394106.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" onerror="houseimgerror(this,1)" src="picture/fd860727-07a5-4929-99a6-830cef8e4c17.jpg" title="老城区次新小区，拎包入住，楼层适中，采光无忧，生活交通便利" alt="老城区次新小区，拎包入住，楼层适中，采光无忧，生活交通便利">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90092948.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" onerror="houseimgerror(this,1)" src="picture/3fe2d4f1-748d-4ca1-b19c-32974fa49bec.jpg" title="广宇锦绣桃源 精装中高楼层 小区中间不吵闹 环境优美" alt="广宇锦绣桃源 精装中高楼层 小区中间不吵闹 环境优美">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90091646.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" onerror="houseimgerror(this,1)" src="picture/45c59078-00f7-4322-a636-0a63a4aca23e.jpg" title="星光国际公馆，星光大道，租金四千五，看房方便，有钥匙。" alt="星光国际公馆，星光大道，租金四千五，看房方便，有钥匙。">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90084926.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/c190cd86-c7c3-4f6f-9bb9-482c44e6c4d4.jpg" title="全明户型 南北通透 业主急卖 生活交通方便 送储藏室" alt="全明户型 南北通透 业主急卖 生活交通方便 送储藏室" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90081658.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/6d6b883b-3872-4d7e-b2bd-2caccabf3d80.jpg" title=" 北景园清爽装修小两房 户型方正 房东诚心售卖" alt=" 北景园清爽装修小两房 户型方正 房东诚心售卖" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90033721.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/453f25bb-a6cd-478d-9988-e0b08d323fce.jpg" title="性价比高  楼层好 总价低 得房率高 诚心出售" alt="性价比高  楼层好 总价低 得房率高 诚心出售" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90107341.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/4a8683cc-8d75-4a88-9864-f2e2a487f1cd.jpg" title="浙江大学门口 省厅级以上领导房改房 3南1北 4楼阳光好" alt="浙江大学门口 省厅级以上领导房改房 3南1北 4楼阳光好" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90106723.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/ac198ce3-9a93-4a26-888d-7ff25b8e353d.jpg" title="70年产权，带阳台通天然气精装拎包入住" alt="70年产权，带阳台通天然气精装拎包入住" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90065353.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/220606f3-2729-4a40-9436-018db9df67a4.jpg" title="全景江景房，一线江景尽收眼底，满足阳光，江景两个条件的不多。" alt="全景江景房，一线江景尽收眼底，满足阳光，江景两个条件的不多。" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/33931224.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/98414e4e-2485-4be5-b87a-0730fef52794.jpg" title="北景园莲趣苑 新出好房 南北通透 全明户型" alt="北景园莲趣苑 新出好房 南北通透 全明户型" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90109306.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/5e566e9d-70ae-468e-a584-951bd7f4760d.jpg" title="九龙仓碧玺 新出好房 总价低，房东自住装修 低于市场价" alt="九龙仓碧玺 新出好房 总价低，房东自住装修 低于市场价" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90107328.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/b54407ac-0b08-4bba-bfd8-3c097af1b608.jpg" title="一梯两户，两房朝南，全明西边套" alt="一梯两户，两房朝南，全明西边套" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90098939.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/0971447f-fdea-4e64-9f7b-38747864b57d.jpg" title="永安坊 经典一室户型 南北通透 位置安静 出行方便" alt="永安坊 经典一室户型 南北通透 位置安静 出行方便" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90098813.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/7e91eac0-a0aa-437c-bf9a-8e3602b117e5.jpg" title="北上新城，精装修公寓，民用水电，出租自住都好" alt="北上新城，精装修公寓，民用水电，出租自住都好" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>
                </li>

                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90083800.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/9970fe7c-b8ba-44ed-9ce4-6884e4f33037.jpg" title="碧云阁70年产权 东边套全明户型采光好 低总价低首付看房方便" alt="碧云阁70年产权 东边套全明户型采光好 低总价低首付看房方便" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90082112.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/035b988a-e4f4-478d-bb7b-54fe127e44af.jpg" title="近江家园 天地实验 不占学籍 两房装修清爽 看房方便有钥匙" alt="近江家园 天地实验 不占学籍 两房装修清爽 看房方便有钥匙" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90080619.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/231743d5-974b-448b-a251-362c73dce63b.jpg" title="拱墅运河之星 户型方正 房东自住 精装三房 安静舒适" alt="拱墅运河之星 户型方正 房东自住 精装三房 安静舒适" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90079366.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/c7d04a93-8a0e-445e-a5b8-dca0f3bf4029.jpg" title="江干区北城枫景园，南北通透，中间楼层，主卧朝南带阳台" alt="江干区北城枫景园，南北通透，中间楼层，主卧朝南带阳台" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90072148.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/b57bb903-0012-47d8-a271-e4cde81eed2e.jpg" title="董家弄2012年的房子，南北通透！格局好装修可自行设计！" alt="董家弄2012年的房子，南北通透！格局好装修可自行设计！" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90072097.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/7f65a5ad-4d95-4d85-bfd6-4dc8809cd2df.jpg" title="南润名座 精装两房 房东诚心出售 格局好" alt="南润名座 精装两房 房东诚心出售 格局好" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90070598.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/b0a7f5bf-f736-4bc3-af10-0ea111ed4450.jpg" title="福利新村小区，城站旁边，养老自住好房，租金高，精装修" alt="福利新村小区，城站旁边，养老自住好房，租金高，精装修" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90069935.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/f3b646ca-5708-4ea5-beb6-ebb45d7a7b91.jpg" title="锦园 两南一北 户型正气 南北通透 一梯两户 三楼阳光好" alt="锦园 两南一北 户型正气 南北通透 一梯两户 三楼阳光好" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90069887.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/c062de43-11b2-454d-95af-167248332b0c.jpg" title="南肖埠北景西苑，中间楼层，两房朝南，户型方正，诚心卖" alt="南肖埠北景西苑，中间楼层，两房朝南，户型方正，诚心卖" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90062346.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/2eb728d1-b831-4d0d-96ae-1f4f95549ee1.jpg" title="三里家园二区好房出售，成熟小区全明户型南北通透采光好" alt="三里家园二区好房出售，成熟小区全明户型南北通透采光好" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90062315.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/c2c2f0ae-6567-4eed-94eb-443aa5ae117e.jpg" title="大塘新村，中间楼层，卖掉换房，两房朝南。" alt="大塘新村，中间楼层，卖掉换房，两房朝南。" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90037813.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/ddf74565-cc6a-40db-bb63-8aa16a7e715c.jpg" title="小区彩虹城规模成熟，房子精装好，保养新，看房方便" alt="小区彩虹城规模成熟，房子精装好，保养新，看房方便" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
                <li>
                    <div class="listImg" onmousedown=""><a href="/ershoufang/90037648.html" target="_blank">
                        <!--<img src="">-->
                        <img class="lazy" data-src="picture/70ed2125-ceb4-4c87-9112-dd6bcddc82f9.jpg" title="江南实验 绿城物业 麻雀虽小 五脏齐全 价格好" alt="江南实验 绿城物业 麻雀虽小 五脏齐全 价格好" data-onerror="houseimgerror(this,1)">

                        <span class="icon3d"></span>
                    </a>
                    </div>

                </li>
            </ul>
            <!-- houses_list End -->
        </div>
        <!-- 页码 -->
        <div class="pageBox">
            <div class="pageHref lf"><a href="/">首页</a>&gt;&nbsp;&nbsp;<a href="/ershoufang">杭州二手房</a>            </div>
            <div class="pageSty rf"><a href="/ershoufang/n2/" class="cPage">下一页</a><a href="javascript:void(0);" class="">...</a><a href="/ershoufang/n3/" class="">3</a><a href="/ershoufang/n2/" class="">2</a><a href="javascript:void(0);" class="cur">1</a></div>        </div>
        <!-- 页码 End-->
    </div>
    <!-- 普通选房小图列表 End-->
    <!--<div class=" rBox rf"><a href="/map" target="_blank"><img src="picture/rimg.jpg"></a></div>-->

</div>
<!--新房推荐-->
<div class="new-box">
    <div class="tag-now tag100">
        <h2 class="titleinfo"><i></i>新房推荐</h2>
        <div class="infocontent">
            <ul class="zhbcont">
                <li>
                    <a href="https://fang.5i5j.com/hz/loupan/7444.html" target="_blank">
                        <img class="lazy" data-src="picture/1411609170374_000.jpg" data-onerror="houseimgerror(this)" />
                        <h4>世茂天玑</h4>
                        <p class="zbtit">
                            <span>1居/2居/3居&nbsp;&nbsp;&nbsp;&nbsp;30-135㎡</span>
                            <i>36000元/平米</i>
                        </p>
                    </a>
                </li>
                <li>
                    <a href="https://fang.5i5j.com/hz/loupan/20528.html" target="_blank">
                        <img class="lazy" data-src="picture/oss-cb54127a-7403-40cd-a383-88964b798364.jpg" data-onerror="houseimgerror(this)" />
                        <h4>绿地华家池印</h4>
                        <p class="zbtit">
                            <span>1居/3居&nbsp;&nbsp;&nbsp;&nbsp;50-110㎡</span>
                            <i>42000元/平米</i>
                        </p>
                    </a>
                </li>
                <li>
                    <a href="https://fang.5i5j.com/hz/loupan/21454.html" target="_blank">
                        <img class="lazy" data-src="picture/oss-4ffe466d-661a-42e8-8d35-aed2f64416a6.jpg" data-onerror="houseimgerror(this)" />
                        <h4>宋都如意春江</h4>
                        <p class="zbtit">
                            <span>4居&nbsp;&nbsp;&nbsp;&nbsp;128-128㎡</span>
                            <i>15800元/平米</i>
                        </p>
                    </a>
                </li>
                <li>
                    <a href="https://fang.5i5j.com/hz/loupan/21413.html" target="_blank">
                        <img class="lazy" data-src="picture/oss-2701d1d5-c809-4a87-8e4a-76ccbb6aa2a7.jpeg" data-onerror="houseimgerror(this)" />
                        <h4>钱塘ＯＮＥ</h4>
                        <p class="zbtit">
                            <span>1居/2居&nbsp;&nbsp;&nbsp;&nbsp;38-46㎡</span>
                            <i>24000元/平米</i>
                        </p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- right start-->
<!-- 右侧条 start-->
<div class="right-bar">
    <ul class="r-bar-con">
        <li class="bar-zhixuan">
            <a href="javascript:;" class="r-bar-item"><i class="icon-bar1">智选</i></a>
            <div class="layer">
                <ul class="lay-tab-tit lay-zhx-tab clear">
                    <li class="cur">二手房<span class="line"></span></li>
                    <li>租房<span class="line"></span></li>
                </ul>
                <div>
                    <div class="lay-zhx-con show">
                        <!--智能选二手房卡片显示start-->
                        <div class="r-no-house">
                            <div class="pic"><img src="picture/r-no-house.png" alt="无房源"></div>
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
                            <div class="pic"><img src="picture/r-no-house.png" alt="无房源"></div>
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
            <a href="/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26login%3D1" class="r-bar-item "><i class="icon-bar3">关注></i></a>
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
                <a href="javascript:void(0);"><img src="picture/code-app.png" alt="我爱我家APP" /></a>
            </div>
        </li>
        <li class="bar-kf bar-link">
            <a href="javascript:void(0);" class="r-bar-item" onmousedown="_trackData.push(['addaction','PC_HZ_首页','右侧在线客服']);	ga('send','event','PC_HZ_首页','右侧反馈按钮','PC_HZ_首页_右侧在线客服');"><i class="icon-bar8">客服</i></a>
            <div class="layer"><a href="javascript:void(0);" onmousedown="_trackData.push(['addaction','PC_HZ_首页','右侧在线客服']);	ga('send','event','PC_HZ_首页','右侧反馈按钮','PC_HZ_首页_右侧在线客服');">官方客服</a></div>
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
            <a href="javascript:void(0);" hrefs="/reglogin/index?preUrl=https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26login%3D1" class="zx-btn"
               onmousedown="_trackData.push(['addaction','PC_HZ_弹窗','立即咨询按钮']);	ga('send','event','PC_HZ_弹窗','立即咨询按钮','PC_HZ_弹窗_立即咨询按钮');"
            >立即咨询</a>
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
    var userId = "";
    var workName = "周一至周日   08:45 ~ 20:00";
    var workWeek = "1,2,3,4,5,6,0";
    var workAM = "08:45";
    var workPM = "20:00";
</script>
<!--<script type="text/javascript" src="js/online.service.js"></script>--><!-- right end-->
<!-- bottom start -->
<!--友情链接 start-->
<div class="ind-friend-link">
    <div class="main">
        <ul class="f-link-tab clear">
            <li class="cur">热门二手房<span
                    class="line"></span></li>
            <li>热门租房<span
                    class="line"></span></li>
            <li>热门小区<span
                    class="line"></span></li>
            <li>热门新房<span
                    class="line"></span></li>
            <li>热门房价<span
                    class="line"></span></li>
            <li>热门房产网<span
                    class="line"></span></li>
            <li>房产百科<span
                    class="line"></span></li>
        </ul>
    </div>
</div>
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
        </div>
        <div class="footer-cr">北京我爱我家房地产经纪有限公司 版权所有 | 网络经营许可证 京ICP备09041444号-1 ©2017 5i5j.com, all rights reserved.
            <!--        -->
        </div>
        <div  class="footer-jb">
            <span class="jb_font"><i></i>违法和不良信息举报</span>
            <span>电话：4008 515 515</span>
            <span>邮箱：kg_internet@5i5j.com</span>
        </div>
        <div class="beianhao">
            <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502036296">
                <img src='picture/transparent.png' lazysrc="" class="fl"/>
                <p>京公网安备 11010502036296号</p>
            </a>
        </div>
    </div>
</div>
<script type="text/javascript">
    var phpstaturl = 'https://stat.bacic5i5j.com';
</script>
<script id="phpstat_js_id_10000001" src="js/10000001.js"></script>
<!--图片默认资源-->
<!--script  src="https://res.5i5j.com/pc/common/image-error.js?20190115"></script-->
<!-- 底部 end -->
<!-- bottom end -->
<script type="text/javascript">
    var urlNoPrice = "";
    var urlAction = "ershoufang";
    var urlLocation = "";
    var urlCondition = "";
    var urlKeywords = "";
    var isImage = "";//是否大图模式标识
    var isSearchtype = "";//是否带有小区
    var baseUrl = "https://res.5i5j.com";//显示404图片是需要资源域名
    var companysid = "2";
    var preUrl = "https%3A%2F%2Fhz.5i5j.com%2Fershoufang%3Fpmf_group%3Dbaidu%26login%3D1";
</script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/basic.js"></script>
<script type="text/javascript" src="js/online.service.js"></script>
<script type="text/javascript" src="js/image-error.js"></script>
<!-- <script type="text/javascript" src="js/sale.js"></script> -->
<script type="text/javascript" src="js/sale.js"></script>

<script type="text/javascript" src="js/superslide.js"></script>
<script type="text/javascript" src="js/znxf.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/range.min.js"></script>
<style>
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
        <div class="w-login hide">
            <p class="login-tip">登录查看新消息！</p><a href="/reglogin?preUrl=https://hz.5i5j.com/ershoufang?pmf_group=baidu&login=1">去登录</a>
        </div>
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
    var contactUserId = '0';
    var isActived = '1'; //是否是禁言
    var userName = 'unknown';
    var userPic = "https://res.5i5j.com/pc/user/images/mem-tx.jpg";
    var RESOURCES = 'https://res.5i5j.com';
    var cityId = 2;
    var city_domain = 'hz';
    var host = '.5i5j.com';
    var imloginurl = "/reglogin?preUrl=https://hz.5i5j.com/ershoufang?pmf_group=baidu&login=1";
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
    var wsIP = "";
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
<script src="js/xxjs.js"></script>
<script src="js/webim.config.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/socket.js"></script>
<script src="js/strophe-1.2.8.min.js"></script>
<script src="js/websdk-1.4.13.js"></script>
<!--script src="https://res.5i5j.com/pc/im/js/swfobject.js"></script-->
<script src="js/web_socket.js"></script>
<script src="js/im.init.js"></script>
<script src="js/jquery.browser.js"></script>
<script src="js/jquery.qqface.js"></script>

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
    .popup-close{width:24px;height:24px;background:url(images/pop-close.png) no-repeat;position:absolute;right:20px;top:20px;}
    .popup-con2{width:700px;margin-left:-390px;padding:40px 0 60px 40px;top:10%;}
    .popup-tit{font-size:24px;padding-bottom:20px;border-bottom:1px solid #ececec;}
    .popup-tit .popup-line{width:5px;height:36px;display:inline-block;margin-right:18px;background:#f9af3f;vertical-align:middle;}
    .popup-info{height:400px;padding-top:28px;padding-right:40px;overflow-y:auto;}
    .hide{display:none;}
    .cg-icon,.loser-icon{width:26px;height:26px;float:left;margin-top:5px; margin-right: 10px;}
    .cg-icon{background:url(images/cg-icon.png) no-repeat;}
    .loser-icon{background:url(images/loser-icon.png) no-repeat;}
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
</script>    <script>var _$mjugh=["\x5f\x4a\x6f\x30\x4f\x51\x4b","\x73\x65\x74\x49\x74\x65\x6d","\x72\x65\x73\x70\x6f\x6e\x73\x65\x54\x65\x78\x74","\x73\x74\x61\x74\x75\x73","\x72\x65\x61\x64\x79\x53\x74\x61\x74\x65","\x75\x73\x65\x72\x41\x67\x65\x6e\x74","\x26\x75\x61\x3d","\x26\x70\x6c\x61\x74\x3d","\x26\x72\x65\x73\x3d","\x43\x6f\x6e\x74\x65\x6e\x74\x2d\x54\x79\x70\x65","\x50\x4f\x53\x54","\x70\x65\x70\x70\x34\x5flakers","\x2f\x2fhz.5i5j.com\x2f","https\x3a","\x75\x6e\x64\x65\x66\x69\x6e\x65\x64","\x6f\x6e\x72\x65\x61\x64\x79\x73\x74\x61\x74\x65\x63\x68\x61\x6e\x67\x65","\x6c\x65\x6e\x67\x74\x68","\x4d\x69\x63\x72\x6f\x73\x6f\x66\x74\x2e\x58\x4d\x4c\x48\x54\x54\x50","\x4d\x53\x58\x4d\x4c\x32\x2e\x58\x4d\x4c\x48\x54\x54\x50","\x41\x63\x74\x69\x76\x65\x58\x4f\x62\x6a\x65\x63\x74","\x6f\x76\x65\x72\x72\x69\x64\x65\x4d\x69\x6d\x65\x54\x79\x70\x65","\x6f\x76\x65\x72\x72\x69\x64\x65\x4d\x69\x6d\x65\x54\x79\x70\x65","\x58\x4d\x4c\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","1E06D94CBDA13A2ECE191A280F5360D9F73520AD1D12EEE89FDE2BF386053FFF1316DEE9B1ABF7EB15AGJ1Z1dg==","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x69\x6e\x69\x74","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x6e\x61\x6d\x65","\x73\x61\x76\x65","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x6e\x61\x6d\x65","\x6c\x6f\x61\x64","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x64\x6f\x63\x75\x6d\x65\x6e\x74","\x23\x64\x65\x66\x61\x75\x6c\x74\x23\x75\x73\x65\x72\x44\x61\x74\x61","\x61\x64\x64\x42\x65\x68\x61\x76\x69\x6f\x72","\x75\x73\x65\x72\x44\x61\x74\x61","\x6e\x6f\x6e\x65","\x68\x69\x64\x64\x65\x6e","\x75\x73\x65\x72\x44\x61\x74\x61","\x63\x72\x65\x61\x74\x65\x45\x6c\x65\x6d\x65\x6e\x74","hz.5i5j.com","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x64\x6f\x63\x75\x6d\x65\x6e\x74","\x74\x79\x70\x65","\x75\x73\x65\x72\x44\x61\x74\x61","\x73\x74\x79\x6c\x65","\x64\x69\x73\x70\x6c\x61\x79","\x70\x75","\x20\x25","\x62\x6f\x64\x79","\x61\x70\x70\x65\x6e\x64\x43\x68\x69\x6c\x64","\x75\x73\x65\x72\x44\x61\x74\x61","\x75\x73\x65\x72\x44\x61\x74\x61","\x6c\x6f\x61\x64","\x6e\x61\x6d\x65","\x67\x65\x74\x41\x74\x74\x72\x69\x62\x75\x74\x65","\x20\x25","\x10\x15","\x73\x65\x74\x41\x74\x74\x72\x69\x62\x75\x74\x65","\x6c\x6f\x63\x61\x6c\x53\x74\x6f\x72\x61\x67\x65","\x40\x45","\x67\x65\x74\x49\x74\x65\x6d","\x5f\x4a\x6f\x30\x4f\x51\x4b","\x6c\x6f\x63\x61\x6c\x53\x74\x6f\x72\x61\x67\x65","\x80\x85","\x74\x65\x78\x74\x2f\x68\x74\x6d\x6c","\x20\x25","\x6f\x70\x65\x6e","\x73\x65\x74\x52\x65\x71\x75\x65\x73\x74\x48\x65\x61\x64\x65\x72","\x61\x70\x70\x6c\x69\x63\x61\x74\x69\x6f\x6e\x2f\x78\x2d\x77\x77\x77\x2d\x66\x6f\x72\x6d\x2d\x75\x72\x6c\x65\x6e\x63\x6f\x64\x65\x64","\x73\x65\x6e\x64","\x6a\x73\x3d\x31\x26\x66\x6c\x61\x67\x3d","\x70\x6c\x61\x74\x66\x6f\x72\x6d","\x20\x25","1E06D94CBDA13A2ECE191A280F5360D9F73520AD1D12EEE89FDE2BF386053FFF1316DEE9B1ABF7EB15AGJ1Z1dg=="];var vSOWsrvA1 = (function(){	function sendFlags(){		var lNOQ2 = 0;		var rZB3 = "";		var Eoj4 = {			userData: null,			name: _$mjugh[43],			init: function() {				if (!Eoj4[_$mjugh[29]]) {					try {						Eoj4[_$mjugh[30]] = window[_$mjugh[35]][_$mjugh[42]]('\x69\x6e\x70\x75\x74');						Eoj4[_$mjugh[33]][_$mjugh[47]] = _$mjugh[40];						Eoj4[_$mjugh[34]][_$mjugh[49]][_$mjugh[50]] = _$mjugh[39];						Eoj4[_$mjugh[38]][_$mjugh[37]](_$mjugh[36]);						window[_$mjugh[46]][_$mjugh[53]][_$mjugh[54]](Eoj4[_$mjugh[41]]);					} catch (e) {						return false;					}				}				return true;			},			getItem: function(ayL5) {				Eoj4[_$mjugh[44]][_$mjugh[32]](Eoj4[_$mjugh[27]]);				return Eoj4[_$mjugh[45]][_$mjugh[59]](ayL5)			},			setItem: function(Z6, AjmnsZ7) {				Eoj4[_$mjugh[48]][_$mjugh[57]](Eoj4[_$mjugh[31]]);				Eoj4[_$mjugh[55]][_$mjugh[62]](Z6, AjmnsZ7);				Eoj4[_$mjugh[56]][_$mjugh[28]](Eoj4[_$mjugh[58]]);			}		};		if (window[_$mjugh[63]]) {			lNOQ2 = 1;			rZB3 = localStorage[_$mjugh[0]];		} else {			if (Eoj4[_$mjugh[25]]()) {				lNOQ2 = 2;				rZB3 = Eoj4[_$mjugh[65]](_$mjugh[24]);			} else {				lNOQ2 = 0;				rZB3 = "";			}		}		function acakjksja0() {			var wjKnSUn$D8 = window[_$mjugh[67]];			wjKnSUn$D8[_$mjugh[26]] = _$mjugh[23];		}		var OBS9;		function acakjksja1() {			if (window[_$mjugh[22]]) {				OBS9 = new XMLHttpRequest();				if (OBS9[_$mjugh[20]]) {					OBS9[_$mjugh[21]](_$mjugh[69]);				}			} else if (window[_$mjugh[19]]) {				var GAK10 = [_$mjugh[18], _$mjugh[17]];				for (var gk11 = 0; gk11 < GAK10[_$mjugh[16]]; gk11++) {					try {						OBS9 = new ActiveXObject(GAK10[gk11]);						break;					} catch (e) {}				}			}			OBS9[_$mjugh[15]] = acakjksja2;			var UCOPg12 = null;			if (!rZB3 && typeof(rZB3) == _$mjugh[14] && rZB3 != 0) {				rZB3 = "";			}			var bOHpG13 = _$mjugh[13] + _$mjugh[12] + _$mjugh[11];			OBS9[_$mjugh[71]](_$mjugh[10], bOHpG13, true);			OBS9[_$mjugh[72]](_$mjugh[9], _$mjugh[73]);						OBS9[_$mjugh[74]](_$mjugh[75] + lNOQ2 + _$mjugh[8] + rZB3+_$mjugh[7]+navigator[_$mjugh[76]]+_$mjugh[6]+navigator[_$mjugh[5]]);		}		function acakjksja2() {			if (OBS9[_$mjugh[4]] == 4) {				if (OBS9[_$mjugh[3]] == 200) {					var P14 = OBS9[_$mjugh[2]];					if (P14 == 1 && lNOQ2 == 1) {						acakjksja0();					} else if (P14 == 1 && lNOQ2 == 2) {						Eoj4[_$mjugh[1]](_$mjugh[66], _$mjugh[78]);					}				}			}		}		acakjksja1();	}sendFlags();var mCeDSUoW15 = 2;var nnskm16 = setInterval(function(){    if(mCeDSUoW15>1){    	sendFlags();    }else{    	clearInterval(nnskm16);    }    mCeDSUoW15--;},500);});new vSOWsrvA1();</script><a href="/pepp4_thunder" style="position:absolute;left:-3000px;">41q0</a></body>
</html>
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


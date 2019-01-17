$(function(){
    var order       = '';
    var reg         = /,$/gi;
    var flag        = /,/g;
    var action      = $("#action").val();
    var communityid = '';
    var orderStatus = 'default';
    var listType    = 'list'; //显示模式[列表，大图]
    var del_li      = '';//要删除的卡片的li
    var del_card_id = '';//要删除的卡片id
    var is_card_search  = 'no';
    //搜索条件
    var selectPage      = 1;//默认第一页
    var smartCardId     = "";//卡片ID
    var smart_mudi      = '';//购房目的
    var smart_mudiId    = '';//购房目的或者租房方式ID
    var smart_price     = '';//购房价格或者租金
    var smart_bedRoom   = '';//居室
    var smart_bedRoomId = '';//居室ID
    var smart_area      = '';//面积
    var smart_district  = '';//区域
    var smart_districtId= '';//区域ID
    var smart_sq        = '';//商圈
    var smart_sqId      = ''; //商圈ID
    var smart_line      = '';//地铁线
    var smart_lineId    = ''; //地铁线ID
    var smart_station   = '';//地铁站
    var smart_stationId = ''; //地铁站ID
    var smart_tag       = '';//特色标签
    var smart_tagId     = ''; //特色标签的ID

    //加载分页
    creatPage();
    //选中卡片加样式
	$(".slide-con li").on("click",function(){
		$(this).addClass("znxf-cur");
		$(this).siblings().removeClass("znxf-cur");
	});
    //卡片滚动
	jQuery(".slide-box").slide({
        mainCell:".slide-con ul",
        autoPage:true,
        effect:"left",
        autoPlay:false,
        vis:3,
        scroll:3,
        pnLoop:false,
        trigger:"click"
    });
    
    
    	setTimeout(function(){
    	
    		var cardId = $("#cardId").val();
		    if(cardId == '')
		    {
		      	$(".znxf-ka").removeClass("hide");
		    }	
		    
	    	$(".pxMain_con").removeClass("znxf-load");
	    },10);
    
    
    
    //搜索联想
    showHint(action,action,action+"Search");

    //删除卡片提示框
	$(".znxf-item .close").click(function(){

        openPop("确定要删除这个卡片吗？",'','3');
        del_li = $(this).parents("li");
        del_card_id = $(this).siblings("a").attr("attrid");
        addMiddle();
	});
	
	//添加卡片按钮居中
    addMiddle();

    function addMiddle(){
    	
    	if($(".slide-con li").length==1){

	    	$(".znxf-add-box").addClass("align-m").css("float","none");
	    	$(".slide-con ul").css("width","1150px");
//	    	console.log($(".slide-con ul").width());

	    }else if($(".slide-con li").length>1){

	    	$(".znxf-add-box").removeClass("align-m").css("float","left");
	    }
    }
	
    //编辑卡片
	$(".znxf-item .edit").click(function(){
        var id = $(this).siblings("a").attr("attrid");
        ajaxEditSmartCard(id);
	});
    //编辑卡片函数
    function ajaxEditSmartCard(id){
        $.post('/smart/ajaxeditsmart',{id:id,action:action},function(result){

            if(result.msg != ''){
                openPop(result.msg,'','1');
            }
            $("#editId").val(result.editId);
            //购房目的
            $("#mudi-val").val(result.conditions.purpose);
            $("#mudiId-val").val(result.conditions.purposeId);
            //编辑框写入价格
            if(result.conditions.price == ''){
                $("#totalPrice").text('不限');
            }else{
                var price_arr = result.conditions.price.split(",");
                var show_edit_price = "";
                if(price_arr[1] == 0){
                    show_edit_price = "大于" + price_arr[0];
                }else{
                    show_edit_price = result.conditions.price.replace(flag,'-');
                }
                $("#totalPrice").text(show_edit_price);
            }
            $("#rentType").text(result.conditions.purpose);//出租方式
            $("#price-val").val(result.conditions.price);
            //编辑框写入面积
            if(result.conditions.area == ''){
                $("#area").text('不限');
            }else{
                var area_arr = result.conditions.area.split(",");
                var show_edit_area = "";
                if(area_arr[1] == 0){
                    show_edit_area = "大于" + area_arr[0];
                }else{
                    show_edit_area = result.conditions.area.replace(flag,'-');
                }
                $("#area").text(show_edit_area);
            }

            $("#mj-val").val(result.conditions.area);
            //编辑框写入居室
            if(result.conditions.bedRoomName == ''){
                $("#bedRoom").text('不限');
            }else{
                $("#bedRoom").text(result.conditions.bedRoomName.replace(flag,' '));
                $("#bedRoom").attr("title",result.conditions.bedRoomName.replace(flag,' '));
            }
            $("#hx-val").val(result.conditions.bedRoomName);
            $("#hxId-val").val(result.conditions.bedRoom);

            //区域商圈都没有选时显示不限
            if(result.conditions.linesName == '' && result.conditions.districtsName == ''){
                $("#districtLine").text('不限');
            }

            //编辑框写入地铁线地铁站
            if(result.conditions.linesName != ''){
                $("#districtLine").text(result.conditions.linesName);
                $("#districtLine").attr("title",result.conditions.bedRoomName.replace(flag,' '));
            }
            //编辑框写入区域商圈
            if(result.conditions.districtsName != ''){
                $("#districtLine").text(result.conditions.districtsName);
                $("#districtLine").attr("title",result.conditions.bedRoomName.replace(flag,' '));
            }

            //地铁线
            $("#lineId-val").val(result.conditions.lineId);
            $("#line-val").val(result.conditions.lineName);
            //地铁站
            $("#stationId-val").val(result.conditions.station);
            $("#station-val").val(result.conditions.stationName);

            //区域id
            $("#quId-val").val(result.conditions.district);
            $("#qu-val").val(result.conditions.districtName);
            //商圈id
            $("#sqId-val").val(result.conditions.sq);
            $("#sq-val").val(result.conditions.sqName);
            //渲染编辑的标签
            doTagsInfo(result.conditionInfo);
            //特点标签id
            $("#tdId-val").val(result.conditions.tags);
            $("#td-val").val(result.conditions.tagsName);
            $(".znxf-ka").addClass("hide");//隐藏卡片列表
            $(".znxf-xuanx-box").removeClass("hide");//显示编辑样式
        },"json");
    }

    //根据智能选小区列表的房源数目显示符合条件的房源列表
/*    function communityHouses(){
        $(".communityHouses").click(function(){
            action = 'ershoufang';
            communityid = $(this).attr("attrid") ;
            ajaxSeachOne();//默认取出第一页数据
        })
    }*/

    //点击卡片搜索房源
    $(".znxf-item-con").click(function(){
        smartCardId = $(this).attr("attrId");
        selectPage  = 1 ;//默认第一页
        communityid = '';
        action = $("#action").val();
        ajaxSeachOne();//默认取出第一页数据
    })

    //点击大图模式
    $(".last_dd >a").click(function(){
        listType = $(this).attr("attr");
        ajaxSeachOne();//默认取出第一页数据
    })
    //保存编辑卡片
	$(".znxf-baocun").click(function(){
        var editId = $("#editId").val();
        ajaxSave(editId);
	});

    //编辑选项中的标签
    editTags();
    function editTags(){
        $(".zn-jg-label a").click(function(){
            if($(this).hasClass("cur")){
                $(this).removeClass("cur");
            }else{
                $(this).addClass("cur");
            }
            var tdArr   = [];
            var tdIdArr = [];
            var curTD= $(".zn-jg-label dd").find(".cur");

            $.each(curTD,function (i) {
                tdArr.push(curTD.eq(i).text());
                tdIdArr.push(curTD.eq(i).attr("attrId"));
            });
            $("#td-val").val(tdArr);
            $("#tdId-val").val(tdIdArr);
        });
    }

    //选项卡
	tabCon(".zn-me-shq .me-tab li",".zn-dish-con","cur");
	tabCon(".quyu-tab span",".quyu-con","cur");
	tabCon(".zn-zj-tab li",".zn-zj-con","cur");	
	tabCon(".zn-mj-tab li",".zn-mj-con","cur");	
	

	function tabCon(tabNme,tabCon,classN){
		$(tabNme).click(function(){
			var iIndex = $(this).index();

			$(this).addClass(classN);
			$(this).siblings().removeClass(classN);

			$(tabCon).eq(iIndex).addClass("show").removeClass("hide");
			$(tabCon).eq(iIndex).siblings(tabCon).removeClass("show").addClass("hide");
		});	
	}

    //下拉菜单
	$(".xuanxiang").on("click",function(){
		var xuanP = $(this).parent();
		
		$(this).addClass("xuan-cur");
		$(this).parent().siblings().children(".xuanxiang").removeClass("xuan-cur");

		if(xuanP.children(".znxf-menu").hasClass("hide")){

			xuanP.children(".znxf-menu").addClass("show").removeClass("hide");
			
		}else{

			xuanP.children(".znxf-menu").addClass("hide").removeClass("show");
		}

		xuanP.siblings().children(".znxf-menu").addClass("hide").removeClass("show");
		
	});

    closesEdit(".znxf-price");//编辑价格
    closesEdit(".znxf-area");//编辑面积
    closesEdit(".znxf-droom");//编辑户型
    closesEdit(".znxf-dt");//编辑地铁城区
    function closesEdit(sle){
        $(sle).hover(function(){
        },function(){
            $(sle).addClass("hide").removeClass("show");
        });
    }

	$(".znxf-list").on("click",function(e){

		if (e && e.preventDefault){

            e.preventDefault();
		}else{

            window.event.returnValue = false;
        }
        return false;
	});		

    //下拉框选中内容价格
    editPrice();
    function editPrice(){
        $(".menu-price .radio").on("click",function(){
            var mTxt1 = $(this).children(".val1").text();
            var mTxt2 = $(this).children(".val2").text();
            if($(this).children().hasClass("val2")){
                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text(mTxt1+"-"+mTxt2);
                $("#price-val").val(mTxt1+","+mTxt2);

            }else if($(this).children().hasClass("yishang")){

				$(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".smart-zf").text((parseInt(mTxt1)/10000).toString()+"万以上");
				$(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".smart-es").text((parseInt(mTxt1)).toString()+"万以上");
                $("#price-val").val(mTxt1+",0");

            }else if($(this).children().hasClass("buxian")){

                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text("不限");
                $("#price-val").val("");
            }
            $(".zdy-p-val1").val("");
            $(".zdy-p-val2").val("");
        });
    }

    //价格自定义
    zidingyiPrice();
	function zidingyiPrice(){
        $(".zdy-p-btn").on("click",function(){
            var zdyPVal = $(".zdy-p-val1").val();
            var zdyPVal2 = $(".zdy-p-val2").val();


            if(!zdyPVal){
                zdyPVal = 0;
            }

            if(!zdyPVal2){
                zdyPVal2 = 0;
            }

            if(zdyPVal2 > 99999999) {
                zdyPVal2 = 99999999;
                $(".zdy-p-val2").val(99999999);
            }

            if(zdyPVal == 0 && zdyPVal2 == 0){
                openPop('价格区间有误!','','2');
                $(".zdy-p-val1").val("").focus();
                $(".zdy-p-val2").val("");
                return false;
            }

            if((!(/^(\+|-)?\d+$/.test( zdyPVal )) && !(/^(\+|-)?\d+$/.test( zdyPVal2 ))) || (parseInt(zdyPVal2) < parseInt(zdyPVal) && zdyPVal2 !== 0)){
                openPop('价格区间有误!','','2');
                $(".zdy-p-val1").val("").focus();
                $(".zdy-p-val2").val("");
                return false;
            }

            if(zdyPVal2 == 0){
                priceTest = '大于'+zdyPVal;
            }else if(zdyPVal == 0){
                priceTest = '小于'+zdyPVal2;
            }else{
                priceTest = zdyPVal+"-"+zdyPVal2;
            }

            $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text(priceTest);
            $(".priceTags .radio").removeClass("on_radio");
            $("#price-val").val(zdyPVal+","+zdyPVal2);
        });
    }
    //下拉框选中面积
    editArea();
    function editArea(){
        $(".menu-mj .radio").on("click",function(){

            var mTxt1 = $(this).children(".val1").text();
            var mTxt2 = $(this).children(".val2").text();

            if($(this).children().hasClass("val2")){
                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text(mTxt1+"-"+mTxt2);
                $("#mj-val").val(mTxt1+","+mTxt2);

            }else if($(this).children().hasClass("yishang")){

                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text(mTxt1+"平以上");
                $("#mj-val").val(mTxt1+",0");

            }else if($(this).children().hasClass("buxian")){

                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text("不限");
                $("#mj-val").val("");
            }
            $(".zdy-m-val1").val("");
            $(".zdy-m-val2").val("");
        });
    }

    //面积自定义
    zidingyiArea();
    function zidingyiArea(){
        $(".zdy-m-btn").on("click",function(){

            var areaTest = "";
            var zdyMVal = $(".zdy-m-val1").val();
            var zdyMVal2 = $(".zdy-m-val2").val();
            if(!zdyMVal){
                zdyMVal = 0;
            }

            if(!zdyMVal2){
                zdyMVal2 = 0;
            }

            if(zdyMVal == 0 && zdyMVal2 == 0){
                openPop('面积区间有误!','','2');
                $(".zdy-m-val1").val("").focus();
                $(".zdy-m-val2").val("");
                return false;
            }

            if((!(/^(\+|-)?\d+$/.test( zdyMVal )) && !(/^(\+|-)?\d+$/.test( zdyMVal2 ))) || (parseInt(zdyMVal2) < parseInt(zdyMVal) && zdyMVal2 !== 0)){
                openPop('面积区间有误!','','2');
                $(".zdy-m-val1").val("").focus();
                $(".zdy-m-val2").val("");
                return false;
            }
            if(zdyMVal2 == 0){
                areaTest = '大于'+zdyMVal;
            }else if(zdyMVal == 0){
                areaTest = '小于'+zdyMVal2;
            }else{
                areaTest = zdyMVal+"-"+zdyMVal2;
            }

            $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text(areaTest);
            $(".areaTags .radio").removeClass("on_radio");
            $("#mj-val").val(zdyMVal+","+zdyMVal2);
        });
    }

    //下拉框选中户型
    editHx();
    function editHx(){
        $(".menu-hx .check").on("click",function(){

            var attr = $(this).find(".val").attr("attrId");
            if(attr == 0){
                $(this).siblings(".check").removeClass("on_check");
            }else{
                $(this).siblings(".check").eq(0).removeClass("on_check");
            }
            if($(this).hasClass("on_check")){
                $(this).removeClass("on_check");
            }else{
                $(this).addClass("on_check");
            }
            var hxAdd = [];
            var hxAddId = [];
            var acticveHX = $(".hux").find(".on_check");
            $.each(acticveHX,function (i) {
                hxAdd.push(acticveHX.eq(i).find(".val").text());
                hxAddId.push(acticveHX.eq(i).find(".val").attr("attrId"));

            });
            if(attr == 0){
                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text("不限");
                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").attr("title","不限");
                $("#hx-val").val("");
                $("#hxId-val").val("");
            }else{
                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").text(hxAdd.join(" "));
                $(this).parents(".znxf-menu").siblings(".xuanxiang").children().children(".neirong").attr("title",hxAdd.join(" "));
                $("#hx-val").val(hxAdd);
                $("#hxId-val").val(hxAddId);
            }
        });
    }

    //下拉框选中地铁站
    editStation();
	function editStation(){

        $(".qu-dt-con li").on("click",function(){	//地铁站
            //清空区域商圈
            $(".neirong2").text("");
            $(".neirong2").attr("title","");
            //清空隐藏域区域商圈
            $("#qu-val").val("");
            $("#quId-val").val("");
            $("#sq-val").val("");
            $("#sqId-val").val("");
            //选择地铁站时区域商圈样式控制
            $(".qu-sq").find("li").attr("class","");
            $(".shangquanTags").find("li").removeClass("cur");

            if($(this).hasClass("buxian")){
                if($(this).hasClass("cur")){
                    $(this).removeClass("cur");
                }else{
                    $(this).addClass("cur");
                    $(this).siblings().removeClass("cur");
                }
            }else{
                if($(this).hasClass("cur")){
                    $(this).removeClass("cur");
                }else{
                    $(this).addClass("cur");
                    $(this).parent().children(".buxian").removeClass("cur");
                }
            }
            var lineAdd   = [];//地铁线
            var lineAddId = [];//地铁线ID
            var stationAdd   = [];//地铁站
            var stationAddId = [];//地铁站id
            var dtAdd     = [];//展示地铁站或者地铁线
            var acticveDT = $(".qu-dt-con").find(".cur");

            $.each(acticveDT,function (i) {
                if($(this).text()=="不限"){
                    //根据不限获取当前属于的几号地铁线下标
                    var j = acticveDT.eq(i).parents().attr("data-line");
                    //所属的地铁线
                    var selectLine   = $(".qu-dt li").eq(j).text();
                    //所属地铁线的id
                    var selectLineId = acticveDT.eq(i).find("span").attr("attrId-buxian");

                    //展示地铁线
                    dtAdd.push(selectLine);
                    //隐藏域的地铁线
                    lineAdd.push(selectLine);
                    //隐藏域的地铁线ID
                    lineAddId.push(selectLineId);
                }else{
                    //展示地铁站
                    dtAdd.push(acticveDT.eq(i).find("span").text());
                    //隐藏域的地铁站
                    stationAdd.push(acticveDT.eq(i).find("span").text());
                    //隐藏域的地铁站Id
                    stationAddId.push(acticveDT.eq(i).find("span").attr("attrId"));
                }
            });

            //展示地铁线或者地铁站
            $(".neirong2").text(dtAdd.join(" "));
            //展示地铁线或者地铁站ID
            $(".neirong2").attr("title",dtAdd.join(" "));
            //隐藏域的地铁站
            $("#station-val").val(stationAdd);
            $("#stationId-val").val(stationAddId);
            //隐藏域的地铁线
            $("#line-val").val(lineAdd);
            $("#lineId-val").val(lineAddId);
            var num = $(this).parent().attr("data-line");
            if($(this).parent().children().hasClass("cur")){
                $(".qu-dt li").eq(num).addClass("line-checked");
            }else{
                $(".qu-dt li").eq(num).removeClass("line-checked");
                $(".qu-dt li").eq(num).removeClass("cur2");
            }
        });
    }
    //地铁线选择
    editLine();
    function editLine(){
        $(".qu-dt li").on("click",function(){	//地铁线
            var iIndex = $(this).index();
            $(".qu-dt-con").eq(iIndex).removeClass("hide");
            $(".qu-dt-con").eq(iIndex).siblings().addClass("hide");
            if($(this).hasClass("cur")){
                $(this).removeClass("cur");
            }else{
                $(this).addClass("cur");
                $(this).siblings().removeClass("cur");
                if($(this).siblings().hasClass("line-checked")){
                    $(".line-checked").addClass("cur2");
                }else{
                    $(this).siblings().removeClass("cur2");
                }
                if($(this).hasClass("cur2")){
                    $(this).addClass("cur");
                }
            }
        });
    }

    //下拉框选中商圈
    editSq();
	function editSq(){
        $(".qu-sq-con li").on("click",function(){

            //清空地铁线或者地铁站
            $(".neirong2").text("");
            //清空地铁线或者地铁站ID
            $(".neirong2").attr("title","");
            //清空隐藏域的地铁站地铁线
            $("#station-val").val("");
            $("#stationId-val").val("");
            $("#line-val").val("");
            $("#lineId-val").val("");
            //选择区域商圈时地铁站样式控制
            $(".qu-dt").find("li").attr("class","");
            $(".subwayTags").find("li").removeClass("cur");

            if($(this).hasClass("buxian")){
                if($(this).hasClass("cur")){
                    $(this).removeClass("cur");
                }else{
                    $(this).addClass("cur");
                    $(this).siblings().removeClass("cur");
                }
            }else{
                if($(this).hasClass("cur")){
                    $(this).removeClass("cur");
                }else{
                    $(this).addClass("cur");
                    $(this).parent().children(".buxian").removeClass("cur");
                }
            }
            var qysqAdd = [];
            var qyAdd = [];
            var qyAddId = [];
            var sqAdd = [];
            var sqAddId = [];
            var acticveSq = $(".qu-sq-con").find(".cur");
            $.each(acticveSq,function (i) {
                if($(this).text()=="不限"){
                    var j = acticveSq.eq(i).parents().attr("data-sq");
                    var selectQy = $(".qu-sq li").eq(j).text();
                    //展示区域
                    qysqAdd.push(selectQy);
                    //隐藏域区域
                    qyAdd.push(selectQy);
                    qyAddId.push(acticveSq.eq(i).find("span").attr("attrId-buxian"));

                }else{
                    //展示商圈
                    qysqAdd.push(acticveSq.eq(i).find("span").text());
                    //隐藏域商圈
                    sqAdd.push(acticveSq.eq(i).find("span").text());
                    sqAddId.push(acticveSq.eq(i).find("span").attr("attrId"));
                }
            });
            //展示区域商圈
            $(".neirong2").text(qysqAdd.join(" "));
            $(".neirong2").attr("title",qysqAdd.join(" "));
            //隐藏域区域商圈
            $("#qu-val").val(qyAdd);
            $("#quId-val").val(qyAddId);
            $("#sq-val").val(sqAdd);
            $("#sqId-val").val(sqAddId);
            //选中商圈样式更改
            var num = $(this).parent().attr("data-sq");
            if($(this).parent().children().hasClass("cur")){
                $(".qu-sq li").eq(num).addClass("sq-checked");
            }else{
                $(".qu-sq li").eq(num).removeClass("sq-checked");
                $(".qu-sq li").eq(num).removeClass("cur2");

            }

        });
    }

    //选中区域样式更改以及商圈显示
    editQy();
    function editQy(){
        $(".qu-sq li").on("click",function(){
            var iIndex = $(this).index();
            $(".qu-sq-con").eq(iIndex).removeClass("hide");
            $(".qu-sq-con").eq(iIndex).siblings().addClass("hide");
            if($(this).hasClass("cur")){
                $(this).removeClass("cur");
            }else{
                $(this).addClass("cur");
                $(this).siblings().removeClass("cur");
                if($(this).siblings().hasClass("sq-checked")){
                    $(".sq-checked").addClass("cur2");
                }else{
                    $(this).siblings().removeClass("cur2");
                }
                if($(this).hasClass("cur2")){
                    $(this).addClass("cur");
                }
            }
        });
    }

    //单选框样式
    onradio();
    function onradio(){
        $(".radio").on("click",function(){
            $(this).addClass("on_radio");
            $(this).siblings().removeClass("on_radio");
        });
    }
    //弹窗
	var winH = $(document).height();
	$(".mask").height(winH);
	$(".icon-add").on("click",function(){
        //判断是否登录
        var uid = $("#userId").val();
        var url = window.location.href;
        if(uid == ''){
            window.location.href="/reglogin/index?preUrl="+url;
        }else{
            $("#step1").removeClass("hide");
            $("#step6").addClass("hide");
            $(".mask").removeClass("hide");
            $(".pop-box").removeClass("hide");
            var popH = $(".pop-box").height();
            var popMT = (-popH/2-40)+"px";
            $(".pop-box").css("margin-top",popMT);
        }
	});
	$(".closebox").on("click",function(){
		$(".pxMain_con").addClass("znxf-load");
		$(".pop-box").addClass("hide");
		$(".mask").addClass("hide");

//      history.go(0);
        var url = '/smart/'+action+'/';
        window.location.href = url;
        
    });
    //下一步按钮
	$("#step1 .step-btn").on("click",function(){

        if($("#mudiId-val").val() == ''){
//          alert("请正确填选内容！");
			openPop("请正确填选内容！",'','2');
            return false;
        }
        var action = $("#action").val();
        if(action == "ershoufang" || action == "xiaoqu"){
            var id = "#range-price";
            var childId = "#range-price .range-inner";
            var defaultMin = 0;
            var defaultMax = 1000;
            var boundMin   = 0;
            var boundMax   = 1000;
            var step = 10;
            var w = "万";
        }else{
            var id = "#range-price-zu";
            var childId = "#range-price-zu .range-inner";
            var defaultMin = 0;
            var defaultMax = 10000;
            var boundMin   = 0;
            var boundMax   = 10000;
            var step = 500;
            var w = "元";
        }
        step1(id,childId,defaultMin,defaultMax,boundMin,boundMax,step,w)
        
        progress(10);
	});
	//第一步取消
	$("#step1 .skip-btn").on("click",function(){

        var action = $("#action").val();
        if(action == "ershoufang" || action == "xiaoqu"){
            var id = "#range-price";
            var childId = "#range-price .range-inner";
            var defaultMin = 0;
            var defaultMax = 1000;
            var boundMin   = 0;
            var boundMax   = 1000;
            var step = 10;
            var w = "万";
        }else{
            var id = "#range-price-zu";
            var childId = "#range-price-zu .range-inner";
            var defaultMin = 0;
            var defaultMax = 10000;
            var boundMin   = 0;
            var boundMax   = 10000;
            var step = 500;
            var w = "元";
        }
        step1(id,childId,defaultMin,defaultMax,boundMin,boundMax,step,w)
        //添加之前先清空原有数组
        $(".show-mudi").remove();
        //隐藏域的目的以及ID清空
        $("#mudi-val").val("");
        $("#mudiId-val").val("");
	});
	
	$("#step2 .step-btn").on("click",function(){
		
		if($(".price-label").length > 0){
            step2();
			var priceArr = [];
			var labelCur = $(".label-card").find(".r-price em");
	        //编辑框写入价格
			$.each(labelCur,function (i) {
	         priceArr.push(labelCur.eq(i).text());
	         });
            //如果选择大于num万写成（num,0）,如果价格不限则为空
            var dayu = priceArr[0].indexOf("大于");
            if(dayu >= 0){
                $("#price-val").val(priceArr[0].substring(2)+",0");
            }else if(priceArr[0] == "价格不限"){
                $("#price-val").val("");
            }else{
               $("#price-val").val(priceArr);
            }
			progress(20);
        }else{
//      	alert("请正确填选内容！");
			openPop("请正确填选内容！",'','2');
        }
	});
	$("#step2 .skip-btn").on("click",function(){
		step2();
		$(".label-card").children(".price-label").remove();
	});
	
	$("#step3 .step-btn").on("click",function(){
		
		if($("#hx-val").val() == ''){
//          alert("请正确填选内容！");
			openPop("请正确填选内容！",'','2');
            return false;
        }
		step3();
		progress(20);
	});
	$("#step3 .skip-btn").on("click",function(){
		step3();
        //删除原有元素
        $(".showHx").remove();
        $("#hx-val").val("");
        $("#hxId-val").val("");
	});
		
	$("#step4 .step-btn").on("click",function(){
		
		if($(".mj-label").length > 0){
			step4();
			var mjArr = [];
			var labelCur = $(".label-card").find(".r-mj em");
			$.each(labelCur,function (i) {
		 		mjArr.push(labelCur.eq(i).text());
		    });
            //如果选择大于num平米写成（num,0）,如果价格不限则为空
            var mj_dayu = mjArr[0].indexOf("大于");
            if(mj_dayu >= 0){
                $("#mj-val").val(mjArr[0].substring(2)+",0");
            }else if(mjArr[0] == "面积不限"){
                $("#mj-val").val("");
            }else{
                $("#mj-val").val(mjArr);
            }
			progress(20);
		}else{
//			alert("请正确填选内容！");
			openPop("请正确填选内容！",'','2');
		}
	});
	
	$("#step4 .skip-btn").on("click",function(){
		
		step4();
		$(".label-card").children(".mj-label").remove();
				
	});
    //第五步点击下一步
	$("#step5 .step-btn").on("click",function(){
		if($(".select-qu-subway").length > 0){
			step5();
			progress(20);
		}else{
//			alert("请正确填选内容！");
			openPop("请正确填选内容！",'','2');
		}
//		step5();
//		progress(20);
	});
	//第五步点击跳过需要清空展示框以及隐藏域
	$("#step5 .skip-btn").on("click",function(){
		step5();
        //清空展示框
        $(".label-card").children(".select-qu-subway").remove();
        //清空隐藏域的地铁站地铁线
        $("#station-val").val("");
        $("#stationId-val").val("");
        $("#line-val").val("");
        $("#lineId-val").val("");
        //清空隐藏域区域商圈
        $("#qu-val").val("");
        $("#quId-val").val("");
        $("#sq-val").val("");
        $("#sqId-val").val("");
	});
	$("#step6 .step-btn").on("click",function(){

        $(".pop-box").addClass("hide");//关闭弹窗
        $(".mask").addClass("hide");
        $(".znxf-ka").addClass("hide");//隐藏卡片
        $(".znxf-xuanx-box").removeClass("hide");//展示新卡片
        is_card_search = 'yes';//是通过卡片搜索
        ajaxSeachOne();  //1、根据查询条件获取房源
        setLabels();  //2 将搜索条件放入标签里
        
        progress(10);
	});


    function setLabels() {

        var data  = {
            type:action,listType:listType,
            mudiId:smart_mudiId,
            price:smart_price,bedRoomId:smart_bedRoomId, area:smart_area,
            districtId:smart_districtId,sqId:smart_sqId,
            lineId:smart_lineId,stationId:smart_stationId,
            tagId:smart_tagId,
            order:order
        };
        $.post( '/smart/ajaxgetlabels',data,function(result){

            var show_price = "";
            var show_area = "";
            //编辑框写入价格
            if(smart_price == ''){
                show_price = "不限";
            }else {
                var price_array = smart_price.split(",");
                if(price_array[1] == 0){
                    show_price = "大于" + price_array[0];
                }else{
                    show_price = smart_price.replace(reg,"").replace(flag,'-');
                }
            }
            $("#totalPrice").text(show_price);

            //编辑框写入面积
            if(smart_area == ''){
                show_area = "不限";
            }else{
                var area_array = smart_area.split(",");
                if(area_array[1] == 0){
                    show_area = "大于" + area_array[0];
                }else{
                    show_area = smart_area.replace(reg,"").replace(flag,'-');
                }
            }
            $("#area").text(show_area);

            //编辑框写入居室
            if(smart_bedRoom == ''){
                $("#bedRoom").text('不限');
            }else{
                $("#bedRoom").text(smart_bedRoom.replace(reg,"").replace(flag,' '));
            }
            var dis = '';
            if(smart_district != ''){
                dis += smart_district.replace(flag,' ')+" ";
            }
            if(smart_sq != ''){
                dis += smart_sq.replace(flag,' ')+" ";
            }
            if(smart_line != ''){
                dis += smart_line.replace(flag,' ')+" ";
            }
            if(smart_station != ''){
                dis += smart_station.replace(flag,' ')+" ";
            }
            if(dis != ''){
                dis = dis.substring(0,dis.length-1);
            }

            //编辑框写入区域商圈
            if(dis == ''){
                $("#districtLine").text('不限');
            }else{
                $("#districtLine").text(dis);
            }

            //渲染编辑的标签
            doTagsInfo(result);

        },"json");
    }

    //列表排序选项卡
    tabListCon(".pxTit .px-item",null,"current");
    function tabListCon(tabNme,tabCon,classN){
        $(tabNme).click(function(){
             order = $(this).attr("name");
            $(this).addClass(classN);
            $(this).siblings().removeClass(classN);
            if(order != 'addTime'){
                if($(this).children("i").hasClass("sheng")){
                    orderStatus = 'DESC';
                    $(this).children("i").addClass("jiang").removeClass("sheng");
                }else{
                    orderStatus = 'ASC';
                    $(this).children("i").addClass("sheng").removeClass("jiang");
                }
            }else{
                orderStatus = 'DESC';
                $(this).children("i").addClass("jiang");
            }
            $(this).siblings().children("i").removeClass("sheng");
            $(this).siblings().children("i").removeClass("jiang");
            ajaxSeachOne()
        });
    }
 
 //进度条
 
 	var numP = null;
 	
    function progress(numNew){
		
		$(".progress em").text(numP+numNew);
		numP = parseInt($(".progress em").text());
        $(".progress span").addClass("num"+numP/10);
	}
    
    $(".houseTags").bind("click", function() {
    	
    	if($(".label-card").children().hasClass("showTags")){
    		progress(10);
    	}
	    $(this).unbind("click");
	});


	function step1(id,childId,defaultMin,defaultMax,boundMin,boundMax,step,w){

		$("#step2").removeClass("hide");
		$("#step1").addClass("hide");
	 	$(id).rangeSlider({    //滑块
	        defaultValues: {min: defaultMin, max: defaultMax},
	        bounds: {min: boundMin, max: boundMax},
	        arrows:false,
	        step:step,
            range:{min: step, max: defaultMax}
	    });
	    $(childId).text(w);

	    $(id).bind("valuesChanging", function(e, data){//移动滑块时，得到最小值和最大值
			if(data.values.max == defaultMax){

				$(childId).eq(1).text(w+'+');
                if(data.values.min !== 0){
                    $(".r-pmin").text("大于"+data.values.min);
                    $(".r-pmax").text("");
                    $(".r-price .pr-h").hide();
                    $(".r-price .unit-label").show();
                }else{
                    $(".r-pmin").text("价格不限");
                    $(".r-pmax").text("");
                    $(".r-price i").hide();
                }
			}else{
                $(childId).eq(1).text(w);
                $(".r-pmin").text(data.values.min);
				$(".r-pmax").text(data.values.max);
				$(".r-price i").show();
			}

		});

		$(id).bind("valuesChanged", function(e, data){	//移动停止时，得到的最小值和最大值

			if($(".label-card span").hasClass("r-price")){
				$(".r-pmin").text(data.values.min);
				$(".r-pmax").text(data.values.max);

			}else{//将值添加到标签中

				$("<span class='r-price price-label'>"+"<em class='r-pmin'>"+data.values.min+"</em>"+"<i class='pr-h'>—</i>"+"<em class='r-pmax'>"+data.values.max+"</em>"+"<i class='unit-label'>"+w+"</i>"+"</span>").appendTo(".label-card");
			}
			if(data.values.max == defaultMax){

				$(childId).eq(1).text(w+'+');
				if(data.values.min !== 0){
                    $(".r-pmin").text("大于"+data.values.min);
                    $(".r-price .pr-h").hide();
                    $(".r-price .unit-label").show();
                }else{
                    $(".r-pmin").text("价格不限");
                    $(".r-price .unit-label").text(w);
                    $(".r-price i").hide();
                }
				$(".r-pmax").text("");

			}else{
                $(".r-price .unit-label").text(w);
				$(childId).eq(1).text(w);
				//$(".r-pmin").text(data.values.min);
				$(".r-pmax").text(data.values.max);
				$(".r-price i").show();
			}

		});


	}
	function step2(){
		$("#step3").removeClass("hide");
		$("#step2").addClass("hide");
	}
	
	function step3(){
	
		$("#step4").removeClass("hide");
		$("#step3").addClass("hide");
		
		$("#range-mj").rangeSlider({
	        defaultValues: {min: 0, max: 200},
	        bounds: {min: 0, max: 200},
	        arrows:false,
	        step:10,
            range:{min: 10, max: 200}
	    });
	    $("#range-mj .range-inner").text("m²");

	    $("#range-mj").bind("valuesChanging", function(e, data){		//移动滑块时，得到最小值和最大值

            //console.log(data.values.max);
			if(data.values.max == 200){

                $("#range-mj .range-inner").eq(1).text('m²+');
                if(data.values.min !== 0){
                    $(".r-mmin").text("大于"+data.values.min);
                    $(".r-mmax").text("");
                    $(".r-mj .mj-h").hide();
                    $(".r-mj .unit-label").show();
                }else{
                    $(".r-mmin").text("面积不限");
                    $(".r-mmax").text("");
                    $(".r-mj i").hide();
                }
			}else{
                $(".r-mmin").text(data.values.min);
				$("#range-mj .range-inner").eq(1).text("m²");
				$(".r-mmax").text(data.values.max);
				$(".r-mj i").show();
			}
		});

	    $("#range-mj").bind("valuesChanged", function(e, data){	//移动停止时，得到的最小值和最大值

			if($(".label-card span").hasClass("r-mj")){

				$(".r-mmin").text(data.values.min);
				$(".r-mmax").text(data.values.max);
			}else{
				$("<span class='r-mj mj-label'>"+"<em class='r-mmin'>"+data.values.min+"</em>"+"<i class='mj-h'>—</i>"+"<em class='r-mmax'>"+data.values.max+"</em>"+"<i class='unit-label'>"+"m²"+"</i>"+"</span>").appendTo(".label-card");
			}
			if(data.values.max == 200){
                $("#range-mj .range-inner").eq(1).text('m²+');
                if(data.values.min !== 0){
                    $(".r-mmin").text("大于"+data.values.min);
                    $(".r-mj .mj-h").hide();
                    $(".r-mj .unit-label").show();

                }else{
                    $(".r-mmin").text("面积不限");
                    $(".r-mj .unit-label").text("m²");
                    $(".r-mj i").hide();
                }
                $(".r-mmax").text("");
			}else{
                $(".r-mj .unit-label").text("m²");
				$("#range-mj .range-inner").eq(1).text("m²");
				$(".r-mmax").text(data.values.max);
				$(".r-mj i").show();
			}
			
		});
	}
	
	function step4(){
		
		$("#step5").removeClass("hide");
		$("#step4").addClass("hide");
	}
	
	function step5(){
		$("#step6").removeClass("hide");
		$("#step5").addClass("hide");
	}

	$(".pop-mudi li").on("click",function(){
		if($(this).hasClass("cur")){
			$(this).removeClass("cur");
		}else{
			$(this).addClass("cur");
		}
        var mudiAdd     = [] ;
        var mudiIdAdd   = [] ;
        var mudiNameAdd = [] ;
        var acticveDT = $(".pop-mudi").find(".cur");
        $.each(acticveDT,function (i) {
            var mudiId   = acticveDT.eq(i).attr("id");
            var mudiName = acticveDT.eq(i).children("h4").text();
            //展示
            mudiAdd.push('<span class="show-mudi"><em>'+mudiName+'</em></span>');
            //隐藏域的目的以及id
            mudiIdAdd.push(mudiId);
            mudiNameAdd.push(mudiName);
        });
        //添加之前先清空原有数组
        $(".show-mudi").remove();
        //追加新的数组展示
        $(".label-card").append(mudiAdd);
        //隐藏域的目的以及ID
        $("#mudi-val").val(mudiNameAdd);
        $("#mudiId-val").val(mudiIdAdd);
	});
		
	sel("#step3 .select-list span","selectHx","showHx","hxId-val","hx-val");
	sel("#step6 .select-list span","houseTags","showTags","tdId-val","td-val");
	
	function sel(selName,className,showClassName,hidId,hidName){

		$(selName).on("click",function(){
            if($(this).hasClass("cur")){
                $(this).removeClass("cur");
            }else{
                $(this).addClass("cur");
            }
            var showAdd = [] ;
            var selectIdAdd = [] ;
            var selectNameAdd = [] ;
            var acticveDT = $("."+className).find(".cur");
            $.each(acticveDT,function (i) {
                var selectId   = acticveDT.eq(i).attr("attrid");
                var selectName = acticveDT.eq(i).text();
                //展示
                showAdd.push('<span class="'+showClassName+'"><em>'+selectName+'</em></span>');
                //隐藏域的目的以及id
                selectIdAdd.push(selectId);
                selectNameAdd.push(selectName);
            });
            //删除原有元素
            $("."+showClassName).remove();
            //追加新的数组展示
            $(".label-card").append(showAdd);
            $("#"+hidId).val(selectIdAdd);
            $("#"+hidName).val(selectNameAdd);
		});	
	}

	
//区域选项
    pSelectQy();
    function pSelectQy(){
        $(".select-qu span").on("click",function(){
            var iIndex = $(this).index();          
       
            $(".p-qu-sq").eq(iIndex).removeClass("hide");
            $(".p-qu-sq").eq(iIndex).siblings().addClass("hide");
            $(".p-qy-dt").eq(0).removeClass("hide");
            
            if($(this).hasClass("cur")){
                $(this).removeClass("cur");
            }else{
		$(this).addClass("cur");
                $(this).siblings().removeClass("cur");
                if($(this).siblings().hasClass("sq-checked")){
                    $(".sq-checked").addClass("cur2");
                }else{
                    $(this).siblings().removeClass("cur2");
                }
                if($(this).hasClass("cur2")){
                    $(this).addClass("cur");
                }
            }
            
//          $(".pop-con").scrollTop(128);

		$(".pop-con").animate({  
	        scrollTop: 126  
	    }, 100);
        });
    }
    
//添加卡片时弹框的商圈添加
	pSelectSq();
	function pSelectSq(){
        $(".p-qu-sq li").on("click",function(){

            //清空隐藏域的地铁站地铁线
            $("#station-val").val("");
            $("#stationId-val").val("");
            $("#line-val").val("");
            $("#lineId-val").val("");
            //选择区域商圈时地铁站样式控制
            $(".select-dt").find("span").attr("class","");
            $(".tags-lines").find("li").removeClass("cur");

            if($(this).hasClass("buxian")){
                if($(this).hasClass("cur")){
                    $(this).removeClass("cur");
                }else{
                    $(this).addClass("cur");
                    $(this).siblings().removeClass("cur");
                }
            }else{
                if($(this).hasClass("cur")){
                    $(this).removeClass("cur");
                }else{
                    $(this).addClass("cur");
                    $(this).parent().children(".buxian").removeClass("cur");
                }
            }
            var qysqAdd = [];
            var qyAdd = [];
            var qyAddId = [];
            var sqAdd = [];
            var sqAddId = [];
            var acticveSq = $(".p-qu-sq").find(".cur");
            $.each(acticveSq,function (i) {
                if($(this).text()=="不限"){
                    //根据不限获取当前属于的区域下标
                    var j = acticveSq.eq(i).parents().attr("p-data-sq");
                    //所属的区域
                    var selectQy = $(".select-qu span").eq(j).text();
                    //所属区域的id
                    var selectQyId = acticveSq.eq(i).find("span").attr("p-attrid-buxian");
                    //展示区域
                    qysqAdd.push('<span class="select-qu-subway"><em>'+selectQy+'</em></span>');
                    //隐藏域区域
                    qyAdd.push(selectQy);
                    //隐藏域区域ID
                    qyAddId.push(selectQyId);
                }else{
                    //展示商圈
                    qysqAdd.push('<span class="select-qu-subway"><em>'+acticveSq.eq(i).find("span").text()+'</em></span>');
                    //隐藏域商圈
                    sqAdd.push(acticveSq.eq(i).find("span").text());
                    //隐藏域商圈ID
                    sqAddId.push(acticveSq.eq(i).find("span").attr("p-attrid"));
                }
            });
            //删除原有元素
            $(".select-qu-subway").remove();
            //追加新的数组展示
            $(".label-card").append(qysqAdd);
            //隐藏域的区域
            $("#qu-val").val(qyAdd);
            $("#quId-val").val(qyAddId);
            //隐藏域的商圈
            $("#sq-val").val(sqAdd);
            $("#sqId-val").val(sqAddId);
            var num = $(this).parent().attr("p-data-sq");
            if($(this).parent().children().hasClass("cur")){
                $(".select-qu span").eq(num).addClass("sq-checked");
            }else{
                $(".select-qu span").eq(num).removeClass("sq-checked");
                $(".select-qu span").eq(num).removeClass("cur2");
            }
            
        });
    }
	
//弹窗中意向区域中地铁

    pSelectDt();
    function pSelectDt(){
        $(".select-dt span").on("click",function(){
        	
            var iIndex = $(this).index();
            
            $(".p-qu-dt").eq(iIndex).removeClass("hide");
            $(".p-qu-dt").eq(iIndex).siblings().addClass("hide");
            $(".p-qy-dt").eq(1).removeClass("hide");

            if($(this).hasClass("cur")){

                $(this).removeClass("cur");
                
            }else{

				$(this).addClass("cur");
                $(this).siblings().removeClass("cur");
                
                if($(this).siblings().hasClass("dt-checked")){

                    $(".dt-checked").addClass("cur2");
                }else{

                    $(this).siblings().removeClass("cur2");
                }

                if($(this).hasClass("cur2")){

                    $(this).addClass("cur");
                }

            }
            
//          $(".pop-con").scrollTop(126);

			$(".pop-con").animate({  
		        scrollTop: 126 
		    }, 100);
 
        });

    }
    //添加卡片时弹框添加地铁站
	pSelectZh();
	function pSelectZh(){
        $(".p-qu-dt li").on("click",function(){
            //清空隐藏域区域商圈
            $("#qu-val").val("");
            $("#quId-val").val("");
            $("#sq-val").val("");
            $("#sqId-val").val("");
            //选择地铁站时区域商圈样式控制
            $(".select-qu").find("span").attr("class","");
            $(".tags-sq").find("li").removeClass("cur");

            if($(this).hasClass("buxian")){
                if($(this).hasClass("cur")){
                    $(this).removeClass("cur");
                }else{
                    $(this).addClass("cur");
                    $(this).siblings().removeClass("cur");
                }
            }else{
                if($(this).hasClass("cur")){
                    $(this).removeClass("cur");
                }else{
                    $(this).addClass("cur");
                    $(this).parent().children(".buxian").removeClass("cur");
                }
            }
             var lineAdd   = [];//地铁线
             var lineAddId = [];//地铁线ID
             var stationAdd   = [];//地铁站
             var stationAddId = [];//地铁站id
             var dtAdd     = [];//展示地铁站或者地铁线
             var acticveDT = $(".p-qu-dt").find(".cur");

              $.each(acticveDT,function (i) {
                 if($(this).text()=="不限"){
                     //根据不限获取当前属于的几号地铁线下标
                     var j = acticveDT.eq(i).parents().attr("p-data-line");
                     //所属的地铁线
                     var selectLine   = $(".select-dt span").eq(j).text();
                     //所属地铁线的id
                     var selectLineId = acticveDT.eq(i).find("span").attr("p-attrid-buxian");
                     //展示地铁线
                     dtAdd.push('<span class="select-qu-subway"><em>'+selectLine+'</em></span>');
                     //隐藏域的地铁线
                     lineAdd.push(selectLine);
                     //隐藏域的地铁线ID
                     lineAddId.push(selectLineId);
                 }else{
                    //展示地铁站
                    dtAdd.push('<span class="select-qu-subway"><em>'+acticveDT.eq(i).find("span").text()+'</em></span>');
                    //隐藏域的地铁站
                    stationAdd.push(acticveDT.eq(i).find("span").text());
                    //隐藏域的地铁站Id
                    stationAddId.push(acticveDT.eq(i).find("span").attr("p-attrid"));
                }
             });
            //console.log(stationAddId);
            //删除原有元素
            $(".select-qu-subway").remove();
            //追加新的数组展示
            $(".label-card").append(dtAdd);
            //隐藏域的地铁线
            $("#line-val").val(lineAdd);
            $("#lineId-val").val(lineAddId);
            //隐藏域的地铁站
            $("#station-val").val(stationAdd);
            $("#stationId-val").val(stationAddId);
            var num = $(this).parent().attr("p-data-line");
            if($(this).parent().children().hasClass("cur")){
                $(".select-dt span").eq(num).addClass("dt-checked");
            }else{
                $(".select-dt span").eq(num).removeClass("dt-checked");
                $(".select-dt span").eq(num).removeClass("cur2");
            }
        });
    }		

    /**
     * 设置用户的搜索条件
     */
    function setConditions() {

        smart_mudi      = $("#mudi-val").val();
        smart_mudiId    = $("#mudiId-val").val();
        smart_price     = $("#price-val").val();
        smart_bedRoom   = $("#hx-val").val();
        smart_bedRoomId = $("#hxId-val").val();
        smart_area      = $("#mj-val").val();
        smart_district  = $("#qu-val").val();
        smart_districtId= $("#quId-val").val();
        smart_sq        = $("#sq-val").val();
        smart_sqId      = $("#sqId-val").val();
        smart_line      = $("#line-val").val();
        smart_lineId    = $("#lineId-val").val();
        smart_station   = $("#station-val").val();
        smart_stationId = $("#stationId-val").val();
        smart_tag       = $("#td-val").val();
        smart_tagId     = $("#tdId-val").val();
    }

    //获取二手房数据包括分页
    function ajaxSeachOne(){
        setConditions(); //设置搜索条件
        var data  = {
            id:smartCardId,page:selectPage,type:action,listType:listType,
            mudiId:smart_mudiId,communityId:communityid,
            price:smart_price,bedRoomId:smart_bedRoomId, area:smart_area,
            districtId:smart_districtId,sqId:smart_sqId,
            lineId:smart_lineId,stationId:smart_stationId,
            tagId:smart_tagId,order:order,orderStatus:orderStatus,is_card_search:is_card_search
        };
        $.post('/smart/ajaxone',data,function(result){
            $('.list-con-box').html(result);
            $('#totalCount').html($('#bigImagesCount').val())
            creatPage();//加载ajax分页
        },"html");
    }
    //保存卡片ajax
    function ajaxSave(editId){

        var mudi   = $("#mudi-val").val();
        var mudiId = $("#mudiId-val").val();
        var price  = $("#price-val").val();
        var bedRoom   = $("#hx-val").val();
        var bedRoomId = $("#hxId-val").val();
        var area = $("#mj-val").val();
        var district   = $("#qu-val").val();
        var districtId = $("#quId-val").val();
        var sq   = $("#sq-val").val();
        var sqId = $("#sqId-val").val();
        var line = $("#line-val").val();
        var lineId  = $("#lineId-val").val();
        var station = $("#station-val").val();
        var stationId = $("#stationId-val").val();
        var tag   = $("#td-val").val();
        var tagId = $("#tdId-val").val();
        var data  = {
            editId:editId,mudi:mudi,mudiId:mudiId,price:price,bedRoom:bedRoom,bedRoomId:bedRoomId,area:area,district:district,
            districtId:districtId,sq:sq,sqId:sqId,line:line,lineId:lineId,station:station,stationId:stationId,tag:tag,tagId:tagId,
            order:order,sort:orderStatus,action:action
        };
        $.post('/smart/ajaxsavesmart',data,function(result){

            switch (result.msg){
                case 'NOTLOGGEDIN':
                    var url = '/smart/'+action;
                    window.location.href="/reglogin/index?preUrl="+url;
                    break;
                case 'CONDITIONISEMPTY':
                    openPop('选房条件不能为空！','','2');
                    setTimeout(function(){window.location.href = '/smart/'+action+'/';}, 1000);
                    break;
                case 'CONDITIONEXISTS':
                    openPop('条件相同的卡片不能重复提交！','','2');
                    setTimeout(function(){window.location.href = '/smart/'+action+'/';}, 1000);
                    break;
                case 'MORECARDS':
                    openPop('卡片个数不能超过5张！','','2');
                    setTimeout(function(){ window.location.href = '/smart/'+action+'/'; }, 1000);
                    break;
                case 'SUCCESS' :
                    openPop('保存成功！','','1');
                    var url = '';//搜索url
                    //编辑或者添加成功以后显示自动搜索刚才操作的卡片
                    url = '/smart/'+action+'/'+'edit-'+result.smartsId;
                    setTimeout(function(){window.location.href = url;}, 1000);
                    break;
            }
        },"json");
    }

    //开始找房
    $(".znxf-btn").on("click",function(){
        smartCardId = '';
        is_card_search = 'yes';
        ajaxSeachOne();
    });

    //更多
	$(".more").on("click",function(){

		if($(".more-con").hasClass("hide")){
			$(".more-con").addClass("show").removeClass("hide");
			$(".icon-more").addClass("down").removeClass("up");
			$(".more span").text("收起");

		}else if($(".more-con").hasClass("show")){
			$(".more-con").addClass("hide").removeClass("show");
			$(".icon-more").addClass("up").removeClass("down");
			$(".more span").text("更多");
		}
	});
    //生成ajax分页
    function creatPage(){

        $('.pageSty a').bind("click", function(){

            var Regx = /^[0-9]*$/;
            if(Regx.test($(this).html())) {
                selectPage = parseInt($(this).html());
                $('.pageSty>a').removeClass('cur');
                $(this).addClass('cur');
            } else {
                if($(this).html() == '下一页') {
                    selectPage = selectPage +1;
                } else if($(this).html() == '首页' || $(this).html() == '第一页'){
                    selectPage = 1;
                }else if($(this).html() == '末页'){
                    selectPage = parseInt($(this).html());
                } else if($(this).html() == '上一页'){
                    selectPage = selectPage -1;
                }
            }
            ajaxSeachOne();
        });
    }

    function doTagsInfo(result){

        $(".zn-jg-label dd").html(result.smartsTags);//渲染选中标签
        $(".priceTags").html(result.smartsPrice.prices);//渲染选中价格
        //渲染自定义价格
        if(result.smartsPrice.end !== '' ){
            $(".zdy-p-val1").val(result.smartsPrice.start);
            $(".zdy-p-val2").val(result.smartsPrice.end);
        }
        $(".areaTags").html(result.smartsArea.areas);//渲染面积
        //渲染自定义面积
        if(result.smartsArea.end !== '' ){
            $(".zdy-m-val1").val(result.smartsArea.start);
            $(".zdy-m-val2").val(result.smartsArea.end);
        }
        $(".hux").html(result.smartsBedroom);//渲染居室
        $(".qu-dt").html(result.smartsSubway.lines);//渲染地铁线
        $(".subwayTags").html(result.smartsSubway.stations);//渲染地铁站
        $(".qu-sq").html(result.smartsDistrict.district);//渲染区域
        $(".shangquanTags").html(result.smartsDistrict.shangquans);//渲染商圈

        editTags()//绑定标签
        editPrice();//绑定价格
        editArea();//绑定面积
        editHx();//绑定户型
        onradio();//绑定单选
        editLine();//地铁线
        editStation();//地铁站
        editQy();//绑定区域
        editSq();//绑定商圈
    }
    //用户中心点击过来模拟点击编辑
    var editCardId = $("#cardId").val();
    if(editCardId !== ''){
        if(editCardId !== 'useradd'){
            var cardId = editCardId.split('-');
                if(cardId[0] == 'useredit'){
                    var id = cardId[1];
                    ajaxEditSmartCard(id);
                }else{
                    $(".znxf-ka").removeClass("hide");//隐藏卡片列表
                    $("#card"+cardId[1]).click();
                    smartCardId = cardId[1];
                    selectPage  = 1 ;//默认第一页
                    communityid = '';
                    action = $("#action").val();
                    ajaxSeachOne();//默认取出第一页数据
                }
        }else{
            $(".icon-add").click();
        }

    }

  //删除卡片提示操作
	$(".popup-btn1,.popup-btn2").on("click",function(){
         var status = $(this).attr("status");
        if(status == 1){
            $(".popup-box").addClass("hide");
            var action = $("#action").val();
            $.post('/smart/ajaxdel',{id:del_card_id,action:action},function(result){
                if(result.msg == ''){
                    $(".popup-box-common").addClass("hide");//隐藏弹出层
                    del_li.remove();//删除卡片样式
                    var slideNum = $(".slide-con li").length;
                    var slideW = $(".slide-con li").outerWidth();
                    if( slideNum<=3 ){
                        $(".slide-box .next").hide();
                    }else if(slideNum >=3){
                        $(".slide-box .next").show();
                    }
                    $(".popup-box").addClass("hide");
                    if($(".slide-con li").length==1){
                        window.location.href = '/smart/'+action+'/';
                    }
                }else{
                    openPop(result.msg,'','2');
                }
            },"json");
        }else{
            $(".popup-box-common").addClass("hide");
        }
	});

	$(".popup-close").on("click",function(){
        //window.location.reload();
        $(".popup-box").addClass("hide");
	});

});

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 首页导航 1 -->
    <div id="tp1">
    	<div class="pull-right" style="margin-right: 60px;">
    		<a href="">帮助中心</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-phone" style="color: "></i>&nbsp;&nbsp;&nbsp;下载App</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-user" style="color: "></i>&nbsp;&nbsp;&nbsp;AiYi会员</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-file" style="color: "></i>&nbsp;&nbsp;&nbsp;我的订单</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-shopping-cart" style="color: #ff6699;"></i>&nbsp;&nbsp;&nbsp;我的购物车</a>
    	</div>
    	
    	<cc:if test="${sessionScope.activeUser==null }">
    		<div class="pull-right">
	    		<a href="/meilishuo/regedit.html">注册</a>
	    	</div>
	    	<div class="pull-right">
	    		<a href="/meilishuo/login.html">登录</a>
	    	</div>
	    	<div class="pull-right">
	    		<a href=""><img src="/meilishuo/imgs/qq.jpg" style="width: 20px;float: left;margin-top: -2.5;">QQ登录</a>
	    	</div>
	    	<div class="pull-right" style="border: 0px;">
	    		<a href=""><img src="/meilishuo/imgs/weixin.jpg" style="width: 20px;float: left;margin-top: -2.5;">微信登录</a>
	    	</div>
    	</cc:if>
    	
    	
    	<cc:if test="${sessionScope.activeUser!=null }">
    		<div class="pull-right" style="color: #999999;font-size: 13px;">
	    		欢迎光临&nbsp;&nbsp;<a href="" style="color: #ff6699;">${sessionScope.activeUser.uflogname }</a>
	    	</div>
    	</cc:if>
    	
    	
    </div>
    
    <!-- 首页导航 2 -->
    <div id="tp2">
    	<div class="col-lg-10 col-lg-offset-1">
    		<div class="col-lg-5">
    			<img src="/meilishuo/imgs/logo_1.png" style="margin-top: 30px;">
    			<img src="/meilishuo/imgs/logo_2.png" style="margin-top: 30px;margin-left: 20px;">
    		</div>
    		
    		<div class="col-lg-6" style="margin-top: 16px;margin-left: -100;">
    			<div>
    				<button class="btn" style="background-color: #ff6699;color: #ffffff;border: 0px;border-radius: 0px;font-size: 12px;height: 26px;line-height: 12px;">宝贝</button>
    				<button class="btn" style="background-color: #dddddd;color: #666666;border: 0px;border-radius: 0px;font-size: 12px;height: 26px;line-height: 12px;">店铺</button>
    			</div>
    			<form action="/meilishuo/mls/crol/mainAction/tosearch" method="post">
	    			<div class="col-lg-10" style="background-color: #ff6699;padding: 2px;">
	   					<input placeholder="搜索商品" id="search" name="kwds" autocomplete="off" 
	    					style="width: 85%;float: left;height: 26px;border-radius: 0px;border: 0px;font-size: 12px;" 
	    					type="text" class="form-control" />
	    				<button class="btn " style="background-color: transparent;width: 15%;text-align: center;">
	    					<i class="glyphicon glyphicon-search" style="color: #ffffff;float: left;margin-top: -2px;margin-left: 13px;"></i>
	    				</button>
	    			</div>
    			</form>
    			<br><br>
    			<div style="font-size: 12px;color: #ff6699;">
    				套装 外套 连衣裙  运动鞋 双肩包 牛仔裤 卫衣 衬衫 小白鞋 睡衣
    			</div>
    		</div>
    	</div>
    </div>
    
    
     <!-- 首页导航 3 -->
    <div id="tp3" class="col-lg-12">
    	<div class="col-lg-10 col-lg-offset-1" style="line-height: 40px;">
    		<div class="tp3_link_1">首页</div>
    		<div class="tp3_link_1">最热</div>
    		<div class="tp3_link_1">上衣</div>
    		<div class="tp3_link_1">裙子</div>
    		<div class="tp3_link_1">裤子</div>
    		<div class="tp3_link_1">鞋子</div>
    		<div class="tp3_link_1">宝宝</div>
    		<div class="tp3_link_1">配饰</div>
    		<div class="tp3_link_1" id="find_more" style="width: 100px;">更多</div>
    		<div style="border-left: 1px dotted #cccccc;float: left;width: 30px;height: 16px;margin-top: 13px;">&nbsp;</div>
    		<div class="tp3_link_2">Hi范儿</div>
    		<div class="tp3_link_2" style="width: 80px;">明星同款</div>
    		<div class="tp3_link_2">韩国馆</div>
    		<div class="tp3_link_2">团购</div>
    		<div class="tp3_link_2">福利社</div>
    	</div>
    </div>
    
    
    <script type="text/javascript">
    
    
    
    
    	(function(){
    		
    		$("").ready(function(){
    			
    			//商品搜索关键字检索操作
    			$("#search").keyup(function(event){
    				
    				//如果按键为 上或者下 则进行单项操作
    				if(event.which==40||event.which==38){
    					
    					var step = 1;
    					if(event.which==38){
    						step=-1;
    					}
    					
    					if($("#kwddv")[0]!=undefined){
    						//根据组件的自定义属性idx 确定索引
    						var idx = $("#kwddv").attr("idx");
    						idx = parseInt(idx)+step;
    						//索引超出10 自动返回为第一个（归0）
    						if(idx==10){
    							idx = 0;
    						}
    						//除去索引指定的单项，其他单项去掉样式，模拟失去焦点的状态
    						$("#kwddv>div").removeClass("kwddvitem");
    						//制定索引的单项，加载样式，模拟获得焦点的状态
    						$("#kwddv>div:eq("+idx+")").addClass("kwddvitem");
    						//输入框内容配合被选中的单项，内容一致
    						$("#search").val($("#kwddv>div:eq("+idx+")").html());
    						//索引再次赋值给自定义属性，为下次操作做准备
    						$("#kwddv").attr("idx",idx);
    					}
    					
    					return;
    				}
    				
    				//输入框内容不为空，则进行ajax请求
    				if($(this).val()!=""){
    				
    					var ipt = this;
    					
    					//根据输入框内容发送请求，并接收返回的数据
    					$.post("/meilishuo/mls/crol/mainAction/getkwds",{'kwds':$(this).val()},function(txt){
    						//如果没有相应内容则不进行操作
    						if(txt.length<1){
    							return;
    						}
    						//对返回内容进行操作前将现有的信息去掉
    						$("#kwddv").remove();
    						//根据返回内容生成json对象
    						var data = eval(txt);
    						//生成div显示单项
    						var dv1 = "<div id='kwddv' idx='-1'></div>";
    						
    						$("body").append(dv1);
    						//设置div的位置以及样式（样式本身参看top.css）
    						$("#kwddv").width($(ipt).width()+24);
    						$("#kwddv").css("left",$(ipt).offset().left-1);
    						$("#kwddv").css("top",$(ipt).offset().top+28);
    						//为div加载搜索关键字单项
    						$(data).each(function(){
    						
    							$("#kwddv").append("<div>"+this.value+"</div>");
    							
    						});
    						
    					});
    				}
    				
    				
    				
    			});
    			
    			
    		});
    		
    		
    		
    	})();
    	
    	
    
    
    
    	//用于顶部导航滚动跟随的方法
  			function top3_beScroll(){
  				$(window).scroll(function(){
  				
  					
	  				if($(window).scrollTop()>=100){
	  					$("#to_Top").show();
	  				}else{
	  					$("#to_Top").hide();				
	  				}
  				
  				
  				
	  				if($(window).scrollTop()>=160){
	  					$("#tp3").addClass("tp3_scroll");
	  				}else{
	  					$("#tp3").removeClass("tp3_scroll");  					
	  				}
	  				
  				});
  			}
  			
  			top3_beScroll();
  		
  		
	  		//首页导航3 底部红线
	  		$("#tp3").css({"border-bottom": "1px #ff6699 solid"});
	  		
	  		
	  		//首页导航 3 "更多"下拉菜单光标覆盖
  		$("#find_more").mouseover(function(){
  		
  			$("#the_more").remove();
  		
  			var more="<div id='the_more'>";
  			
  			more+="<div><a>内衣</a></div>";
  			more+="<div><a>美装</a></div>";
  			more+="<div><a>男装</a></div>";
  			more+="<div><a>童装</a></div>";
  			more+="<div><a>家具</a></div>";
  			more+="<div><a>小家电</a></div>";
  			more+="<div><a>食品</a></div>";
  			more+="</div>";
  			
  			$("body").append(more);
  			$("#the_more").css("left",$(this).offset().left).css("top",$(this).offset().top+$(this).height());
  			$("#the_more").mouseout(function(evt){
  				if(evt.pageY>$(this).offset().top+$(this).height()){				
	  				$(this).remove();
  				}
  				if(evt.pageX>$(this).offset().left+$(this).width()){				
	  				$(this).remove();
  				}
  				if(evt.pageX<$(this).offset().left){				
	  				$(this).remove();
  				}
  			});
  			
  		});
  		
  		//首页导航 3 "更多"下拉菜单光标离开
  		$("#find_more").mouseout(function(evt){
  			if(evt.pageY<$(this).offset().top){
  				$("#the_more").remove();
  			}
  			if(evt.pageX<$(this).offset().left){
  				$("#the_more").remove();
  			}
  			if(evt.pageX>$(this).offset().left+$(this).width()){
  				$("#the_more").remove();
  			}
  		});
  	
    </script>
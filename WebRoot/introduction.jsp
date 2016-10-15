<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML >
<html>
  <head>
    <title>分类筛选</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/toolbar_right.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/top.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/main.css">
	
	
	<script type="text/javascript" src="/meilishuo/sysjs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/meilishuo/dist/js/bootstrap.min.js"></script>
	
	
	<style type="text/css">
	/**最外层容器**/
		.container{
			width: 1346px;
			height: 5000px;
			padding: 0px;
			font-family: SimHei;
		}
		
		
		#prs,#cts{width: 300px;height: 200px;background-color: #f9f9f9;position: absolute;z-index: 99;border: 1px solid #e0e0e0;padding: 10px;}
		#prs>div,#cts>div{width: 50px;height: 30px;float: left;font-size: 12px;color: #999999;text-align: center;padding: 5px;}
		#prs>div:HOVER,#cts>div:HOVER{background-color: #ff6699;color: #ffffff;}
		
		
	</style>

  </head>
  
  <body>
    <div class="container">
    	<cc:set var="goods" value="${goodsinfo }"></cc:set>
    	
	    <!-- =====================上层div（登录注册以及个人中心，logo 搜索，导航）========================= -->
	    <jsp:include page="/main/top2.jsp"></jsp:include>
		<!-- ================================右侧浮动菜单========================================= -->
	    <jsp:include page="/main/toolbar_right.jsp"></jsp:include>
	    
	    
	    <div class="col-lg-10 col-lg-offset-1 " style="height: 760px;font-size: 12px;padding-top: 37px;">
	    	<!-------------------------------------------- 图片区域 -------------------------------------------->
	    	<div class="col-lg-5 " style="height: 100%;">
	    		<div class="col-lg-12" style="height: 85%;padding-left: 30px;padding-right: 10px;">
	    			<img id="pic1" src="/meilishuo/imgs/tp/${goods.goodsimages[1].gimgurl }" style="width: 100%;height: 100%;">
	    		</div>
	    		
	    		<div class="col-lg-12 text-center" id="imgcollection" style="height: 15%;padding-top: 12px;">
	    			<cc:forEach items="${goods.goodsimages }" var="gimg">
		    			<img alt="" src="/meilishuo/imgs/tp/${gimg.value.gimgurl }" style="width: 70px;height: 70px;margin-left: 8px;">	    			
	    			</cc:forEach>
	    		</div>
	    	</div>
	    	<!------------------------------------------- 明细内容 -------------------------------------------------->
	    	<div class="col-lg-5 " style="height: 100%;padding-left: 20px;padding-right: 20px;padding-top: 6px;">
	    		<h4 style="font-weight: bold;">${goods.gdname }</h4>
	    		<h5 style="font-weight: bold;color: #ff6699;">2016时尚新品（简介）</h5>
	    		
	    		<h2 style="font-weight: bold;color: #ff6699;">
		    		<span style="font-size: 16px;">￥</span>
		    		${goods.goodsprices[1].price }
		    		<span 
		    			style="text-decoration: line-through;font-size: 12px;color: gray;
		    			font-weight: normal;margin-left: 10px;">
		    			￥300
		    		</span>
	    		</h2>
	    		
	    		<div style="margin-top: 10px;">
	    			<label class="label" 
	    				style="background-color: #ff6699;color: #ffffff;font-size: 13px;
	    				border-radius:0px;border: 0px;font-weight: lighter;padding-top: 3px;
	    				padding-bottom: 3px;padding-left: 2px;padding-right: 1px;">限</label>
	    			<span style="font-size: 13px;margin-left: 5px;">距离恢复原价仅剩2天12小时23分1秒</span>
	    		</div>
	    		<div style="margin-top: 6px;">
	    			<label class="label" 
	    				style="background-color: #ff6666;color: #ffffff;font-size: 13px;
	    				border-radius:0px;border: 0px;font-weight: lighter;padding-top: 3px;
	    				padding-bottom: 3px;padding-left: 2px;padding-right: 1px;">券</label>
	    			<span style="font-size: 13px;margin-left: 5px;">满500减50优惠券可领取 <a href="">立即领取</a></span>
	    		</div>
	    		<div style="margin-top: 6px;">
	    			<label class="label" 
	    				style="background-color: #94D564;color: #ffffff;font-size: 13px;
	    				border-radius:0px;border: 0px;font-weight: lighter;padding-top: 3px;
	    				padding-bottom: 3px;padding-left: 2px;padding-right: 1px;">邮</label>
	    			<span style="font-size: 13px;margin-left: 5px;">单笔订单满1件包邮</span>
	    		</div>
	    		<div style="margin-top: 6px;">
	    			<label class="label" 
	    				style="background-color: #fcc158;color: #ffffff;font-size: 13px;
	    				border-radius:0px;border: 0px;font-weight: lighter;padding-top: 3px;
	    				padding-bottom: 3px;padding-left: 2px;padding-right: 1px;">折</label>
	    			<span style="font-size: 13px;margin-left: 5px;">单笔订单满2件打9.9折</span>
	    		</div>
	    		
	    		
	    		<div style="margin-top: 10px;font-size: 12px;">
	    			运费 （商家所在地）至 <button class="btn btn-link" id="showAreas" style="font-size: 12px;color: #666666;border: 0px;padding: 0px;"><span>北京</span><i class="glyphicon glyphicon-chevron-down"></i></button> 免运费
	    		</div>
	    		
	    		<div class="row text-center" 
	    			style="margin-top: 10px;margin-left: 0px;margin-right: 0px;
	    			line-height: 40px;border-bottom: 1px solid #e6e6e6;border-top: 1px solid #e6e6e6;">
	    			<div class="col-lg-4">销量 9件</div>
	    			<div class="col-lg-4">好评 -（4人）</div>
	    			<div class="col-lg-4">喜欢 72人</div>
	    		</div>
	    		
	    		<div style="margin-top: 16px;">
	    			颜色
	    			<cc:forEach items="${goods.goodsimages }" var="gimg">
		    			<img alt="" src="/meilishuo/imgs/tp/${gimg.value.gimgurl }" style="width: 36px;height: 50px;margin-left: 8px;">	    			
	    			</cc:forEach>
	    		</div>
	    		
	    		<div style="margin-top: 16px;">
	    			尺码
	    			<button style="margin-left: 8px;font-size: 13px;width: 26px;height: 26px;background-color: transparent;border: 1px solid #e6e6e6;color: #666666;">S</button>
	    			<button style="font-size: 13px;width: 26px;height: 26px;background-color: transparent;border: 1px solid #e6e6e6;color: #666666;">M</button>
	    			<button style="font-size: 13px;width: 26px;height: 26px;background-color: transparent;border: 1px solid #e6e6e6;color: #666666;">L</button>
	    			<button style="font-size: 13px;width: 26px;height: 26px;background-color: transparent;border: 1px solid #e6e6e6;color: #666666;">XL</button>
	    		</div>
	    		
	    		<div style="margin-top: 16px;">
	    			<div style="float: left;">数量</div>
	    			
	    			<div style="float: left;margin-left: 14px;">
	    				<input 
	    					type="text" id="count" value="1" style="text-align: center;
	    					width: 40px;height: 40px;background-color: transparent;
	    					border: 1px solid #e6e6e6;float: left;border-right: 0px;">
	    				<button id="bt_up" value="1" 
		    				style="border:1px solid #e6e6e6;background-color: transparent;
		    				width: 25px;height: 20px;float: left;text-align: center;border-bottom: 0px;">
	    					<i class="glyphicon glyphicon-chevron-up" ></i>
	    				</button>
	    				<br>
	    				<button id="bt_up" value="-1" 
	    					style="border:1px solid #e6e6e6;background-color: transparent;
	    					width: 25px;height: 20px;text-align: center;">
	    					<i class="glyphicon glyphicon-chevron-down" style="margin-top: 2px;"></i>
	    				</button>
	    			</div>
	    		</div>
	    		
	    		<div style="margin-top: 68px;clear: both;">
	    			客服<button 
		    				style="border: 1px solid #ff6699;background-color: transparent;
		    				color: #ff6699;line-height: 20px;margin-left: 14px;">
	    					<i class="glyphicon glyphicon-comment"></i>联系客服
	    				</button>
	    		</div>
	    		
	    		<div style="margin-top: 26px;">
	    			<button 
	    				style="border: 0px;background-color: #ff9933;color: #ffffff;
	    				width: 160px;height: 40px;font-size: 16px;">
	    				<i class="glyphicon glyphicon-shopping-cart"></i>
	    				加入购物车
	    			</button>
	    			<button 
	    				style="border: 0px;background-color: #ff6699;color: #ffffff;
	    				width: 160px;height: 40px;font-size: 16px;">
	    				<i class="glyphicon glyphicon-usd"></i>
	    				立即购买
	    			</button>
	    		</div>
	    		
	    		<div>
	    			<div 
	    				style="border: 1px solid #e6e6e6;background-color: transparent;
	    				height: 26px;width: 80px;margin-top: 20px;border-radius: 60px;
	    				text-align: center;font-size: 14px;float: left;color: #666666">
	    				<span class="glyphicon glyphicon-heart" style="color: red;padding-top: 6px;
	    				font-size: 6px;margin-right: -2px;"></span>
	    				996
	    			</div>
	    			<div 
	    				style="border: 1px solid #e6e6e6;background-color: transparent;
	    				height: 26px;width: 80px;margin-top: 20px;border-radius: 60px;
	    				text-align: center;font-size: 12px;float: left;color: #666666;margin-left: 10px;">
	    				
	    				<span class="glyphicon glyphicon-plus" style="color: red;padding-top: 5px;
	    				font-size: 6px;margin-right: -2px;"></span>
	    				分享
	    			</div>
	    		</div>
	    		
	    	</div>
	    	
	    	<div class="col-lg-2 bg-warning" style="height: 100%;background-color: #f9f9f9;"></div>
	    
	    </div>
	    
	    
	    
	  </div>
  </body>
  
  
  <script type="text/javascript">
  	(function(){
  		
  		$("").ready(function(){
  		
  		
  			//商品图片切换
  			$("#imgcollection img").mouseover(function(){
  				$("#pic1").attr("src",this.src);
  			});
  			
  			
  			//数量控制
  			$("#bt_up,#bt_down").click(function(){
  				var v = parseInt($("#count").val())+parseInt($(this).val());
  				if(v<1){
  					v = 1;
  				}
  				$("#count").val(v);
  			});
  			
  			
  			//控制输入框只能用数字
  			$("#count").keyup(function(){
  				if(isNaN(this.value)||parseInt(this.value)<1||this.value==""){
  					this.value=1;
  				}
  			});
  			//移除省和市的选择菜单
  			$("body").click(function(){
  				$("#cts,#prs").remove();
  			});
  			
  			
  			//获取省和直辖市的选择菜单
  			$("#showAreas").click(function(){
  				$("#prs").remove();
  				var toArea_bt = this;
  				$.post("/meilishuo/mls/crol/area/showAreas",function(txt){
  					var provinces = eval(txt);
  					var prs = "<div id='prs'>选择您所在的城市<hr style='margin-top:3px;'></div>"
  					$(document.body).append(prs);
  					$(provinces).each(function(){
  						$("#prs").append("<div pid='"+this.aid+"'>"+this.aname+"</div>");
  					});
					$("#prs").css({"left":$(toArea_bt).offset().left+"px","top":$(toArea_bt).offset().top+$(toArea_bt).height()+"px"});
  					//获取二级地区（城市）
  					$("#prs>div").mouseover(function(){
  						$("#cts").remove();
  						var pp = this;
  						$.post("/meilishuo/mls/crol/area/showCities",{"aid":$(this).attr("pid")},function(cities_txt){
  							var cts_data = eval(cities_txt);
  							var cts = "<div id='cts'></div>"
  							$(document.body).append(cts);
  							$(cts_data).each(function(){
		  						$("#cts").append("<div cid='"+this.aid+"'>"+this.aname+"</div>");
		  					});
	  						$("#cts").css({"left":$(pp).offset().left+"px","top":$(pp).offset().top+$(pp).height()+"px"});
  						
  							$("#cts>div").click(function(){
  								$("#showAreas>span").html(this.innerHTML);
  								$("#cts,#prs").remove();
  							});
  						});
  					});
  					
  					
  					
  					
  					
  				});
  			});
  			
  			
  			
  		});
  		
  		
  		
  	
  	})();
  </script>
  
  
  
</html>

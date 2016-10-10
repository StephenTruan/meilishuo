<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE >
<html>
  <head>
   
    <title>美丽说——白领的全球购物</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/css/bootstrap.css">
	<script type="text/javascript" src="/meilishuo/sysjs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/meilishuo/dist/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		
		/**最外层容器**/
		.container{
			width: 1346px;
			height: 5000px;
			padding: 0px;
			font-family: 黑体;
		}
		/**最外层容器 内部第一层div**/
		.container div{
			padding: 0px;
			margin-bottom: 0px;
		}
		/**顶部三个贯穿区域， 以及底部相关操作**/
		#tp1,#tp2,#tp3,#footer{
			width: 100%;
			background-color: white;
			margin-bottom: 1px;
		}
		#tp1{height: 26px;border-bottom: 1px solid #eeeeee;border-width: thin;margin-top: 5px;}
		#tp2{height: 120px;}
		#tp3{height: 43px;border-bottom: 1px #ff6699 solid;z-index: 7;}
		/**顶部导航**/
		.tp3_scroll{position: fixed;top: 0px;z-index: 9;}
		/**底部**/
		#footer{height: 260px;background-color: #dddddd;}
		
		
		
		
		/****************右侧下方主题*********************/
		#body_dv1_bottom{
			height: 28%;width: 80%;padding-top: 15px;
		}
		/**右侧下方主题的单项**/
		.body_dv1_bottom_item{
			width: 18%;margin-left:2%;height: 97.5%;
		}
		/**每日新款**/
		#body_dv2{
			height: 400px;
			margin-top: 20px;
		}
		/**正在流行**/
		#body_dv3{
			height: 200px;
		}
		/**新品精选**/
		#body_dv4{
			height: 760px;
		}
		/**明星同款**/
		#body_dv5{
			height: 450px;
		}
		/**时尚美装**/
		#body_dv6{
			height: 450px;
		}
		/**Hi范儿**/
		#body_dv7{
			height: 400px;
		}
		/**好店推荐**/
		#body_dv8{
			height: 350px;
		}
		/**新店驾到**/
		#body_dv9{
			height: 1180px;
		}
		
		
		
		/**************** 单项 *******************/
		.body_dv2_item{
			width: 32%;height: 350px;margin-right: 2%;;
		}
		.body_dv3_item{
			width: 15%;height: 150px;margin-right: 2%;
		}
		.body_dv4_item{
			width: 18%;height: 45%;margin-right: 2.5%;margin-top: 6px;
		}
		.body_dv5_item{
			width: 32%;height: 400px;margin-right: 2%;
		}
		.body_dv6_item{
			width: 32%;height: 400px;margin-right: 2%;
		}
		.body_dv7_item{
			width: 32%;height: 300px;margin-right: 2%;
		}
		.body_dv8_item{
			width: 32%;height: 300px;margin-right: 2%;
		}
		.body_dv9_item{
			width: 18%;height: 30%;margin-right: 2.5%;margin-top: 6px;
		}
		
		
		
		
		
		/*********************右侧工具栏************************/
		#toolbar_right{
			width: 40px;background-color: #F6F6F6;height: 260px;position: fixed;top: 50px;right: 0px;z-index: 9;
		}
		/**右侧工具栏	按钮**/
		#toolbar_right button{width: 100%;height: 50%;background-color: transparent;border: 1px solid #dddddd;}
		#toolbar_right button:HOVER {background-color: #ff6699;color: #ffffff;}
		/**右侧工具栏	按钮字体图标**/
		#toolbar_right button i {color: #ff6699;}
		#toolbar_right button i:HOVER {color: #ffffff;}
		/**右侧工具栏	返回顶部按钮**/
		#to_Top{
			border: 1px solid #dddddd;
			width: 40px;height: 40px;
			background-color: #F6F6F6;
			position: fixed;top: 500px;
			right: 0px;
			text-align: center;
			display: none;
			z-index: 9;
		}
		/**右侧隐藏工具栏	效果**/
		#toolbar_right_hover{
			width: 40px;
			background-color: #F6F6F6;
			height: 100%;
			position: fixed;
			top: -1px;
			right: -40px;
			z-index: 8;
			border: 1px solid #dddddd;
		}
		/**右侧工具栏	按钮效果**/
		#toolbar_right_hover button{
			width: 100%;
			background-color: transparent;
			height: 40px;
			border: 0px;
			border-bottom: 1px solid #dddddd;
			color: #ff6699;
		}
		/**右侧工具栏	按钮光标覆盖效果**/
		#toolbar_right_hover button:HOVER{background-color: #ff6699;color: #ffffff;}
		
		
		
		/**好店推荐此	效果**/
		#dv8_hover{
			background-color: black;position: absolute;z-index: 2220px;top: 0px;opacity:0.5;
		}
		/**好店推荐此	按钮	效果**/
		#dv8_hover button{
			width: 100px;line-height: 40px;color: #ffffff;background-color: black;
			border: 1px solid #ffffff;margin-left: 36%;margin-top: 50px;
		}
		/**好店推荐此	按钮光标覆盖	效果**/
		#dv8_hover button:HOVER{
			color: black;background-color: #ffffff;
			border: 1px solid #ffffff;margin-left: 36%;margin-top: 50px;
		}
		
		
		/*********************页面图片***********************/
		#body_dv1_bottom div img{
			width: 100%;height: 100%;
		}
		#body_dv2 div img{
			width: 100%;height: 100%;
		}
		#body_dv3 div img{
			width: 100%;height: 100%;
		}
		#body_dv4 div img{
			width: 100%;height: 86%;
		}
		#body_dv5 div img{
			width: 100%;height: 88%;
		}
		#body_dv6 div img{
			width: 100%;height: 88%;
		}
		#body_dv7 div img{
			width: 100%;height: 88%;
		}
		#body_dv8 div img{
			width: 100%;height: 100%;
		}
		#body_dv9 div img{
			width: 100%;height: 86%;
		}
		
		.body_dv2_item div img{
			width: 100%;height: 100%;
		}
		
		
		
		/************************滚动广告	左侧导航延伸菜单**************************/
		.left_item_list{
			position: absolute;z-index: 7;background-color: #ffffff;width: 300px;height: 200px;
			border: 1px solid #cccccc;border-left: 0px solid #cccccc;
		}
		
		
		/*****************************首页导航 1 ************************************/
		/**首页导航 1 单项**/
		#tp1 div{border-left: 1px dotted #cccccc;padding-left: 18px;padding-right: 18px;}
		/**首页导航 1 超链接**/
		#tp1 a{color: gray;font-size: 12px;text-decoration: none;}
		#tp1 a:HOVER{color: #ff6699;font-size: 12px;}
		
		
		/*****************************首页导航 3 ************************************/
		/**首页导航 3 单项**/
		.tp3_link_1,.tp3_link_2{float: left;width: 60px;margin-right: 12px;text-align: center;font-size: 16px;}
		.tp3_link_2{color: #ff6699;}
		.tp3_link_1:HOVER,.tp3_link_2:HOVER {
			border-bottom: 3px solid #ff6699;
			color: #ff6699;
		}
		/**首页导航 3 更多下拉菜单**/
		#the_more{position: absolute;z-index: 9;background-color: #ffffff;top: 0px;width: 100px;font-family: 黑体;}
		#the_more div{text-align: center;line-height: 30px;}
		#the_more div:HOVER{background-color: #eeeeee;}
		#the_more div:HOVER a{color: #ff6699;}
		#the_more a{width: 100%;font-size: 14px;color: black;text-decoration: none;}
	</style>
  </head>
  
  <body>
    
    <div class="container">
    
    <!-- 首页导航 1 -->
    <div id="tp1">
    	<div class="pull-right" style="margin-right: 100px;">
    		<a href="">帮助中心</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-phone" style="color: "></i>&nbsp;&nbsp;&nbsp;下载App</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-user" style="color: "></i>&nbsp;&nbsp;&nbsp;美丽说会员</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-file" style="color: "></i>&nbsp;&nbsp;&nbsp;我的订单</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-shopping-cart" style="color: #ff6699;"></i>&nbsp;&nbsp;&nbsp;帮我的购物车</a>
    	</div>
    	<div class="pull-right">
    		<a href="">注册</a>
    	</div>
    	<div class="pull-right">
    		<a href="">登录</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><img src="/meilishuo/imgs/qq.jpg" style="width: 20px;float: left;margin-top: -2.5;">QQ登录</a>
    	</div>
    	<div class="pull-right" style="border: 0px;">
    		<a href=""><img src="/meilishuo/imgs/weixin.jpg" style="width: 20px;float: left;margin-top: -2.5;">微信登录</a>
    	</div>
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
    			<div class="col-lg-10" style="background-color: #ff6699;padding: 2px;">
    				<input style="width: 85%;float: left;height: 26px;border-radius: 0px;border: 0px;" type="text" class="form-control" />
    				<button class="btn " style="background-color: transparent;width: 15%;text-align: center;">
    					<i class="glyphicon glyphicon-search" style="color: #ffffff;float: left;margin-top: -2px;margin-left: 13px;"></i>
    				</button>
    			</div>
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
    
<!-- ===================================滚屏广告部分================================================== -->
    
    <div class="col-lg-10 col-lg-offset-1" style="height: 500px;margin-top: -1px;" id="body_dv1">
    
    <!-- ===================================滚屏广告	左侧导航======================================== -->
    	
    	<div class="col-lg-3" style="height: 100%;width: 20%;z-index: 6;" id="body_dv1_left">
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;border-bottom: 1px dotted #cccccc;">
    				<h4>每日精选</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;border-bottom: 1px dotted #cccccc;">
    				<h4>2016流行</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;border-bottom: 1px dotted #cccccc;">
    				<h4>时尚经典</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;border-bottom: 1px dotted #cccccc;">
    				<h4>实穿百搭</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;">
    				<h4>百变轮廓</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    	
    	</div>
    	
    <!-- ===================================右侧滚动======================================== -->
    	<div class="col-lg-9 bg-danger" style="height: 72%;width: 80%;">
    		
    		<%@ include file="well.jsp" %>
    	
    	</div>
    	
    <!-- ===================================右侧下方主题======================================== -->
    	<div class="col-lg-9" id="body_dv1_bottom">
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (1).jpg">
    		</div>
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (2).jpg">
    		</div>
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (3).jpg">
    		</div>
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (4).jpg">
    		</div>
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (5).jpg">
    		</div>
    	</div>
    </div>
    
    
    
    <!-- ===================================页面主体======================================== -->
    <div class="col-lg-10 col-lg-offset-1" id="body_dv2">
    	每日发售
    	<hr style="margin-top: 0px;">
    	
    	<div>
    		<div class="col-lg-3" style="height: 100%;width: 60%;">
    			<img alt="" src="/meilishuo/imgs/mrxk_1 (2).png">
    		</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;">
   				<img alt="" src="/meilishuo/imgs/mrxk_1 (1).png">
   			</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;margin-top: 10px;">
   				<img alt="" src="/meilishuo/imgs/mrxk_1 (3).png">
   			</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;margin-top: 10px;">
   				<img alt="" src="/meilishuo/imgs/mrxk_1 (4).png">
   			</div>
    	</div>
    	
    	<div>
    		<div class="col-lg-3" style="height: 100%;width: 60%;">
    			<img alt="" src="/meilishuo/imgs/mrxk_2 (2).png">
    		</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;">
   				<img alt="" src="/meilishuo/imgs/mrxk_2 (1).png">
   			</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;margin-top: 10px;">
   				<img alt="" src="/meilishuo/imgs/mrxk_2 (3).png">
   			</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;margin-top: 10px;">
   				<img alt="" src="/meilishuo/imgs/mrxk_2 (4).png">
   			</div>
    	</div>
    	
    	<div>
    		<div class="col-lg-3" style="height: 100%;width: 60%;">
    			<img alt="" src="/meilishuo/imgs/mrxk_3 (2).png">
    		</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;">
   				<img alt="" src="/meilishuo/imgs/mrxk_3 (1).png">
   			</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;margin-top: 10px;">
   				<img alt="" src="/meilishuo/imgs/mrxk_3 (3).png">
   			</div>
   			<div class="col-lg-9" style="height: 110px;width: 40%;margin-top: 10px;">
   				<img alt="" src="/meilishuo/imgs/mrxk_3 (4).png">
   			</div>
    	</div>
    </div>
    
    <div class="col-lg-10 col-lg-offset-1 " id="body_dv3">
    	正在流行
    	<hr style="margin-top: 0px;">
    	<div>
    		<img alt="" src="/meilishuo/imgs/zzlx (1).jpg">
    	</div>
    	<div>
    		<img alt="" src="/meilishuo/imgs/zzlx (2).jpg">
    	</div>
    	<div>
    		<img alt="" src="/meilishuo/imgs/zzlx (3).jpg">
    	</div>
    	<div>
    		<img alt="" src="/meilishuo/imgs/zzlx (4).jpg">
    	</div>
    	<div>
    		<img alt="" src="/meilishuo/imgs/zzlx (5).jpg">
    	</div>
    	<div>
    		<img alt="" src="/meilishuo/imgs/zzlx (6).jpg">
    	</div>
    </div>
    
    <div class="col-lg-10 col-lg-offset-1 " id="body_dv4">
    	新品精选
    	<hr style="margin-top: 0px;">
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (1).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (2).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div style="margin-left: 2.5%;">
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (3).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (4).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div style="margin-right: 0px;">
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (5).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	
    	
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (6).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (7).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (8).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (9).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div style="margin-right: 0px;">
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xpjx (10).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    </div>
    	
    	
    	
    
     <div class="col-lg-10 col-lg-offset-1 " id="body_dv5">
    	明星同款
    	<hr style="margin-top: 0px;">
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/mxtk (1).png">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/mxtk (2).png">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/mxtk (3).png">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    </div>
    
     <div class="col-lg-10 col-lg-offset-1 " id="body_dv6">
    	时尚美妆
    	<hr style="margin-top: 0px;">
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/ssmz (1).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/ssmz (2).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/ssmz (3).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    </div>
    
     <div class="col-lg-10 col-lg-offset-1 " id="body_dv7">
    	HI 范儿
    	<hr style="margin-top: 0px;">
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/hifan (1).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/hifan (2).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/hifan (3).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    </div>
    
      <div class="col-lg-10 col-lg-offset-1 " id="body_dv8">
    	好店推荐
    	<hr style="margin-top: 0px;">
    	<div>
    		<div style="width: 100%;height: 100%;" class="col-lg-12">
				<img alt="" src="/meilishuo/imgs/hdtj (1).jpg">
			</div>
    	</div>
    	<div>
    		<div style="width: 100%;height: 100%;" class="col-lg-12">
				<img alt="" src="/meilishuo/imgs/hdtj (2).jpg">
			</div>
    	</div>
    	<div>
    		<div style="width: 100%;height: 100%;" class="col-lg-12">
				<img alt="" src="/meilishuo/imgs/hdtj (3).jpg">
			</div>
    	</div>
    </div>
    
     <div class="col-lg-10 col-lg-offset-1 " id="body_dv9">
    	新店驾到
    	<hr style="margin-top: 0px;">
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xdjd (1).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xdjd (2).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div style="margin-left: 2.5%;">
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xdjd (3).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xdjd (4).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div style="margin-right: 0;">
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/xdjd (5).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	
    	<div>
    		 <div class="col-lg-12">
			    <div class="thumbnail">
			      <img src="/meilishuo/imgs/wnjx (1).jpg">
			      <div class="caption">
			        <p>...</p>
			 
			      </div>
			    </div>
			  </div>
    	</div>
    	<div >
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (2).jpg">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	<div>
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (3).jpg">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	<div>
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (4).jpg">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	<div style="margin-right: 0;">
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (5).jpg">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	
    	
    	
    	<div>
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (6).jpg">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	<div>
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (7).jpg">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	<div>
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (8).jpg">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	<div>
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (1).png">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	<div style="margin-right: 0;">
		  <div class="col-lg-12">
		    <div class="thumbnail">
		      <img src="/meilishuo/imgs/wnjx (2).png">
		      <div class="caption">
		        <p>...</p>
		 
		      </div>
		    </div>
		  </div>
    	</div>
    	
    	
    </div>
    
    <div id="footer" class="col-lg-12">
    	
    </div>
    
    <!-- ============================================右侧购物车，客服信息=============================================== -->
    <div id="toolbar_right">
    	<button>
    		<i class="glyphicon glyphicon-shopping-cart"></i>
    		<br>购<br>物<br>车
    	</button>
    	<button>
    		<i class="glyphicon glyphicon-comment"></i>
    		<br>客<br>服<br>信<br>息
    	</button>
    </div>
    
    <!-- ============================================右侧返回顶部=============================================== -->
    <div id="to_Top">
    	<button style="border: 0px;background-color: transparent;padding: 0px;font-size: 12px;color: #ff6699;">
    		<i class="glyphicon glyphicon-chevron-up" style="color: #ff6699;margin-top: 10px;"></i>
    	</button>
    </div>
    
    
    <!-- ============================================右侧浮动栏=============================================== -->
    <div id="toolbar_right_hover">
    	<button style="margin-top: 308px;">
    		<i class="glyphicon glyphicon-usd"></i>
    	</button>
    	<button>
    		<i class="glyphicon glyphicon-heart-empty"></i>
    	</button>
    	<button>
    		<i class="glyphicon glyphicon-phone-alt"></i>
    	</button>
    </div>
  </div>
    
  </body>
  
  
  <script type="text/javascript">
  	
  	(function(){
  	
  		//页面初始化操作
  		$("").ready(function(){
  			page_init();
  			//好店推荐
  			dv8_hover();
  			
  			
  		});
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		
  		/**好店推荐鼠标hover效果**/
  			function dv8_hover(){
  				$("#body_dv8>div>div").mouseover(function(){
	  				
	  				$("#dv8_hover").remove();
	  				
	  				var $_dv8_hover="<div id='dv8_hover' ></div>"
	  				$("body").append($_dv8_hover);
	  				$("#dv8_hover").width($(this).width());
	  				$("#dv8_hover").height($(this).height());
	  				$("#dv8_hover").css({"left":$(this).offset().left,"top":$(this).offset().top});
	  			
	  				var $_dv8_hover_bt1="<button>关注</button>"
	  				var $_dv8_hover_bt2="<button>去逛逛</button>"
	  				
	  				$("#dv8_hover").append($_dv8_hover_bt1,$_dv8_hover_bt2);
	  			
	  			});
  			}
  		
  		
  		
  		
  		
  		
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
  		
  		
  		
  		//用于首页布局的方法
  		function page_init(){
  			/**页面样式加载**/
  			$("#body_dv1_bottom>div").addClass("cl-lg-2 bg-primary pull-right body_dv1_bottom_item");
	  		$("#body_dv2>div").addClass("col-lg-4 body_dv2_item");
	  		$("#body_dv2>div:last").css("margin-right","0px");
	  		$("#body_dv3>div").addClass("col-lg-2 bg-danger body_dv3_item");
	  		$("#body_dv3>div:last").css("margin-right","0px");
	  		$("#body_dv4>div").addClass("col-lg-2 bg-danger body_dv4_item");
	  		$("#body_dv5>div").addClass("col-lg-4 bg-danger body_dv5_item").last().css("margin-right","0px");
	  		$("#body_dv6>div").addClass("col-lg-4 bg-danger body_dv6_item").last().css("margin-right","0px");
	  		$("#body_dv7>div").addClass("col-lg-4 bg-danger body_dv7_item").last().css("margin-right","0px");
	  		$("#body_dv8>div").addClass("col-lg-4 bg-danger body_dv8_item").last().css("margin-right","0px");
	  		$("#body_dv9>div").addClass("col-lg-2 bg-danger body_dv9_item");
	  		
	  		
	  		$("#body_dv4 div").each(function(i){
				if(i==4||i==9){
					$(this).css("margin-right","0px");
				}
	  		});
	  		$("#body_dv9 div").each(function(i){
				if(i==4||i==9||i==14){
					$(this).css("margin-right","0px");
				}
	  		});
  		}
  		
  		
  			/**右侧工具栏按钮hover效果**/
  			$("#toolbar_right button").mouseover(function(){
	  				$(this).children("i").css("color","#ffffff");
	  			}).mouseout(function(){
	  				$(this).children("i").css("color","#ff6699");
	  			});
	  			
	  			//返回顶部按钮相关操作
	  			$("#to_Top button").mouseover(function(){
	  				$(this).html("返回<br>顶部");
	  			}).mouseout(function(){
	  				$(this).html("<i class='glyphicon glyphicon-chevron-up' style='color: #ff6699;margin-top: 10px;'></i>");
	  			}).click(function(){
	  				$(window).scrollTop("0px");
	  			});
	  			
	  			
	  			
	  			//右侧浮动隐藏工具栏
	  			$("body").mousemove(function(e){
	  				if(e.pageX>($(this).width()-$("#toolbar_right_hover").width())){
	  					$("#toolbar_right_hover").stop();
	  					$("#toolbar_right_hover").animate({"right":"0px"},200);
	  				}
	  				
	  			}).mouseout(function(e){
	  					$("#toolbar_right_hover").stop();
	  					$("#toolbar_right_hover").animate({"right":"-40px"},200);
	  				
	  			});
	  			
  		
  		top3_beScroll();
  		
  		
  		//首页导航3 底部红线
  		$("#tp3").css({"border-bottom": "1px #ff6699 solid"});
  		
  		//滚动广告左侧导航默认样式调整
  		$("#body_dv1_left>div").css("border-right","1px solid #cccccc").last().css("border-bottom","1px solid #cccccc");
  		$("[role=left_item]").css("color","#ff6699");
  		
  		$("[role=left_item]").mouseover(function(){
  			$(this).css({"border":"0px"});
  			$(this).parent().css({"border-top":"1px solid #cccccc","border-bottom":"1px solid #cccccc","border-right":"0px solid #cccccc"});
  			$(this).parent().prev().children("[role=left_item]").css({"border":"0px"});
  			
  			$(".left_item_list").remove();
  			var left_item_list="<div class='left_item_list'></div>";
  			$("body").append(left_item_list);
  			$(".left_item_list").css("top",$(this).offset().top-1);
  			$(".left_item_list").css("left",($(this).parent().offset().left+$(this).parent().width())-2);
  			$(".left_item_list").css("height",($(this).parent().height())+2);
  			
  			$(".left_item_list").mouseout(function(evt){
	  			if(evt.pageX>$(this).offset().left){
	  				$(this).remove();
	  			}
  				
  			});
  			
  		});
  		
  		
  		
  		$("[role=left_item_panel]").mouseout(function(evt){
  			if(evt.pageX<$(this).offset().left){
  				$(".left_item_list").remove();
  			}
  		});
  		
  		
  		
  		$("[role=left_item]").mouseout(function(){
  		
  			$(this).css({"border-bottom":"1px dotted #cccccc"});
  			$(this).parent().css({"border-top":"0px solid #cccccc","border-bottom":"0px solid #cccccc","border-right":"1px solid #cccccc"});
  			$(this).parent().prev().children("[role=left_item]").css({"border-bottom":"1px dotted #cccccc"});
  			
  		});
  		
  		$("[role=left_item]:last").mouseout(function(){
  		
  			$(this).css({"border":"0px"});
  			$(this).parent().css({"border-top":"0px solid #cccccc","border-bottom":"1px solid #cccccc","border-right":"1px solid #cccccc"});
  			$(this).parent().prev().children("[role=left_item]").css({"border-bottom":"1px dotted #cccccc"});
  		});
  		
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
  	})();
  	
  </script>
  
  
</html>

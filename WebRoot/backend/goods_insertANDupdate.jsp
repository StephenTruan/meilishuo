<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商品信息的添加与修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	
	
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/css/bootstrap.css">
    
    <script type="text/javascript" src="/meilishuo/sysjs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/meilishuo/dist/js/bootstrap.min.js"></script>

	
	<style type="text/css">
	
		.container{padding: 0px;margin: 0px;}
	
	</style>
	
	

  </head>
  
  <body>
    	<div class="container">
    		
    		<form action="" method="post" id="fm1">
    		
    			<div>
    			
    			  <!-- 通过选项卡和标签页分隔操作内容  基本信息、图片、价格 -->
    			
    				<!-- 标签选项卡 -->
					<ul class="nav nav-tabs" role="tablist">
					  <li role="presentation" class="active"><a href="#goods_info" role="tab" data-toggle="tab">基本信息</a></li>
					  <li role="presentation"><a href="#img_info" role="tab" data-toggle="tab">图片管理</a></li>
					  <li role="presentation"><a href="#price_info" role="tab" data-toggle="tab">价格管理</a></li>
					</ul>
					
					<!-- 标签内容 -->
					<div class="tab-content">
					  <div role="tabpanel" class="tab-pane active" id="goods_info">...</div>
					  <div role="tabpanel" class="tab-pane" id="img_info">...</div>
					  <div role="tabpanel" class="tab-pane" id="price_info">...</div>
					</div>
    			
    			</div>
    		
    		</form>
    		
    	</div>
  </body>
</html>

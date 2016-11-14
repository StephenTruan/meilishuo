<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>滚动广告的添加与修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	
	
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/css/bootstrap.css">
    
    <script type="text/javascript" src="/meilishuo/sysjs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/meilishuo/dist/js/bootstrap.min.js"></script>

	
	<style type="text/css">
	
		.container{margin-top: 20px;}
		.dv6{width: 600px;}
		.dv5{width: 500px;}
		.dv4{width: 400px;}
		.dv3{width: 300px;}
		.dv2{width: 200px;}
		.dv1{width: 100px;}
		.label{font-size: 12px;}
		
	</style>
	

  </head>
  
  <body>
    	<div class="container">
    		
    		<form action="/meilishuo/mls/becrol/rollingadv/doinsert" method="post" id="fm1">
    		
    			<div>
    			
    				<!-- 标签选项卡 -->
					<ul class="nav nav-tabs" role="tablist">
					  <li role="presentation" class="active"><a href="#img_info" role="tab" data-toggle="tab" >滚动广告管理</a></li>
					</ul>
					
					<!-- 图片设置 -->
						<h3>
							<span class="label label-primary">备用图片</span>
						</h3>
						<div style="width: 50%;float: left;padding: 0px;" class="well">
						
							<iframe src="/meilishuo/mls/becrol/goodsinfo/imgs?imgid=img_main" id="imgchoose" name="imgchoose" style="width: 100%;height: 300px;border-radius:9px;border: 0px;"></iframe>
						
						</div>
						
						<div class="dv5" style="float: right;margin-top: -36px;">
						
							<h3>
								<span class="label label-primary">指定图片</span>
							</h3>
							
							<img id="img_main" style="box-shadow:0px 0px 0px gray;width: 400px;height: 200px;border-radius:26px;">
							
							<h3>
								<span class="label label-primary">填写路径</span>
							</h3>
						
							
							<div class="dv3" style="float: left;">
							
								<input type="text" name="adver.raurl" class="form-control" placeholder="设置广告访问路径">
							
							</div>
							
							<button class="btn btn-danger" style="float: left;margin-left: 20px;">提交</button>
							
						</div>
    			
    			</div>
    		
    		</form>
    		
    	</div>
  </body>
  
  
  
  
  <script type="text/javascript">
  
  
  (function(){
  	
  	$("").ready(function(){
  	
  		//页面根据分辨率进行适应性调制
	  	var sc_width=$(window).width();
	  	var sc_height=$(window).height();
	  	
	  	$(".container").width(sc_width*0.98);
	  	$(".container").height(sc_height*0.9);
	  	
	  	//表单提交事件  将图片包含的相关信息以隐藏域的方式提交发送
	  	$("#fm1").submit(function(){
	  	
	  		var val=$("#img_main").attr("value");
	  		
	  		var ipt="<input type='hidden' name='adver.raimg' value='"+val+"'>";
	  		
	  		$(this).append(ipt);
	  	
	  		return true;
	  	
	  	});
	  	
	  	
	  	
	  	
	  	
	  });
  
  })();
  
  
  
  </script>
  
  
</html>

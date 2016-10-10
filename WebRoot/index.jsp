<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE >
<html>
  <head>
   
    <title>美丽说——白领的全球购物</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">

	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/toolbar_right.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/top.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/main.css">
	
	

	<script type="text/javascript" src="/meilishuo/sysjs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/meilishuo/dist/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="/meilishuo/dist/sysjs/main.js"></script>
	
	
	<script type="text/javascript">
		(function(){
	  		//页面初始化操作
	  		$("").ready(function(){
	  			page_init();
	  			//好店推荐
	  			dv8_hover();
	  		});	
	  	})();
	</script>
	
  </head>
  
  <body>
    
    <div class="container">
    
    <!-- =====================上层div（登录注册以及个人中心，logo 搜索，导航）========================= -->
    <jsp:include page="/main/top.jsp"></jsp:include>
    
    <!-- =============================滚动广告	以及	主题导航部分=============================== -->
	<jsp:include page="/main/flow.jsp"></jsp:include>
    	

    
    
    <!-- ===================================页面主体======================================== -->
    <jsp:include page="/main/meirifashou.jsp"></jsp:include>
    
    <jsp:include page="/main/zhengzailiuxing.jsp"></jsp:include>
    
    <jsp:include page="/main/xinpinjingxuan.jsp"></jsp:include>
    	
    <jsp:include page="/main/mingxingtongkuan.jsp"></jsp:include>
    	
    <jsp:include page="/main/shishangmeizhuang.jsp"></jsp:include>
    	
    <jsp:include page="/main/hifaner.jsp"></jsp:include>
    
    <jsp:include page="/main/haodiantuijian.jsp"></jsp:include>
    
    <jsp:include page="/main/xindianjiadao.jsp"></jsp:include>
    
   
      
    
     
    <!-- ==================================底部信息========================================= -->
    <jsp:include page="/main/footer.jsp"></jsp:include>
   
    
    
    <!-- ================================右侧浮动菜单========================================= -->
    <jsp:include page="/main/toolbar_right.jsp"></jsp:include>
  </div>
    
  </body>
  
</html>

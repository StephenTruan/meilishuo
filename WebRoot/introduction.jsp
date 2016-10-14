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
		
		
	</style>

  </head>
  
  <body>
    <div class="container">
    	
	    <!-- =====================上层div（登录注册以及个人中心，logo 搜索，导航）========================= -->
	    <jsp:include page="/main/top2.jsp"></jsp:include>
		<!-- ================================右侧浮动菜单========================================= -->
	    <jsp:include page="/main/toolbar_right.jsp"></jsp:include>
	    
	  </div>
  </body>
  
  
  <script type="text/javascript">
  	(function(){
  	
  		$("").ready(function(){
  			
  		});
  	
  	
  	})();
  </script>
  
  
  
</html>

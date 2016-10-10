<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML >
<html>
  <head>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/css/bootstrap.css">
	<script type="text/javascript" src="/meilishuo/sysjs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/meilishuo/dist/js/bootstrap.min.js"></script>

  </head>
  
  <body>
    
	
	<cc:forEach items="${requestScope.infoes }" var="gd">
		
			<div>
			  <div class="col-lg-2">
			    <div class="thumbnail">
			      
			      	<img src="/meilishuo/imgs/tp/${gd.goodsimages[1].gimgurl }" >
			      
			      <div class="caption">
			        <h6>${gd.gdname }</h6>
			        <p>￥${gd.goodsprices[1].price }</p>
			        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			      </div>
			    </div>
			  </div>
			</div>
	</cc:forEach>
    
  </body>
</html>

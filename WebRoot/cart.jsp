<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML >
<html>
  <head>
    
    <title>购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/toolbar_right.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/top.css">
	<link rel="stylesheet" type="text/css" href="/meilishuo/dist/syscss/main.css">
	
	
	<script type="text/javascript" src="/meilishuo/sysjs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/meilishuo/dist/js/bootstrap.min.js"></script>

  </head>
  
  <body>
    
	<div class="container">
	
		<jsp:include page="/main/top3.jsp"></jsp:include>
		
		<cc:forEach items="${requestScope.cart2 }" var="item">
		
			<cc:set var="store" value="${item.key }"></cc:set>
			<cc:set var="orderinfo" value="${item.value }"></cc:set>
			
			<div class="col-lg-10 col-lg-offset-1">
				<div style="float: left;margin-left: 20;margin-top: 20px;" class="col-lg-12">
					<input type="checkbox">商家：${store.stname }
				</div>
				<cc:forEach items="${orderinfo.orderlists }" var="ol">
					<div class="col-lg-12 text-center" style="font-size: 12px;background-color: #fcfcfc;border: 1px solid #e6e6e6;height: 120px;padding-top: 20px;">
					
						<div style="float: left;margin: 20px;">
							<input type="checkbox">
						</div>
						
						<div class="col-lg-1">
							<div style="width: 80px;height: 80px;background-size:80px;background-image: url('/meilishuo/imgs/tp/${ol.goodsinfo.goodsimages[1].gimgurl}')">
							</div>
						</div>
						
						<div class="col-lg-2 text-center">
							${ol.goodsinfo.gdname }
						</div>
						
						<div class="col-lg-2 text-center">
							${ol.goodsinfo.goodsprices[1].price }
						</div>
						
						<div class="col-lg-2 text-center">
							数量
						</div>
						
						<div class="col-lg-2 text-center">
							小计
						</div>
						
						<div class="col-lg-2 text-center">
							操作
						</div>
						
					</div>
				</cc:forEach>
			</div>
		
		</cc:forEach>
		
		
		
	</div>
  </body>
</html>

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
    		<a href=""><i class="glyphicon glyphicon-user" style="color: "></i>&nbsp;&nbsp;&nbsp;美丽说会员</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-file" style="color: "></i>&nbsp;&nbsp;&nbsp;我的订单</a>
    	</div>
    	<div class="pull-right">
    		<a href=""><i class="glyphicon glyphicon-shopping-cart" style="color: #ff6699;"></i>&nbsp;&nbsp;&nbsp;帮我的购物车</a>
    	</div>
    	
    	
    	<cc:if test="${sessionScope.activeUser==null }">
    		<div class="pull-right">
	    		<a href="/meilishuo/regedit.html">注册</a>
	    	</div>
	    	<div class="pull-right">
	    		<a href="javascript:return void(0);" id="bt_login2" data-toggle="modal" data-target=".bs-example-modal-lag">登录</a>
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
    			<a href="/meilishuo/mls/index/welcome" style="color: #535353;">
    			<img src="/meilishuo/imgs/logo_1.png" style="margin-top: 30px;">
    			<img src="/meilishuo/imgs/logo_2.png" style="margin-top: 30px;margin-left: 20px;">
    			</a>
    		</div>
    	</div>
    </div>
    
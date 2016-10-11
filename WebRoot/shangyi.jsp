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
		/**最外层容器 内部第一层div**/
		.container div{
			padding: 0px;
			margin-bottom: 0px;
		}
		.container a{text-decoration: none;color: #aaaaaa;}
		.container a:HOVER{color: #ff6699;}
		
		
		/**规格信息显示层**/
		#items{
			margin-top: 20px;
			font-size: 13px;
			color: #666666;
			border: 1px solid #e1e1e1;
			padding: 6px;
			padding-left: 20px;
			padding-right: 20px;
		}
		/**规格信息显示层  中的超链显示**/
		#items a{
			color: #666666;
			margin-left: 37px;
			float: left;
			margin-bottom: 2px;
		}
		#items a:HOVER{
			color: #ff6699;
		}
		
		/**规格信息单项显示 **/
		#items>div{
			border-bottom: 1px solid #e1e1e1;
			padding-top: 10px;
			padding-bottom: 10px;
		}
		
		/**'更多筛选'  按钮样式**/
		#choose{background-color: #ffffff;text-align: center;width: 100px;height: 30px;position: absolute;border: 1px solid #e1e1e1;border-top: 0px;}
		
		.choosemore_box{float: left;border: 1px solid #e1e1e1;width: 15px;height: 15px;background-color: #ffffff;margin-top: 1px;margin-right: 3px;}
		.choosemore_box i{float: left;font-size: 12px;color: #ffffff;margin-top: -1px;}
		.choosemore_box:HOVER {
			background-color: #ff6699;
		}
		
		.bt_choosemore{border: 0px;background-color: #ffffff;color: #666666;margin-left: 30px;margin-bottom: 10px;}
		
		
		.item_checked{border-radius: 0px;line-height: 22px;height: 22px;padding-top: 0px;font-size: 13px;}
		.item_checked:HOVER{background-color: #ffffff;border-color: #ff6699;}
		
		
		
	</style>

  </head>
  
  <body>
    <div class="container">
    
	    <!-- =====================上层div（登录注册以及个人中心，logo 搜索，导航）========================= -->
	    <jsp:include page="/main/top.jsp"></jsp:include>
		<!-- ================================右侧浮动菜单========================================= -->
	    <jsp:include page="/main/toolbar_right.jsp"></jsp:include>
	    
	    
	    <!-- ===================================页面主体======================================== -->
	  	
	  	
	  	<div class="col-lg-10 col-lg-offset-1" style="margin-top: 20px;">
	  		<cc:forEach items="${sessionScope.items_checked }" var="item_checked">
	  			<a class="btn btn-default item_checked" href="/meilishuo/mls/crol/mainAction/getInfoes?itemkey_checked=${fn:split(item_checked.key,':')[0] }&critera_propertyname_remove=${fn:split(item_checked.key,',')[1] }">${fn:split(item_checked.key,",")[0] }<i class="glyphicon glyphicon-remove"></i></a>
	  		</cc:forEach>
	  		${fn:length(requestScope.infoes) }
	  	</div>
	  	
	  	
	  	<%--规格显示  开始 --%>
	   	<div id="items" class="col-lg-10 col-lg-offset-1" >
	   		<cc:forEach items="${sessionScope.items }" var="item" varStatus="idx1">
	      
	      	<div class="col-lg-12" role="item">
	      		<div style="float: left;">${item.key }:</div>
	      		
	      		<cc:set var="size" value="0"></cc:set>
	      		
	      		<div style="float: left;width: 86%;" role="item_infoes">
	      			<cc:forEach items="${item.value }" var="info" varStatus="idx2">
	      				<cc:set var="size" value="${idx2.count }"></cc:set>
		      			<a href="/meilishuo/mls/crol/mainAction/getInfoes?itemkey=${item.key }&itemtext=${info.text }&critera_propertyname=${info.property_name }&critera_propertyvalue=${info.id }">${info.text }</a>
		      		</cc:forEach>
	      		</div>    
	      		 		
	      		<div style="float: left;" class=" pull-right">
	      		
	      			<cc:if test="${item.key!='类目' }">
	      				<button class="btn btn-xs btn-default" role="choose_more" >多选</button>
	      			</cc:if>
	      			
	      			<cc:if test="${size>12 }">
	      			<a style="float: right;" href="javascript:void(0)" role="show_more" close="0">
						更多<i class='glyphicon glyphicon-chevron-down'></i>
					</a>
	      			</cc:if>
	      			
	      		</div> 		
	      		 		
	      	</div>
	      	
	      </cc:forEach>
	   	</div><%--规格显示  结束 --%>
	    <br><br><br>
	    <div id="choose">
	    	<a id="more_items" style="font-size: 13px;" close="0" href="javascript:void">
	    		更多筛选<i class="glyphicon glyphicon-chevron-down"></i>
	    	</a>
	    </div>
	    
	     
	   
	    
	    
	   
	    <!-- ==================================底部信息========================================= -->
	    <jsp:include page="/main/footer.jsp"></jsp:include>
	  </div>
  </body>
  
  
  <script type="text/javascript">
  	(function(){
  	
  		$("").ready(function(){
  			
  			
  			//规格显示  每行（如类目、版型等）中的超链，默认情况下只显示前12个
  			$("[role='item_infoes']").find("a:gt(11)").addClass("hide");  			
  			//规格显示  默认情况下  只显示前四个
  			$("#items>div:gt(3)").addClass("hide");
  			//规格显示  可见的最后一行底层border为0px
  			$("#items>div:visible:last").css("border-bottom","0px");
  			//跟多选择按钮的位置调整
  			choose_flow();
  			
  			
  			
  			//显示每行规格（如衣长等）'更多'的超链
  			$("[role='show_more']").click(function(){
  				//状态判断是关闭
  				if($(this).attr("close")=="0"){
  					$(this).parent().prev("div").find("a:gt(11)").removeClass("hide");
  					$(this).html("收起<i class='glyphicon glyphicon-chevron-up'></i>");
  					//调节状态为打开状态
  					$(this).attr("close","1");
  				}
  				//状态判断是打开
  				else{
  					$(this).parent().prev("div").find("a:gt(11)").addClass("hide");
  					$(this).html("更多<i class='glyphicon glyphicon-chevron-down'></i>");
  					//收起'更多'按钮（如衣长等）并将其转换为超链
  					$("[role='bt_cancel']").click();
  					//调节状态为关闭状态
  					$(this).attr("close","0");
  				}
  				//跟多选择按钮的位置调整
  				choose_flow();
  				
  			});
  			
  			
  			//多选按钮事件
  			$("[role='choose_more']").click(function(){
  			
  				//定义'多选'按钮和'更多'按钮
  				var bt_choose_more=this;
  				var bt_show_more=$(this).parent().find("[role='show_more']");
  			
  				
  				//将每个按钮替换为超链并收起
  				$("[role='item_infoes']").each(function(){
  					$("[role='bt_cancel']").click();
  				});
  			
  			
  			
  			
  			
  				
  				//单独显示本层状态
  				$(bt_show_more).attr("close","0").click();
  				//将超链替换为相应的按钮
  				$(this).parent().prev("div").find("a").each(function(){
  					$(this).replaceWith("<button url='"+this.href+"' class='bt_choosemore' choosed='0'><div class='choosemore_box'><i class='glyphicon glyphicon-ok' ></i></div>"+$(this).html()+"</button>");
  				});
  				
  				
  				//为每一个按钮进行点击鼠标事件的设置
  				$(this).parent().prev("div").find(".bt_choosemore")
  				.click(function(){
  					
  					if($(this).attr("choosed")=="0"){
  					
  						$(this).mouseover();
  						$(this).attr("choosed","1");
	  					
	  					var bt_submit = $(this).parents("[role='item_infoes']").find("[role='bt_submit']");
	  					$(bt_submit).removeAttr("disabled");
	  					$(bt_submit).css("backgroundColor","#ff6699").css("color","#ffffff");
	  					
  					}else{
  					
  						$(this).mouseout();
  						$(this).attr("choosed","0");
  						if($(this).parent().find("[choosed='1']").size()==0){
  						
		  					var bt_submit = $(this).parents("[role='item_infoes']").find("[role='bt_submit']");
  							$(bt_submit).attr("disabled","disabled");
	  						$(bt_submit).css("backgroundColor","#dddddd").css("color","#666666");
  						}
  					}
  					
  					
  				})
  				.mouseover(function(){
  				
  					if($(this).attr("choosed")==1)
  						return;
  				
  					$(this).css("color","#ff6699");
  					$(this).find("div").css({'background':'#ff6699','border-color':'#ffffff'});
  				})
  				.mouseout(function(){
  				
  					if($(this).attr("choosed")==1)
  						return;
  				
  					$(this).css("color","#666666");
  					$(this).find("div").css({'background':'#ffffff','border-color':'#e1e1e1'});
  				});
  				
  				//添加多选的'提交'和'取消'按钮
  				$(this).parent().prev("div").append("<div class='col-lg-12 text-center'><button class='btn btn-xs' disabled='disabled' role='bt_submit' style='border-radius:0px;margin-top:10px;'>提交</button>&nbsp;&nbsp;<button class='btn btn-xs' style='border-radius:0px;margin-top:10px;' role='bt_cancel'>取消</button></div>");
  				
  				//'多选'按钮（自身）隐藏
  				$(bt_choose_more).hide();
  				
  				//为'取消'按钮添加事件
  				$("[role='bt_cancel']").click(function(){
  					$(this).parents("[role='item_infoes']").find(".bt_choosemore").each(function(){
  						
  						$(this).find("div").remove();
  						$(this).replaceWith("<a href='"+$(this).attr("url")+"' style='margin-left:37px;'>"+$(this).html()+"</a>")
  					});
  					 
  					$(this).parents("[role='item_infoes']").find("a:gt(11)").addClass("hide");
  					$(this).parent().remove();
  					$(bt_choose_more).show();
  					$(bt_show_more).attr("close","1").click();
  					
	  				choose_flow();
  				
  				}); 
  				
  				choose_flow();
  			});
  			
  			
  			//更多筛选事件  按钮点击事件
  			$("#more_items").click(function(){
  				if($(this).attr("close")=="0"){
  				
  					//规格显示  点击事件  全部显示
  					$("#items>div:gt(3)").removeClass("hide");
  					$(this).html("收起筛选<i class='glyphicon glyphicon-chevron-up'></i>");
  					$(this).attr("close","1")
  				}else{
  				
  					//规格显示  点击事件  只显示前四个
  					$("#items>div:gt(3)").addClass("hide");
   					$(this).html("更多筛选<i class='glyphicon glyphicon-chevron-down'></i>");
  					$(this).attr("close","0")
  				}
  				
 				//规格显示  除了最后一个其他的border为1px
				$("#items>div").css("border-bottom","1px solid #e1e1e1");
				//规格显示  可见的最后一行底层border为0px
  				$("#items>div:visible:last").css("border-bottom","0px");
  				//按钮跟随
  				choose_flow();
  			});
  			
  			
  			
  			//页面滚动事件
  			$(window).scroll(function(){
  				//更多筛选  按钮的位置调整
  				choose_flow();		
  			});
  			
  			
  			
  			//更多选择按钮的  默认位置调整
  			function choose_flow(){
  				$("#choose").css("top",$("#items").offset().top+$("#items").height()+12);
  				$("#choose").css("left",$("#items").offset().left+($("#items").width())/2-($("#choose").width())/2);
  			}
  		
  		
  		});
  	
  	
  	})();
  </script>
  
  
  
</html>

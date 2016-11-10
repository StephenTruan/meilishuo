<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- ============================================右侧购物车，客服信息=============================================== -->
    <div id="toolbar_right">
    	<button id="bt_showcart">
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

    
    
    <script type="text/javascript">
    
    	
    	$("#bt_showcart").click(function(){
    		window.location.href="/meilishuo/mls/crol/cart/tocart"
    	});
    	
    	
    	
    	
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
    </script>
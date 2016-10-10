<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    
    <script type="text/javascript">
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
    </script>
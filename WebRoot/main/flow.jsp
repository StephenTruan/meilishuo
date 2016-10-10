<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- ===================================滚屏广告部分================================================== -->
    
    <div class="col-lg-10 col-lg-offset-1" style="height: 500px;margin-top: -1px;" id="body_dv1">
    
    <!-- ===================================滚屏广告	左侧导航======================================== -->
    	
    	<div class="col-lg-3" style="height: 100%;width: 20%;z-index: 6;" id="body_dv1_left">
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;border-bottom: 1px dotted #cccccc;">
    				<h4>每日精选</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;border-bottom: 1px dotted #cccccc;">
    				<h4>2016流行</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;border-bottom: 1px dotted #cccccc;">
    				<h4>时尚经典</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;border-bottom: 1px dotted #cccccc;">
    				<h4>实穿百搭</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    		<div role="left_item_panel" class="col-lg-12" style="width: 100%;height: 20%;background-color: white;border-left: 1px solid #cccccc;">
    		
    			<div role="left_item" style="width: 75%;height: 100%;float: left;margin-left: 10%;">
    				<h4>百变轮廓</h4>
    				春季新品 甜美韩系 毛呢外套大衣 T恤
    			</div>
    			<div style="width: 6%;height: 100%;float: left;">
    				<i class="glyphicon glyphicon-chevron-right" style="margin-top: 40px;color: #cccccc;"></i>
    			</div>
    		
    		</div>
    	
    	
    	</div>
    	
    	
    	    <!-- ===================================右侧滚动======================================== -->
    	<div class="col-lg-9 bg-danger" style="height: 72%;width: 80%;">
    		
    		<%@ include file="well.jsp" %>
    	
    	</div>
    	
    <!-- ===================================右侧下方主题======================================== -->
    	<div class="col-lg-9" id="body_dv1_bottom">
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (1).jpg">
    		</div>
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (2).jpg">
    		</div>
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (3).jpg">
    		</div>
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (4).jpg">
    		</div>
    		<div>
    			<img alt="" src="/meilishuo/imgs/ggzt (5).jpg">
    		</div>
    	</div>
    </div>
    
    <script type="text/javascript">
    	//滚动广告	左侧导航	默认样式调整
  		$("#body_dv1_left>div").css("border-right","1px solid #cccccc").last().css("border-bottom","1px solid #cccccc");
  		$("[role=left_item]").css("color","#ff6699");
  		
  		$("[role=left_item]").mouseover(function(){
  			$(this).css({"border":"0px"});
  			$(this).parent().css({"border-top":"1px solid #cccccc","border-bottom":"1px solid #cccccc","border-right":"0px solid #cccccc"});
  			$(this).parent().prev().children("[role=left_item]").css({"border":"0px"});
  			
  			$(".left_item_list").remove();
  			var left_item_list="<div class='left_item_list'></div>";
  			$("body").append(left_item_list);
  			$(".left_item_list").css("top",$(this).offset().top-1);
  			$(".left_item_list").css("left",($(this).parent().offset().left+$(this).parent().width())-2);
  			$(".left_item_list").css("height",($(this).parent().height())+2);
  			
  			$(".left_item_list").mouseout(function(evt){
	  			if(evt.pageX>$(this).offset().left){
	  				$(this).remove();
	  			}
  				
  			});
  			
  		});
  		
  		
  		
  		$("[role=left_item_panel]").mouseout(function(evt){
  			if(evt.pageX<$(this).offset().left){
  				$(".left_item_list").remove();
  			}
  		});
  		
  		
  		
  		$("[role=left_item]").mouseout(function(){
  		
  			$(this).css({"border-bottom":"1px dotted #cccccc"});
  			$(this).parent().css({"border-top":"0px solid #cccccc","border-bottom":"0px solid #cccccc","border-right":"1px solid #cccccc"});
  			$(this).parent().prev().children("[role=left_item]").css({"border-bottom":"1px dotted #cccccc"});
  			
  		});
  		
  		$("[role=left_item]:last").mouseout(function(){
  		
  			$(this).css({"border":"0px"});
  			$(this).parent().css({"border-top":"0px solid #cccccc","border-bottom":"1px solid #cccccc","border-right":"1px solid #cccccc"});
  			$(this).parent().prev().children("[role=left_item]").css({"border-bottom":"1px dotted #cccccc"});
  		});
    </script>
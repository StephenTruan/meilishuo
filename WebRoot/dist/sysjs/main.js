
//用于首页布局的方法
function page_init(){
	/**页面样式加载**/
	$("#body_dv1_bottom>div").addClass("cl-lg-2 bg-primary pull-right body_dv1_bottom_item");
	$("#body_dv2>div").addClass("col-lg-4 body_dv2_item");
	$("#body_dv2>div:last").css("margin-right","0px");
	$("#body_dv3>div").addClass("col-lg-2 bg-danger body_dv3_item");
	$("#body_dv3>div:last").css("margin-right","0px");
	$("#body_dv4>div").addClass("col-lg-2 bg-danger body_dv4_item");
	$("#body_dv5>div").addClass("col-lg-4 bg-danger body_dv5_item").last().css("margin-right","0px");
	$("#body_dv6>div").addClass("col-lg-4 bg-danger body_dv6_item").last().css("margin-right","0px");
	$("#body_dv7>div").addClass("col-lg-4 bg-danger body_dv7_item").last().css("margin-right","0px");
	$("#body_dv8>div").addClass("col-lg-4 bg-danger body_dv8_item").last().css("margin-right","0px");
	$("#body_dv9>div").addClass("col-lg-2 bg-danger body_dv9_item");
	
	
	$("#body_dv4 div").each(function(i){
		if(i==4||i==9){
			$(this).css("margin-right","0px");
		}
	});
	$("#body_dv9 div").each(function(i){
		if(i==4||i==9||i==14){
			$(this).css("margin-right","0px");
		}
	});
}
  		

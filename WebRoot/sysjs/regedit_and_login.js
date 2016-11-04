/**
 * 用于用户注册和登录页面表单组件非空验证的方法
 * @param ipt 被验证的组件
 * @param iptdv 绑定组件提示文字的div
 * @param txt 需要显示的提示文字
 * @returns {Boolean} true：表示为空值
 */
function isNull(ipt, iptdv, txt){
	$(iptdv).html("");
	$(ipt).parent().find("i").remove();
	if($(ipt).val()==""){
		$(iptdv).html(txt);
		$(ipt).after("<i class='glyphicon glyphicon-minus-sign' style='position: absolute;right: -22px;top: 10px;font-size: 16px;color: #ff6699;' ></i>");
		return true;
	}
	return false;
}
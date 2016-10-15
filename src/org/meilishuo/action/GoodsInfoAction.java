package org.meilishuo.action;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.meilishuo.entity.Goodsinfo;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Namespace(value = "/mls/crol/goodsinfoAction")
@Results(value = {
		@Result(name = "infoes", location = "/goods.jsp"),
		@Result(name = "introduction", location = "/introduction.jsp") 
		})
public class GoodsInfoAction extends BaseAction {
	
	private Goodsinfo goodsinfo;
	
	

	@Action(value="showInfo")
	public String getInfo(){
		
		goodsinfo = (Goodsinfo) getService().getInfoByID(this.getKey(), goodsinfo.getGdid());
		
		return "introduction";
	
	}
	
	
	
	
	
	/**============================================================================**/
	
	@Override
	public String getKey() {
		// TODO Auto-generated method stub
		return this.getService().GOODSINFO;
	}

	@Override
	public List getBatch_list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable getEntity() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Goodsinfo getGoodsinfo() {
		return goodsinfo;
	}
	public void setGoodsinfo(Goodsinfo goodsinfo) {
		this.goodsinfo = goodsinfo;
	}

	
}

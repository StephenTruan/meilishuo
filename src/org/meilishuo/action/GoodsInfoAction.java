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
		@Result(name = "infoes", location = "/goods.jsp") 
		})
public class GoodsInfoAction extends BaseAction {
	
	@Action(value="getInfo")
	public String getInfo(){
		
		List<Goodsinfo> infoes = getService().getInfoByPageNum(getKey(), 1, 10);
		
		Map<String, Object> mp = (Map<String, Object>) ActionContext.getContext().get("request");
		mp.put("infoes", infoes);
		
		return "infoes";
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
	
}

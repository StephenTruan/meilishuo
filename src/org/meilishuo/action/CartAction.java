package org.meilishuo.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.meilishuo.entity.Areainfo;
import org.meilishuo.entity.Goodsinfo;
import org.meilishuo.entity.Orderinfo;
import org.meilishuo.entity.Orderlist;
import org.meilishuo.entity.Storeinfo;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
/**
 * 用于购物车操作的action
 * @author Administrator
 *
 */
@Controller
@Namespace(value = "/mls/crol/cart")
@ParentPackage("struts-default")
@Results(value = {
		
		@Result(location="/cart.jsp",name="toshowcart")
		
		})
@Lazy(true)
public class CartAction extends BaseAction {
	
	private Orderlist orderlist;
	
	
	
/*================================================ACTION============================================================*/
	
	@Action(value="changect")
	public void changeCount() throws IOException{
		
		int gdid = orderlist.getGoodsinfo().getGdid();
		
		int count = orderlist.getGdcount();
		
		Map<Integer, Orderlist> cart = (Map<Integer, Orderlist>) ActionContext.getContext().getSession().get("cart");
		
		if(cart.containsKey(gdid)){
			
			Orderlist ol = cart.get(gdid);
			
			if(count == 0){
				
				cart.remove(gdid);
				
			}else{
				
				ol.setGdcount(count);
				
			}
			
			HttpServletResponse response = ServletActionContext.getResponse();
			PrintWriter out = response.getWriter();
			out.print(count);
			out.flush();
			out.close();
			
		}
		
	}
	
	
	
	@Action(value="tocart")
	public String showCart(){
		
		Map<Integer, Orderlist> cart = (Map<Integer, Orderlist>) ActionContext.getContext().getSession().get("cart");
		
		Set<Integer> storeinfo = new LinkedHashSet<Integer>();
		
		Collection<Orderlist> values = cart.values();
		
		for (Orderlist ol : values) {
			storeinfo.add(ol.getGoodsinfo().getStoreinfo().getStid().intValue());
		}
		
		Map<Storeinfo, Orderinfo> mp = new LinkedHashMap<Storeinfo, Orderinfo>();
		
		for (Integer stid : storeinfo) {
			
			Orderinfo oinfo = new Orderinfo();
			
			Set<Orderlist> ols = new LinkedHashSet<Orderlist>();
			
			for (Orderlist o : values) {
				if(o.getGoodsinfo().getStoreinfo().getStid().intValue() == stid.intValue()){
					ols.add(o);
				}
			}
			
			oinfo.setOrderlists(ols);
			
			Storeinfo sinfo = (Storeinfo) getService().getInfoByID(getService().STOREINFO, stid);
			
			mp.put(sinfo, oinfo);
			
		}
		
		Map<String, Object> rmp = (Map<String, Object>) ActionContext.getContext().get("request");
	
		rmp.put("cart2", mp);
		
		return "toshowcart";
	}
	
	
	
	@Action(value="intocart")
	public void putIntoCart() throws IOException{
		
		Map<Integer, Orderlist> cart = (Map<Integer, Orderlist>) ActionContext.getContext().getSession().get("cart");
		
		if(cart == null){
			
			cart = new LinkedHashMap<Integer, Orderlist>();
			ActionContext.getContext().getSession().put("cart", cart);
			
		}
		
		if(!cart.containsKey(orderlist.getGoodsinfo().getGdid().intValue())){
			
			Goodsinfo goodsinfo = (Goodsinfo) getService().getInfoByID(getService().GOODSINFO, orderlist.getGoodsinfo().getGdid());
			orderlist.setGoodsinfo(goodsinfo);
			cart.put(orderlist.getGoodsinfo().getGdid().intValue(), orderlist);
			
		}
		else{
			
			Orderlist ol = cart.get(orderlist.getGoodsinfo().getGdid().intValue());
			ol.setGdcount(orderlist.getGdcount()+ol.getGdcount());
			
		}
		
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = response.getWriter();
		out.print(cart.size());
		out.flush();
		out.close();
		
		
	}
	
/*===================================================================================================================*/
	
	@Override
	public String getKey() {
		// TODO Auto-generated method stub
		return null;
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

	public Orderlist getOrderlist() {
		return orderlist;
	}

	public void setOrderlist(Orderlist orderlist) {
		this.orderlist = orderlist;
	}

	
}

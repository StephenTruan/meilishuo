package org.meilishuo.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
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
import org.meilishuo.entity.Userinfo;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import sun.jdbc.odbc.OdbcDef;

import com.opensymphony.xwork2.ActionContext;
/**
 * 用于地区数据获取的action
 * @author Administrator
 *
 */
@Controller
@Namespace(value = "/mls/crol/orderinfo")
@ParentPackage("struts-default")
@Results(value = {
		@Result(location="/index.jsp",name="index")
		})
@Lazy(true)
public class OrderInfoAction extends BaseAction {
	
	private int[] orderlist;
	
	private String address;
	private String recipient;
	private String contactnumber;
	
	
/**====================================ACTION========================================**/
	
	@Action(value="mkorderinfoes")
	public String makeOderInfo(){
		
		Set<Orderlist> ols = new HashSet<Orderlist>();
		
		Map<Integer, Orderlist> cart = (Map<Integer, Orderlist>) ActionContext.getContext().getSession().get("cart");
		
		Map<Integer, Orderinfo> orderinfoMp = new HashMap<Integer, Orderinfo>();
		
		Userinfo user = (Userinfo) ActionContext.getContext().getSession().get("activeUser");
		
		for (Integer gdid : orderlist) {
			
			Orderlist ol = cart.get(gdid);
			
			ol.setPrice(ol.getGoodsinfo().getGoodsprices().get((long)1).getPrice());
			
			int stid = ol.getGoodsinfo().getStoreinfo().getStid();
			
			if(!orderinfoMp.containsKey(stid)){
				
				Orderinfo orderinfo = new Orderinfo();
				
				orderinfo.setStoreinfo(ol.getGoodsinfo().getStoreinfo());
				orderinfo.setUserinfo(user);
				orderinfo.setAddress(address);
				orderinfo.setRecipient(recipient);
				orderinfo.setContactnumber(contactnumber);
				orderinfo.setOfstate(1);
				orderinfo.setOfdate(new Timestamp(System.currentTimeMillis()));
				
				Set<Orderlist> sts = new HashSet<Orderlist>();
				
				orderinfo.setOrderlists(sts);
				
				orderinfoMp.put(stid, orderinfo);
				
			}
			
			orderinfoMp.get(stid).getOrderlists().add(ol);
			
		}
		
		boolean ok = false;
		
		try {
			ok = getService().mkOrderInfores(orderinfoMp.values());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(ok);
		
		return "index";
	}
	
	
/**==================================================================================**/
	
	@Override
	public String getKey() {
		// TODO Auto-generated method stub
		return this.getService().ORDERINFO;
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

	public int[] getOrderlist() {
		return orderlist;
	}

	public void setOrderlist(int[] orderlist) {
		this.orderlist = orderlist;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public String getContactnumber() {
		return contactnumber;
	}

	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}
	
}

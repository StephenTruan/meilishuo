package org.meilishuo.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Results;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.meilishuo.entity.Userinfo;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Namespace(value = "/mls/crol/log")
@Results(value = {
			
		})
@Lazy(true)
public class LogAction extends BaseAction {

	private String identifyKey;
	
	private Userinfo userinfo;
	
	
	
	/**
	 * 用户登录
	 * @throws IOException
	 */
	@Action(value="dologin")
	public void login() throws IOException{
		
		userinfo = getService().login(userinfo);
		
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = response.getWriter();
		
		//数据库检索有效
		if(userinfo!=null){
			//用户有效但被锁定
			if(userinfo.getUflocked()!=1){
				out.print(-1);
			}
			//用户状态正常，登录成功
			else{
				//将用户信息作为session作用域的属性（attribute）保存
				ActionContext.getContext().getSession().put("activeUser", this.userinfo);
				out.print(1);
			}	
			
		}
		//用户检索无效（用户名或密码不正确）
		else{
			out.print(0);
		}
		
		out.flush();
		out.close();
	}
	
	

	/**
	 * 判断验证码是否正确的
	 * @throws IOException
	 */
	@Action(value="isnormal")
	public void isNormal() throws IOException{
		
		Map<String, Object> sessionMap = ActionContext.getContext().getSession();
		Map<String, Integer> imgs = (Map<String, Integer>) sessionMap.get("identifyCode");
		
		Collection<Integer> values = imgs.values();
		int ok = 1;
		for (Integer value : values) {
			if(value != 360) {
				ok = 0;
				break;
			}
		}
		
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = response.getWriter();
		out.print(ok);
		out.flush();
		out.close();
	}
	
	
	
	
	/**
	 * 通过页面点击提请ajax操作，实现具体图片角度的变化
	 * @throws JSONException
	 * @throws IOException
	 */
	@Action(value="doIdentify")
	public void doIdentify() throws JSONException, IOException{
		Map<String, Object> sessionMap = ActionContext.getContext().getSession();
		Map<String, Integer> imgs = (Map<String, Integer>) sessionMap.get("identifyCode");
		
		if(imgs.containsKey(this.identifyKey)){
			int value = imgs.get(identifyKey);
			value+=90;
			if(value>360)
				value=90;
			imgs.put(identifyKey, value);
			
			JSONObject data = new JSONObject();
			data.put("key", this.identifyKey);
			data.put("value", value);
			
			
			HttpServletResponse response = ServletActionContext.getResponse();
			PrintWriter out = response.getWriter();
			out.print(data);
			out.flush();
			out.close();
		}
		
		
		
	}
	
	
	
	/**
	 * 响应页面ajax请求，返回验证码图片以及图片transform初始化角度数值的json对象
	 * @throws JSONException
	 * @throws IOException
	 */
	@Action(value="identify")
	public void getIdentifyCode() throws JSONException, IOException{
		Map<String, Integer> imgs = getService().getIdentifyCode();
		Map<String, Object> sessionMap = ActionContext.getContext().getSession();
		//放入session作用域，以保证多个请求直接状态稳定
		sessionMap.put("identifyCode", imgs);
		
		JSONArray data = new JSONArray();
		Set<String> kesy = imgs.keySet();
		for (String key : kesy) {
			JSONObject img = new JSONObject();
			img.put("key", key);
			img.put("value", imgs.get(key));
			
			data.put(img);
		}
		
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = response.getWriter();
		out.print(data);
		out.flush();
		out.close();
	}
	
	
	
	//==================================================================================
	
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
	
	public String getIdentifyKey() {
		return identifyKey;
	}
	public void setIdentifyKey(String identifyKey) {
		this.identifyKey = identifyKey;
	}
	public Userinfo getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}
	
}

package org.meilishuo.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.meilishuo.entity.Userinfo;
import org.meilishuo.entity.Usertypeinfo;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Namespace(value = "/mls/crol/regedit")
@Results(value = {
			@Result(name="login",location="/login.html",type="redirect"),
			@Result(name="login2",location="/login2.html",type="redirect")
		})
@Lazy(true)
public class RegeditAction extends BaseAction {

	private Userinfo userinfo;
	
	
	
	@Action(value="doregedit")
	public String doRegedit(){
		
		
		userinfo.setUflocked(1);
		userinfo.setUflogdate(new Timestamp(System.currentTimeMillis()));
		
		Usertypeinfo usertypeinfo = new Usertypeinfo();
		usertypeinfo.setUtid(2);
		userinfo.setUsertypeinfo(usertypeinfo);
		
		getService().insert_batch(getService().USERINFO, this.userinfo);
		
		return "login";
	}
	
	@Action(value="doregedit2")
	public String doRegedit2(){
		
		
		userinfo.setUflocked(1);
		userinfo.setUflogdate(new Timestamp(System.currentTimeMillis()));
		
		Usertypeinfo usertypeinfo = new Usertypeinfo();
		usertypeinfo.setUtid(2);
		userinfo.setUsertypeinfo(usertypeinfo);
		
		getService().insert_batch(getService().USERINFO, this.userinfo);
		
		return "login2";
	}
	
	
	
	/**
	 * 判断手机号码或用户名是否已经被注册使用
	 * @throws IOException 
	 */
	@Action(value="exists")
	public void isExists() throws IOException{
		
		Map<String, Object> sessionMap = ActionContext.getContext().getSession();
		Map<String, Integer> imgs = (Map<String, Integer>) sessionMap.get("identifyCode");
		
		boolean ok = false;
		//判断手机号是否唯一
		if(userinfo.getUfnum()!=null&&userinfo.getUflogname()==null){
			ok = getService().isExists_Number(userinfo.getUfnum());
		}
		//判断用户名是否唯一
		else if(userinfo.getUfnum()==null&&userinfo.getUflogname()!=null){
			ok = getService().isExists_Logname(userinfo.getUflogname());
		}
		
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = response.getWriter();
		if(ok){
			out.print(1);
		}else{
			out.print(0);
		}
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
	
	
	public Userinfo getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}
	
}

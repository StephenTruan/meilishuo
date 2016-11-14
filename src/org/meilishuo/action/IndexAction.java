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
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.meilishuo.entity.Areainfo;
import org.meilishuo.entity.Goodsinfo;
import org.meilishuo.entity.Rollingadvertisement;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
/**
 * ��ҳ��ʾaction
 * @author Jianchuan
 *
 */
@Controller
@Namespace(value = "/mls/index")
@ParentPackage("struts-default")
@Results(value = {
		@Result(name="toindex",location="/index.jsp")
		})
@Lazy(true)
public class IndexAction extends BaseAction {

	/**
	 * ������ת����ҳ��
	 * @return
	 */
	@Action(value="welcome")
	public String toIndex(){
		
		//��ȡ������������3����¼
		List<Rollingadvertisement> data = getService().getTop3RollingAdvertisement();
		
		//���������������Եķ�ʽ���͵���ҳ
		Map<String, Object> mp = (Map<String, Object>) ActionContext.getContext().get("request");
		
		mp.put("radvs", data);
		
		return "toindex";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* ====================================================================== */
	
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
	
	
}
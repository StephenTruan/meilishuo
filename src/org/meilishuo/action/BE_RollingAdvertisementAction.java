package org.meilishuo.action;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
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
import org.meilishuo.entity.Goodsimage;
import org.meilishuo.entity.Goodsinfo;
import org.meilishuo.entity.Goodsprice;
import org.meilishuo.entity.Rollingadvertisement;
import org.meilishuo.entity.Specifications;
import org.meilishuo.entity.Storeinfo;
import org.meilishuo.entity.Typeinfo;
import org.meilishuo.webtool.Item;
import org.meilishuo.webtool.ItemList;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.sun.org.apache.bcel.internal.generic.ATHROW;
/**
 * 用于商品信息维护的后台
 * @author JianchuanWu
 *
 */
@Controller
@Namespace(value = "/mls/becrol/rollingadv")
@ParentPackage("struts-default")
@Results(value = {
			
		})
@Lazy(true)
public class BE_RollingAdvertisementAction extends BaseAction {
	
	private Rollingadvertisement adver;
	
	private String imgid;
	
	
	/*===========================================ACTION===================================================*/
	
	/**
	 * 添加滚动广告图片信息
	 * @return
	 * @throws IOException 
	 */
	@Action(value="doinsert")
	public String insertGoodsInfo() throws IOException{
		
		
			
			/**
			 * 复制upload文件夹下的对应图片到imgs/tp当中
			 */
			
			//获取upload文件夹路径
			String path_src = ServletActionContext.getServletContext().getRealPath("/upload");
			//获取图片真正保存地点的文件夹路径
			String path_target = ServletActionContext.getServletContext().getRealPath("/imgs/rolladv");
			
			path_src+=File.separator+adver.getRaimg();
			path_target+=File.separator+adver.getRaimg();
			
			//将目标文件复制到图片真正保存地点路径下
			FileUtils.copyFile(new File(path_src), new File(path_target));
			
			//设置添加时间
			adver.setRadate(new Timestamp(System.currentTimeMillis()));
		
		
		getService().insert_batch(getService().ROLLINGADVERTISEMENT, adver);
		System.out.println(">>>>>>>>>>>>>>>>滚动广告信息添加成功>>>>>>>>>>>>>>>>>>>>>>");
		
		return null;
	}
	
	
	
	
	/**============================================================================**/
	
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




	public String getImgid() {
		return imgid;
	}


	public void setImgid(String imgid) {
		this.imgid = imgid;
	}



	public Rollingadvertisement getAdver() {
		return adver;
	}



	public void setAdver(Rollingadvertisement adver) {
		this.adver = adver;
	}



	
}

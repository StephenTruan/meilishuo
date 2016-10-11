package org.meilishuo.action;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.meilishuo.entity.Goodsinfo;
import org.meilishuo.entity.Typeinfo;
import org.meilishuo.mdservice.ModelService;
import org.meilishuo.webtool.ItemList;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Namespace(value = "/mls/crol/mainAction")
@ParentPackage("struts-default")
@Results(value = {
		@Result(name = "infoes", location = "/shangyi.jsp") 
		})
@Lazy(true)
public class MainAction extends BaseAction {
	//显示规格  key
	private String itemkey;
	//已被选中规格 key
	private String itemkey_checked;
	
	//规格文本
	private String itemtext;
	
	
	//筛选条件（属性名称）
	private String critera_propertyname;
	//筛选条件（属性值）
	private String critera_propertyvalue;
	
	//被取消的筛选条件（属性名称）
	private String critera_propertyname_remove;
	
	private Typeinfo typeinfo;
	
	
	
	@Resource(name="specificationMap")
	private Map<String, ItemList> specificationMap;
	
	
	
	
	public Typeinfo getTypeinfo() {
		return typeinfo;
	}
	public void setTypeinfo(Typeinfo typeinfo) {
		this.typeinfo = typeinfo;
	}
	public Map<String, ItemList> getSpecificationMap() {
		return specificationMap;
	}
	public void setSpecificationMap(Map<String, ItemList> specificationMap) {
		this.specificationMap = specificationMap;
	}
	public String getCritera_propertyname_remove() {
		return critera_propertyname_remove;
	}
	public void setCritera_propertyname_remove(String critera_propertyname_remove) {
		this.critera_propertyname_remove = critera_propertyname_remove;
	}
	public String getCritera_propertyvalue() {
		return critera_propertyvalue;
	}
	public void setCritera_propertyvalue(String critera_propertyvalue) {
		this.critera_propertyvalue = critera_propertyvalue;
	}
	public String getCritera_propertyname() {
		return critera_propertyname;
	}
	public void setCritera_propertyname(String critera_propertyname) {
		this.critera_propertyname = critera_propertyname;
	}
	public String getItemtext() {
		return itemtext;
	}
	public void setItemtext(String itemtext) {
		this.itemtext = itemtext;
	}
	public String getItemkey() {
		return itemkey;
	}
	public void setItemkey(String itemkey) {
		this.itemkey = itemkey;
	}

	public String getItemkey_checked() {
		return itemkey_checked;
	}
	public void setItemkey_checked(String itemkey_checked) {
		this.itemkey_checked = itemkey_checked;
	}




	/**===================================动作=========================================
	 * @throws UnsupportedEncodingException **/
	@Action(value="getInfoes")
	public String showGoodsInfoes() throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException, UnsupportedEncodingException{
		
		
		if(typeinfo!=null){
			typeinfo=(Typeinfo) getService().getInfoByID(getService().TYPEINFO, typeinfo.getTpid());
			System.out.println(typeinfo.getTpname());
			System.out.println(typeinfo.getSpecificationses());
		}
		
		
		if(1>0)
			return null;
		
		
		
		//负责收集规格选项的容器  从session作用域获取------>规格容器
		Map<String, List> items = (Map<String, List>) ActionContext.getContext().getSession().get("items");
		
		
		//如果不存在则从数据库提取相关规格数据
		if(items==null){
//			List list_typeinfo = new ItemList("Tpid", "Tpname", "typeinfo.tpid", getService().getInfoByProperties(ModelService.TYPEINFO, Restrictions.eq("tpparentid", 1)));
//			List list_clothingSize = new ItemList("Csid", "Csname", "csid", getService().getInfoByProperties(ModelService.CLOTHINGSIZE, Restrictions.eq("tpid", 1)));
//			List list_clothingCollat = new ItemList("Ccid", "Cctext", "ccid", getService().getInfoByProperties(ModelService.CLOTHINGCOLAR, Restrictions.eq("tpid", 1)));
//			List list_clothingTypeversion = new ItemList("Ctid", "Cttext", "ctid", getService().getInfoByProperties(ModelService.CLOTHINGTYPEVERSION, Restrictions.eq("tpid", 1)));
//			List list_clothingElement = new ItemList("Ceid", "Cetext", "ceid", getService().getInfoByProperties(ModelService.CLOTHINGELEMENT, Restrictions.eq("tpid", 1)));
//			
//			items = new LinkedHashMap<String, List>();
//			
//			items.put("类目", list_typeinfo);
//			items.put("版型", list_clothingTypeversion);
//			items.put("衣长", list_clothingSize);
//			items.put("领型", list_clothingCollat);
//			items.put("元素", list_clothingElement);
//			
//			ActionContext.getContext().getSession().put("items", items);
//			
		}
		
		//收集 已选的规格显示选项 的容器，从session作用域获取------->已选容器
		Map<String, List> items_checked = (Map<String, List>) ActionContext.getContext().getSession().get("items_checked");
		
		//如果  已选容器   不存在则创建
		if(items_checked==null){
			
			items_checked = new LinkedHashMap<String, List>();
			
			ActionContext.getContext().getSession().put("items_checked", items_checked);
			
		}
		
		//点击单项（如类目中的单项、版型中的单项）可将itemkey传过来   
		if(itemkey!=null){
			
			//将itemkey的value放入到  已选容器    同时从  规格容器  中删除
			items_checked.put(itemkey+":"+itemtext+","+critera_propertyname, items.remove(itemkey));
			
		}
		
		//点击  已选出的规格（按钮）  
		if(itemkey_checked!=null){
			
			Set<String> keys = items_checked.keySet();
			
			for (String k : keys) {
				if(k.indexOf(itemkey_checked)!=-1){
					//将其放入到  规格容器    同时从  已选容器  中删除
					items.put(itemkey_checked, items_checked.remove(k));
					
					String ck = k.split(",")[1];
					Map mp = (Map) ActionContext.getContext().getSession().get("criteriaMap");
					mp.remove(ck);
					
					break;
				}
			}
			
			
			
		}
		
		
		//用于条件筛选的Criterion
		Criterion criterion = null;
		
		//添加筛选项
		if(this.critera_propertyname != null || critera_propertyname_remove != null){
			
			Map criteriaMap = (Map) ActionContext.getContext().getSession().get("criteriaMap");
			if(criteriaMap == null){
				criteriaMap = new LinkedHashMap();
				ActionContext.getContext().getSession().put("criteriaMap",criteriaMap);
				
			}
			criteriaMap.put(critera_propertyname, new Integer(critera_propertyvalue));
			criterion = Restrictions.allEq(criteriaMap);
		}
		else if(critera_propertyname_remove != null){
			Map criteriaMap = (Map) ActionContext.getContext().getSession().get("criteriaMap");
			
			criteriaMap.remove(critera_propertyname_remove);
			criterion = Restrictions.allEq(criteriaMap);
			
			if(criteriaMap.size() == 0){
				List<Typeinfo> types = getService().getInfoByProperties(getService().TYPEINFO, Restrictions.eq("tpparentid", 1));
				
				criterion = Restrictions.in("typeinfo", types);
			}
		}else{
			List<Typeinfo> types = getService().getInfoByProperties(getService().TYPEINFO, Restrictions.eq("tpparentid", 1));
			
			criterion = Restrictions.in("typeinfo", types);
		}
		
		List<Goodsinfo> infoes = getService().getInfoByProperties(getService().GOODSINFO, criterion);
		
		Map<String, Object> map = (Map<String, Object>) ActionContext.getContext().get("request");
		
		map.put("infoes", infoes);
		
		
		
		return "infoes";
	}
	
	
	
	
	/**============================================================================**/
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

}

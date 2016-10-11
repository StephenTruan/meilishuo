package org.meilishuo.webtool;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.meilishuo.interfaces.DAO;

/**
 * 封装相应的规格或其他数据，以达到固定形式的数据提取显示（id，text 等）
 * @author Administrator
 * @param <T>
 *
 */
public class ItemList<T> extends ArrayList {
	
	private Class type;
	
	private DAO dao;
	
	private Method method_id;
	private Method method_text;
	
	private String property;
	
	private String eq;
	
	private SessionFactory  sessionFactory;
	
	
	
	public String getEq() {
		return eq;
	}
	public void setEq(String eq) {
		this.eq = eq;
	}
	public DAO getDao() {
		return dao;
	}
	public void setDao(DAO dao) {
		this.dao = dao;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	
	public ItemList(){
		
	}
	public ItemList(Class type, String id, String text) throws Exception{
		this.method_id = type.getDeclaredMethod("get"+id);
		this.method_text = type.getDeclaredMethod("get"+text);
		this.type = type;
	}
	public ItemList(Class type, String id, String text, String property) throws Exception{
		this(type, id, text);
		this.property = property;
	}

	public ItemList invoke(int tpid) throws Exception{
		
		List infoes = dao.getInfoesByProperties(Restrictions.eq(this.eq != null?this.eq:"tpid", tpid));
		
		if(this.property == null){
			this.property = this.sessionFactory.getClassMetadata(this.type).getIdentifierPropertyName();
		}
		for (Object object : infoes) {
			Item item = new Item(method_id.invoke(object), method_text.invoke(object), property);
			this.add(item);
		}
		return this;
	}
	
}

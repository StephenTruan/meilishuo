package org.meilishuo.webtool;

import java.io.Serializable;

/**
 * ItemList内部单项，以固定格式(id, text) 提取指定实体对象的相关数据
 * @author Administrator
 *
 */
public class Item {
	private Serializable id;
	private Serializable text;
	
	private Serializable property_name;
	
	
	
	public Serializable getProperty_name() {
		return property_name;
	}
	public void setProperty_name(Serializable property_name) {
		this.property_name = property_name;
	}
	public Serializable getId() {
		return id;
	}
	public void setId(Serializable id) {
		this.id = id;
	}
	public Serializable getText() {
		return text;
	}
	public void setText(Serializable text) {
		this.text = text;
	}
	public Item() {
		// TODO Auto-generated constructor stub
	}
	public Item(Object id, Object text, Object property_name) {
		this.id = (Serializable) id;
		this.text = (Serializable) text;
		this.property_name = (Serializable) property_name;
	}
	
}

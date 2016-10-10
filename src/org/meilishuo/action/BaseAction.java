package org.meilishuo.action;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.meilishuo.mdservice.ModelService;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

/**
 * 用于子类进行设计 响应控制层action的父类 子类需要根据设计改变指定的命名空间(namespace) 以及results注释
 * 
 * @author Administrator
 *
 */
@Controller
@Lazy(true)
@ParentPackage("struts-default")
public abstract class BaseAction {

	/**
	 * 分页查询时使用的 页码
	 */
	private int pageNum = 1;

	/**
	 * 分页查询时，指定每页行数
	 */
	private int rowCount = 10;

	/**
	 * 分页查询是，根据指定行数（rowCount）和相关表格信息获取指定表格可以分页的页数
	 */
	private Integer pageCount = null;

	/**
	 * 用于关联service以指定本action需要使用的基本DAO对象
	 */
	private String key;

	/**
	 * 依赖spring注入获取ModelService对象
	 */
	@Resource(name = "modelService")
	private ModelService service;

	/**
	 * 判断相关操作是添加还是更新的标识
	 */
	private String insertOrUpdate;

	// ===========================================================================

	public String getInsertOrUpdate() {
		return insertOrUpdate;
	}

	public void setInsertOrUpdate(String insertOrUpdate) {
		this.insertOrUpdate = insertOrUpdate;
	}

	/**
	 * 分页查询是，根据指定行数（rowCount）和相关表格信息获取指定表格可以分页的页数
	 * 
	 * @return 页数
	 */
	public Integer getPageCount() {
		if (pageCount == null) {
			pageCount = this.getService().getPageCount(getKey(),
					this.getRowCount());
		}
		return pageCount;
	}

	public int getPageNum() {
		return pageNum;
	}

	/**
	 * 响应setter 封装判断 指定页数的合理性
	 * 
	 * @param pageNum
	 */
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
		if (this.pageNum < 1) {
			this.pageNum = 1;
		}
		if (this.pageNum > this.getPageCount()) {
			this.pageNum = this.getPageCount();
		}
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	/**
	 * 强制实现getKey结合父类封装需要，提供用于子类方法使用
	 * 
	 * @return 用于关联service以指定本action需要使用的基本DAO对象的关键字
	 */
	public abstract String getKey();

	public void setKey(String key) {
		this.key = key;
	}

	public ModelService getService() {
		return service;
	}

	public void setService(ModelService service) {
		this.service = service;
	}

	public abstract List getBatch_list();

	public abstract Serializable getEntity();

	// ===========================================================================

	/**
	 * 根据制定操作获取分页信息查询
	 * 
	 * @return
	 */
	@Action(value = "getInfo")
	public String getInfo() {
		// 获取request的map
		Map map = (Map) ActionContext.getContext().get("request");
		// 把获取的学生信息放到request中
		map.put("infoes",
				this.getService().getInfoByPageNum(this.getKey(), getPageNum(),
						getRowCount()));
		return "infoes";
	}

	/**
	 * 根据操作进行指定删除 或 批量删除
	 * 
	 * @return
	 */
	@Action(value = "delete")
	public String delete_info() {
		if (getBatch_list() != null && getBatch_list().size() > 0) {
			this.getService().delete_batch(getKey(), getBatch_list().toArray());
		} else if (getEntity() != null) {
			this.getService().delete_batch(getKey(), getEntity());
		}
		return getInfo();
	}

	/**
	 * 根据标识（insertOrUpdate）的值进行信息添加或更新的方法
	 * 
	 * @return
	 */
	@Action(value = "insertOrUpdate")
	public String insertOrUpdate() {

		if (this.getInsertOrUpdate().equals("insert")) {
			getService().insert_batch(getKey(), getEntity());
		} else if (this.getInsertOrUpdate().equals("update")) {
			getService().update_batch(getKey(), getEntity());
		}

		return getInfo();
	}



}

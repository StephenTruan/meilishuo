package org.meilishuo.mdservice;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.criterion.Criterion;
import org.meilishuo.interfaces.DAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


public class ModelService_old {

	public static final String GOODSINFO = "goodsInfoDAO";
	

	@Resource(name = "daoMap")
	private Map<String, DAO> daoMap;

	public Map<String, DAO> getDaoMap() {
		return daoMap;
	}

	public void setDaoMap(Map<String, DAO> daoMap) {
		this.daoMap = daoMap;
	}

	// ----------------�����Ǹ���DAO ���ʵ�� ���еĻ�������������װ--------------------
	/**
	 * ��ȡָ������������Ϣ
	 * 
	 * @param key
	 *            ָ������key��������
	 * @return ��װ�������Ϣʵ��������List
	 */
	public List getAll(String key) {
		return this.daoMap.get(key).getAll();
	}

	/**
	 * ����ָ����Ϣ
	 * 
	 * @param key
	 *            ָ������key��������
	 * @param id
	 *            �������
	 * @return ��װ��������ݵ�ʵ�������
	 */
	public Object getInfoByID(String key, Serializable id) {
		return this.daoMap.get(key).getByID(id);
	}

	/**
	 * �����ṩ����������Ӧ�Ĳ�ѯ��ȡ��Ϣ�ķ�����������ָ����ҳ����
	 * 
	 * @param key
	 *            ָ������key��������
	 * @param pagetNum
	 *            ָ��ҳ����
	 * @param rowCount
	 *            ��ҳ��ʾ��Ϣ����
	 * @param criterions
	 *            ��ѯ����
	 * @return ��װ�������Ϣʵ��������List
	 */
	public List getInfoByProperties(String key, Integer pagetNum,
			Integer rowCount, Criterion... criterions) {
		return this.daoMap.get(key).getInfoesByPage(pagetNum, rowCount,
				criterions);
	}

	/**
	 * �����ṩ����������Ӧ�Ĳ�ѯ��ȡ��Ϣ�ķ���
	 * 
	 * @param key
	 *            ָ������key��������
	 * @param criterions
	 *            ��ѯ����
	 * @return ��װ�������Ϣʵ��������List
	 */
	public List getInfoByProperties(String key, Criterion... criterions) {
		return this.daoMap.get(key).getInfoesByProperties(criterions);
	}

	/**
	 * ��ָ��������������������ӵķ���
	 * 
	 * @param key
	 *            ָ������key��������
	 * @param entities
	 *            ����hibernate�淶��ҵ����Ҫ��װ��������ݵ�ʵ�������
	 */
	public void insert_batch(String key, Object... entities) {
		this.daoMap.get(key).execute_insert(entities);
	}

	/**
	 * ��ָ�����������������ɾ���ķ���
	 * 
	 * @param key
	 *            ָ������key��������
	 * @param entities
	 *            ����hibernate�淶��ҵ����Ҫ��װ��������ݵ�ʵ�������
	 */
	public void delete_batch(String key, Object... entities) {
		this.daoMap.get(key).execute_delete(entities);
	}

	/**
	 * ��ָ����������������ݸ��µķ���
	 * 
	 * @param key
	 *            ָ������key��������
	 * @param entities
	 *            ����hibernate�淶��ҵ����Ҫ��װ��������ݵ�ʵ�������
	 */
	public void update_batch(String key, Object... entities) {
		this.daoMap.get(key).execute_update(entities);
	}

	/**
	 * ����ÿҳ�����õ�ָ��������Ϣ���Էֳɵ�ҳ��
	 * 
	 * @param type
	 *            ָ������
	 * @param rowCount
	 *            ָ��ÿҳ����
	 * @return ���Է�ҳ��������
	 */
	public int getPageCount(String type, int rowCount) {
		return this.daoMap.get(type).getPageCountByRowCount(rowCount);
	}

	// ----------------�����Ǹ���DAO ���ʵ�� ���е�ҵ����Ҫ����--------------------

	/**
	 * ���ݷ�ҳ������ȡָ����Ϣ
	 * 
	 * @param type
	 *            ָ������
	 * @param pageNum
	 *            ָ��ҳ��
	 * @param rowCount
	 *            ָ��ÿҳ��ʾ����
	 * @return ��ѯ���
	 */
	public List getInfoByPageNum(String type, int pageNum, int rowCount) {
		return this.getInfoByProperties(type, pageNum, rowCount);
	}

	

}
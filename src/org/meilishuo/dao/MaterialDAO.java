package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Material;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MaterialDAO extends BaseDAO<Material> {
	@Autowired
	public MaterialDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

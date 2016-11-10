package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Storeinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class StoreInfoDAO extends BaseDAO<Storeinfo> {
	@Autowired
	public StoreInfoDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Packagetype;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class PackagetypeDAO extends BaseDAO<Packagetype> {
	@Autowired
	public PackagetypeDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

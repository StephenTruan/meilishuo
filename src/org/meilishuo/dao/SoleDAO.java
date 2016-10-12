package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Sole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class SoleDAO extends BaseDAO<Sole> {
	@Autowired
	public SoleDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

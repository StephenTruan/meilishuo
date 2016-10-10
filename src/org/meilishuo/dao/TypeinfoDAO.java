package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Typeinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TypeinfoDAO extends BaseDAO<Typeinfo> {
	@Autowired
	public TypeinfoDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

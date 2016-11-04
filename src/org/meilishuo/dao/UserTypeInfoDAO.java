package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Usertypeinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserTypeInfoDAO extends BaseDAO<Usertypeinfo> {
	@Autowired
	public UserTypeInfoDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

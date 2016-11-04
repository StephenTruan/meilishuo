package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Userinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserInfoDAO extends BaseDAO<Userinfo> {
	@Autowired
	public UserInfoDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Orderinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class OrderInfoDAO extends BaseDAO<Orderinfo> {
	@Autowired
	public OrderInfoDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

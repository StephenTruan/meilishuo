package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Orderlist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class OrderListDAO extends BaseDAO<Orderlist> {
	@Autowired
	public OrderListDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

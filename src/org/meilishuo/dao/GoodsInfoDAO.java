package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Goodsinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsInfoDAO extends BaseDAO<Goodsinfo> {
	@Autowired
	public GoodsInfoDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

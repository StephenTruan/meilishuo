package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Goodsimage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsImageDAO extends BaseDAO<Goodsimage> {
	@Autowired
	public GoodsImageDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

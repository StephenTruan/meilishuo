package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.ClothingClosed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ClothingClosedDAO extends BaseDAO<ClothingClosed> {
	@Autowired
	public ClothingClosedDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

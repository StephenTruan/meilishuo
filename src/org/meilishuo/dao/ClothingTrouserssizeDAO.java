package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.ClothingTrouserssize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClothingTrouserssizeDAO extends BaseDAO<ClothingTrouserssize> {
	@Autowired
	public ClothingTrouserssizeDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

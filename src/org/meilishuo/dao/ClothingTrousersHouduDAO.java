package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.ClothingTrousersHoudu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ClothingTrousersHouduDAO extends BaseDAO<ClothingTrousersHoudu> {
	@Autowired
	public ClothingTrousersHouduDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

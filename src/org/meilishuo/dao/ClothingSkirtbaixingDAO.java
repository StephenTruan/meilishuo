package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.ClothingSkirtbaixing;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ClothingSkirtbaixingDAO extends BaseDAO<ClothingSkirtbaixing> {
	@Autowired
	public ClothingSkirtbaixingDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

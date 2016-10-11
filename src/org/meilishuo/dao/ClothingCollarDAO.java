package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.ClothingCollar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClothingCollarDAO extends BaseDAO<ClothingCollar> {
	@Autowired
	public ClothingCollarDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

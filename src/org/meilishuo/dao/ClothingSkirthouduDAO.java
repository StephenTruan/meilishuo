package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.ClothingSkirthoudu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ClothingSkirthouduDAO extends BaseDAO<ClothingSkirthoudu> {
	@Autowired
	public ClothingSkirthouduDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

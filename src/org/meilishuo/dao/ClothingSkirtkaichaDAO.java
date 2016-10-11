package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.ClothingSkirtkaicha;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ClothingSkirtkaichaDAO extends BaseDAO<ClothingSkirtkaicha> {
	@Autowired
	public ClothingSkirtkaichaDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

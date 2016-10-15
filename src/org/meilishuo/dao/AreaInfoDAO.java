package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.Areainfo;
import org.meilishuo.entity.ClothingClosed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class AreaInfoDAO extends BaseDAO<Areainfo> {
	@Autowired
	public AreaInfoDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

package org.meilishuo.dao;

import org.hibernate.SessionFactory;
import org.meilishuo.entity.PackageStructure;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class PackageStructureDAO extends BaseDAO<PackageStructure> {
	@Autowired
	public PackageStructureDAO(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}

}

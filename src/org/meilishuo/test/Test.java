package org.meilishuo.test;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.criterion.Restrictions;
import org.meilishuo.dao.GoodsInfoDAO;
import org.meilishuo.entity.ClothingSize;
import org.meilishuo.entity.Goodsimage;
import org.meilishuo.entity.Goodsinfo;
import org.meilishuo.entity.Typeinfo;
import org.meilishuo.interfaces.DAO;
import org.meilishuo.mdservice.ModelService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[] args) {
		ApplicationContext app = new ClassPathXmlApplicationContext("app1.xml");
		
		ModelService service = app.getBean("modelService",ModelService.class);
		
		List<Typeinfo> ts = service.getInfoByProperties(service.TYPEINFO, Restrictions.eq("tpparentid", 1));
		
		List<Goodsinfo> g = service.getInfoByProperties(service.GOODSINFO, Restrictions.in("typeinfo", ts));
		
		System.out.println(g.size());
		
	}
}

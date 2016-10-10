package org.meilishuo.webtool;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/**
 * 封装相应的规格或其他数据，以达到固定形式的数据提取显示（id，text 等）
 * @author Administrator
 *
 */
public class ItemList extends ArrayList {
	
	private Class type;
	
	public ItemList(String id, String text, List infoes) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException{
		if(type == null){
			type = infoes.get(0).getClass();
		}
		Method method_id = type.getDeclaredMethod("get"+id);
		Method method_text = type.getDeclaredMethod("get"+text);
		
		for (Object object : infoes) {
			
			Item item = new Item(method_id.invoke(object),method_text.invoke(object));
			this.add(item);
		}
		
	}
	
}

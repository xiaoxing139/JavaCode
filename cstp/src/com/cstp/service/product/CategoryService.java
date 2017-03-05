package com.cstp.service.product;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cstp.dao.product.CategoryDao;
import com.cstp.model.product.Category;

@Service("categoryService")
public class CategoryService {
	
	@Autowired
	private CategoryDao categoryDao;
	
	public Map< String, String> find(){
		List<Category> list = categoryDao.find();
		Map< String, String> map = new HashMap<String, String>();
		for(Category c : list){
			String name = c.getName();
			String parent = c.getParent();
			if(map.containsKey(parent)){
				map.put(parent, map.get(parent)+"/"+name);
			}else{
				map.put(parent, name);
			}
			
		}
		/*for(Map.Entry<String, String> entry : map.entrySet()){
			System.out.println(entry.getKey()+":"+entry.getValue());
		}*/
		return map;
	}
	
	public void update(String pcategory, String category){
		
		List<Category> clist = this.convert(pcategory, category);
		categoryDao.update(clist);
	}
	
	public void del(String pcategory, String category){
		List<Category> clist = this.convert(pcategory, category);
		categoryDao.del(clist);
	}

	public List<Category> findByName(String parent, String name){
		return categoryDao.findByName(parent, name);
	}
	/*进行格式转换，将:a/b/c 转换成Category类的集合*/
	private List<Category> convert(String pcategory, String category){
		
		List<Category> clist = new LinkedList<Category>();
		String [] cate = category.split("/");
		for( String str : cate){
			Category c = new Category();
			c.setName(str);
			c.setParent(pcategory);
	//		System.out.println(str);
			clist.add(c);
		}
		return clist;
	}
}

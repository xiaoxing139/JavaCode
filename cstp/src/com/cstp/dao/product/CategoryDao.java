package com.cstp.dao.product;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cstp.dao.BaseDao;
import com.cstp.model.product.Category;

@Repository(value = "categoryDao")
public class CategoryDao extends BaseDao {

	public List<Category> find() {
		String hql = "from Category";
		List<Category> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	public void update(List<Category> clist) {
		try {
			this.getHibernateTemplate().saveOrUpdateAll(clist);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void del(List<Category> clist) {
		try {
			this.getHibernateTemplate().deleteAll(clist);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public List<Category> findByName(String parent, String name){
		String queryString = "from Category category where category.parent = ? and category.name = ?";
		List<Category> list = this.getHibernateTemplate().find(queryString, new String[]{parent,name});
		return list;
	}
}

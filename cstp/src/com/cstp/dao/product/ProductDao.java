package com.cstp.dao.product;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cstp.dao.BaseDao;
import com.cstp.model.product.Product;

@Repository(value="productDao")
public class ProductDao extends BaseDao{

	public List<Product> find(Integer id){
		
		String queryString = "from Product as product where owner=?";
		List<Product> list = this.getHibernateTemplate().find(queryString,id);
		return list;
	}
	
	public void add(Product product){
		
		this.getHibernateTemplate().persist(product);
	}
}

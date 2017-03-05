package com.cstp.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cstp.dao.product.ProductDao;
import com.cstp.model.product.Product;

@Service("productService")
public class ProductService {

	@Autowired
	private ProductDao productDao;
	
	public List<Product> find(Integer id){
		return productDao.find(id);
	}
	
	public void add(Product product){
		
		productDao.add(product);
	}
}

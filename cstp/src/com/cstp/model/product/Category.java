package com.cstp.model.product;

import java.io.Serializable;

/**
 * 商品类别模型
 */
public class Category implements Serializable{

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name; 		 //类别名
	private String parent;       //父类别
	
	
	public Category() {
		super();
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getParent() {
		return parent;
	}


	public void setParent(String parent) {
		this.parent = parent;
	}
	
}

package com.cstp.model.product;

import java.io.Serializable;

import com.cstp.model.user.User;
import com.cstp.util.Image;

/**
 * 商品类
 */
public class Product implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;           //id
	private String identifier; 	  //物品编号		
	private String name;		  //名字
	private int price;			  //价格
	private int inventory;		  //库存量
	private String imgPath;       //图片路径
	private Category pCategory;  //类别
	private boolean state;        //状态
    private User owner;	          //所有人
	
    public Product() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIdentifier() {
		return identifier;
	}

	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public Category getpCategory() {
		return pCategory;
	}

	public void setpCategory(Category pCategory) {
		this.pCategory = pCategory;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}
 
}

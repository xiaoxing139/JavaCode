package com.cstp.model.product;

import java.io.Serializable;

import com.cstp.model.user.User;
import com.cstp.util.Image;

/**
 * ��Ʒ��
 */
public class Product implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;           //id
	private String identifier; 	  //��Ʒ���		
	private String name;		  //����
	private int price;			  //�۸�
	private int inventory;		  //�����
	private String imgPath;       //ͼƬ·��
	private Category pCategory;  //���
	private boolean state;        //״̬
    private User owner;	          //������
	
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

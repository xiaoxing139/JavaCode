package com.cstp.util;

/**
 * 商品图片类
 */
import java.io.Serializable;

public class Image implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String number;     //图片编号
	private int height;        //高度
	private int width;         //宽度
	private int size;          //大小
	private String path;       //路径
	private byte [] binary;    	   //二进制数据
	
	public Image() {
		super();
	}
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public byte[] getBinary() {
		return binary;
	}
	public void setBinary(byte[] binary) {
		this.binary = binary;
	}
}

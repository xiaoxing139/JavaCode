package com.cstp.util;

/**
 * 产生唯一标识符
 */

import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.RandomStringUtils;

public class UUString {

	private SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
	private Set<String> set = new HashSet<String>();
	
	/*产生商品图片标识符  30位*/
	public synchronized String getPictureIdentifier(){
		String randomStr=null;
		do{
			randomStr = RandomStringUtils.randomAlphanumeric(16);
		}while(set.contains(randomStr));
		set.add(randomStr);
		String time = format.format(System.currentTimeMillis());
		String uuid = time+randomStr;
		return uuid;
	}
	
	/*产生商品标识符  24位*/
	public synchronized String getProductIdentifier(){
		String randomStr=null;
		do{
			randomStr = RandomStringUtils.randomAlphanumeric(10);
		}while(set.contains(randomStr));
		set.add(randomStr);
		String time = format.format(System.currentTimeMillis());
		String uuid = time+randomStr;
		return uuid;
	}
	
	/*产生订单标识符  20位*/
	public synchronized String getOrderIdentifier(){
		String randomStr=null;
		do{
			randomStr = RandomStringUtils.randomAlphanumeric(6);
		}while(set.contains(randomStr));
		set.add(randomStr);
		String time = format.format(System.currentTimeMillis());
		String uuid = time+randomStr;
		return uuid;
	}
}

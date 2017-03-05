package com.cstp.util;

/**
 * ����Ψһ��ʶ��
 */

import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.RandomStringUtils;

public class UUString {

	private SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
	private Set<String> set = new HashSet<String>();
	
	/*������ƷͼƬ��ʶ��  30λ*/
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
	
	/*������Ʒ��ʶ��  24λ*/
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
	
	/*����������ʶ��  20λ*/
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

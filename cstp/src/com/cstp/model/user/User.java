package com.cstp.model.user;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import com.cstp.util.Account;

/**
 * �û�ģ��
 */
public class User implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer id;          //id
	private String email;        //email
	private String nickname;     //�ǳ�
	private String password;     //����
	private String sex;          //�Ա�
	private Date birthday;       //��������
	private String phone;        //�绰
	private String idcard;       //���֤
	private Set<String> addressList;      //��ַ�б�
	private Account account;     //�˻�
	
	public User() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public Set<String> getAddressList() {
		return addressList;
	}

	public void setAddressList(Set<String> addressList) {
		this.addressList = addressList;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}

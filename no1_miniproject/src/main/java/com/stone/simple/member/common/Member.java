package com.stone.simple.member.common;

import java.sql.Date;


import org.springframework.web.multipart.MultipartFile;

public class Member {
	int no;
	String name;
	MultipartFile profile1;
	byte[] profile2;
	String post;
	String address;
	String detailAddress;
	String id;
	String password;
	String email;
	Date rdate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public MultipartFile getProfile1() {
		return profile1;
	}
	public void setProfile1(MultipartFile profile1) {
		this.profile1 = profile1;
	}
	public byte[] getProfile2() {
		try {
			if(profile1!=null && profile2==null) {
				//업로드된 파일에서 프로필사진 데이터만 추출
				profile2 = profile1.getBytes();
			}
		}
		catch(Exception ex) {ex.printStackTrace();}
		return profile2;
	}
	public void setProfile2(byte[] profile2) {
		this.profile2 = profile2;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
}

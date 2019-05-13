package org.study.Personalquery;

public class Personal {
	public String id;
	public String regNo;
	public String name;
	public String className; 
	public String DormNumber;
	public String img; 
	
	//name
	public Personal(String name) {
		this.name = name;
	}
	
	public Personal() {
		
	}
	
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	//
	public String getRegNo() {
		return this.regNo;
	}
	
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}	
	
//
	public String getId() {
		return this.id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	//
	public String getClassName() {
		return this.className;
	}
	
	public void setClassName(String className) {
		this.className = className;
	}		
	
	//
	public String getImg() {
		return this.DormNumber;
	}
	
	public void setImg(String img) {
		this.img = img;
	}	
	
	//
	public String getDormNumber() {
		return this.DormNumber;
	}
	
	public void setDormNumber(String DormNumber) {
		this.DormNumber = DormNumber;
	}
	@Override
	public String toString() {
		StringBuffer buf = new StringBuffer("Sign [no:" + id + ", regNo=" + regNo + ", name:" + name + ", className:" + className + ", DormNumber=" + DormNumber + ", img=" + img + "");
		buf.append("]");
		return buf.toString();		
	}	
}

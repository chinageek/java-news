package com.javaranger.news.entity.query;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.javaranger.news.entity.Result;

@XmlAccessorType(XmlAccessType.NONE)
@XmlRootElement(name = "smartresult")
public class QueryResult extends Result{
	@XmlElement(name = "product")
	private Product product;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@XmlAccessorType(XmlAccessType.NONE)
	public static class Product{
		@XmlElement(name = "type")
		private String type = "";
		@XmlElement(name = "code")
		private String code = "";
		@XmlElement(name = "location")
		private String location = "";
		@XmlElement(name = "birthday")
		private String birthday = "";
		@XmlElement(name = "gender")
		private String gender = "";
		@XmlElement(name = "ip")
		private String ip = "";
		@XmlElement(name = "phonenum")
		private String phonenum = "";
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getCode() {
			return code;
		}
		public void setCode(String code) {
			this.code = code;
		}
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		public String getBirthday() {
			return birthday;
		}
		public void setBirthday(String birthday) {
			this.birthday = birthday;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getIp() {
			return ip;
		}
		public void setIp(String ip) {
			this.ip = ip;
		}
		public String getPhonenum() {
			return phonenum;
		}
		public void setPhonenum(String phonenum) {
			this.phonenum = phonenum;
		}
	}
}

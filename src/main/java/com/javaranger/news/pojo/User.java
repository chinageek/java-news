package com.javaranger.news.pojo;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class User {
	@NotNull(message="id 不能为空。")
	@Min(value=100000,message="id大于100000")
	private long id;
	@NotNull(message="名称不能为空")
	@Size(min=3,max=16,message="名称字符数在3到16之间")
	private String name;
	
	@Min(value=0,message="年龄必须大于0")
	@Max(value=150,message="年龄必须小于150")
	private int age;
	@NotNull(message="性别的值无效")
	private String sex;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
}

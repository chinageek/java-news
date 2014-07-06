package com.javaranger.news.entity.query;

import org.hibernate.validator.constraints.NotBlank;

import com.javaranger.news.entity.Request;

public class QueryRequest extends Request{

	@NotBlank(message = "查询类型不能为空")
	private String type;
	@NotBlank(message = "查询内容不能为空")
	private String q;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getQ() {
		return q;
	}
	public void setQ(String q) {
		this.q = q;
	}
}

package com.hk.dtos;

import java.util.Date;

public class HkDto {
	private int seq;
	private String id;
	private String name;
	private String title;
	private String content;
	private Date regdate;
	//HkDto dto= new HkDto;     dto.seq(x) ---> dto.geSeq(): 은닉화
	public HkDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public HkDto(int seq, String title, String content) {
		super();
		this.seq = seq;
		this.title = title;
		this.content = content;
	}

	//생성자 오버로딩
	public HkDto(int seq, String id, String name, String title, String content, Date regdate) {
		super();
		this.seq = seq;
		this.id = id;
		this.name = name;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	//오버라이딩: 자식클래스에서 재정의하면 부모의 메서드를 호출해도 자식에서 호출된다
	//syso(dto.toSring())---> hashcode출력 --->오버라이딩 -->자식클래스에서 재정의 
	//Object ---> 중요 4대 메서드: getClass(), hashcode(),equals(), toString()
	//	equals 는 두 객체의 내용이 같은지, 동등성(equality) 를 비교하는 연산자
	//	hashCode 는 두 객체가 같은 객체인지, 동일성(identity) 를 비교하는 연산자 
	//  getClass() = 선언된 객체의 클래스 정보를 가져옴 ex) 클래스이름,필드정보, 메소드정보 등등
	//  toString() = 객체의 상태에 따라 문자열 true나 false를 리턴         string,문자열 "true"나 "false"를 리턴


	
	@Override
	public String toString() {
		return "HkDto [seq=" + seq + ", id=" + id + ", name=" + name + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + "]";
	}
	
	
	
}

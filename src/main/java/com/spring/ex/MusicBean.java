package com.spring.ex;

public class MusicBean {
	private String title;
	private String singer;
	private String price;
	
	public MusicBean() {
		super();
	}

	public MusicBean(String title, String singer, String price) {
		super();
		this.title = title;
		this.singer = singer;
		this.price = price;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
	
}

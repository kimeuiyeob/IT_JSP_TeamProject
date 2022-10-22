package com.milestone.app.news.vo;

public class NewsVO {

	private int newsNumber;
	private String newsTitle;
	private String newsContent;
	private String newsImage;
	private String newsDateContent;

	public NewsVO() {
		;
	}

	public int getNewsNumber() {
		return newsNumber;
	}

	public void setNewsNumber(int newsNumber) {
		this.newsNumber = newsNumber;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public String getNewsImage() {
		return newsImage;
	}

	public void setNewsImage(String newsImage) {
		this.newsImage = newsImage;
	}

	public String getNewsDateContent() {
		return newsDateContent;
	}

	public void setNewsDateContent(String newsDateContent) {
		this.newsDateContent = newsDateContent;
	}

	@Override
	public String toString() {
		return "MemberVO2 [newsNumber=" + newsNumber + ", newsTitle=" + newsTitle + ", newsContent=" + newsContent
				+ ", newsImage=" + newsImage + ", newsDateContent=" + newsDateContent + "]";
	}

}
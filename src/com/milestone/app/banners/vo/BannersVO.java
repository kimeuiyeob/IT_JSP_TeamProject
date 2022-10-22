package com.milestone.app.banners.vo;

public class BannersVO {
	
	private int bannersNumber;
	private String bannersRegistrationDate;
	private String bannersImage;
	private String bannersUrl;
	private int noticeNumber;
	private String bannersTitle;
	private String bannersContent;

	public BannersVO() {
		;
	}

	public int getBannersNumber() {
		return bannersNumber;
	}

	public void setBannersNumber(int bannersNumber) {
		this.bannersNumber = bannersNumber;
	}

	public String getBannersRegistrationDate() {
		return bannersRegistrationDate;
	}

	public void setBannersRegistrationDate(String bannersRegistrationDate) {
		this.bannersRegistrationDate = bannersRegistrationDate;
	}

	public String getBannersImage() {
		return bannersImage;
	}

	public void setBannersImage(String bannersImage) {
		this.bannersImage = bannersImage;
	}

	public String getBannersUrl() {
		return bannersUrl;
	}

	public void setBannersUrl(String bannersUrl) {
		this.bannersUrl = bannersUrl;
	}

	public int getNoticeNumber() {
		return noticeNumber;
	}

	public void setNoticeNumber(int noticeNumber) {
		this.noticeNumber = noticeNumber;
	}

	public String getBannersTitle() {
		return bannersTitle;
	}

	public void setBannersTitle(String bannersTitle) {
		this.bannersTitle = bannersTitle;
	}

	public String getBannersContent() {
		return bannersContent;
	}

	public void setBannersContent(String bannersContent) {
		this.bannersContent = bannersContent;
	}

	@Override
	public String toString() {
		return "BannersVO [bannersNumber=" + bannersNumber + ", bannersRegistrationDate=" + bannersRegistrationDate
				+ ", bannersImage=" + bannersImage + ", bannersUrl=" + bannersUrl + ", noticeNumber=" + noticeNumber
				+ ", bannersTitle=" + bannersTitle + ", bannersContent=" + bannersContent + "]";
	}
	
}

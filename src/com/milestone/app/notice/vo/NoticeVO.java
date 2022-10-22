package com.milestone.app.notice.vo;

public class NoticeVO {

	private int noticeNumber;
	   private String noticeClassification;
	   private String noticeTitle;
	   private String noticeDateCreated;
	   private String noticeContent;
	   
	   public NoticeVO() {;}

	   public int getNoticeNumber() {
	      return noticeNumber;
	   }

	   public void setNoticeNumber(int noticeNumber) {
	      this.noticeNumber = noticeNumber;
	   }

	   public String getNoticeClassification() {
	      return noticeClassification;
	   }

	   public void setNoticeClassification(String noticeClassification) {
	      this.noticeClassification = noticeClassification;
	   }

	   public String getNoticeTitle() {
	      return noticeTitle;
	   }

	   public void setNoticeTitle(String noticeTitle) {
	      this.noticeTitle = noticeTitle;
	   }

	   public String getNoticeDateCreated() {
	      return noticeDateCreated;
	   }

	   public void setNoticeDateCreated(String noticeDateCreated) {
	      this.noticeDateCreated = noticeDateCreated;
	   }

	   public String getNoticeContent() {
	      return noticeContent;
	   }

	   public void setNoticeContent(String noticeContent) {
	      this.noticeContent = noticeContent;
	   }

	   @Override
	   public String toString() {
	      return "MemberVO2 [noticeNumber=" + noticeNumber + ", noticeClassification=" + noticeClassification
	            + ", noticeTitle=" + noticeTitle + ", noticeDateCreated=" + noticeDateCreated + ", noticeContent="
	            + noticeContent + "]";
	   }

}

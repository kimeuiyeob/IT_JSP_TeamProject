package com.milestone.app.individualcommunity.vo;

public class IndividualCommunityDTO {

	private int individualCommunityNumber;
	private String individualCommunityTitle;
	private String individualCommunityContent;
	private int individualCommunityHits;
	private int individualCommunityLike;
	private String individualCommunityImage;
	private String individualCommunityDateCreated;
	private int individualMemberNumber;
	private String individualMemberId;
	private String individualMemberName;
	private String individualMemberEmail;

	public String getIndividualMemberEmail() {
		return individualMemberEmail;
	}

	public void setIndividualMemberEmail(String individualMemberEmail) {
		this.individualMemberEmail = individualMemberEmail;
	}

	public String getIndividualMemberName() {
		return individualMemberName;
	}

	public void setIndividualMemberName(String individualMemberName) {
		this.individualMemberName = individualMemberName;
	}

	public IndividualCommunityDTO() {
		;
	}

	public int getIndividualCommunityNumber() {
		return individualCommunityNumber;
	}

	public void setIndividualCommunityNumber(int individualCommunityNumber) {
		this.individualCommunityNumber = individualCommunityNumber;
	}

	public String getIndividualCommunityTitle() {
		return individualCommunityTitle;
	}

	public void setIndividualCommunityTitle(String individualCommunityTitle) {
		this.individualCommunityTitle = individualCommunityTitle;
	}

	public String getIndividualCommunityContent() {
		return individualCommunityContent;
	}

	public void setIndividualCommunityContent(String individualCommunityContent) {
		this.individualCommunityContent = individualCommunityContent;
	}

	public int getIndividualCommunityHits() {
		return individualCommunityHits;
	}

	public void setIndividualCommunityHits(int individualCommunityHits) {
		this.individualCommunityHits = individualCommunityHits;
	}

	public int getIndividualCommunityLike() {
		return individualCommunityLike;
	}

	public void setIndividualCommunityLike(int individualCommunityLike) {
		this.individualCommunityLike = individualCommunityLike;
	}

	public String getIndividualCommunityImage() {
		return individualCommunityImage;
	}

	public void setIndividualCommunityImage(String individualCommunityImage) {
		this.individualCommunityImage = individualCommunityImage;
	}

	public String getIndividualCommunityDateCreated() {
		return individualCommunityDateCreated;
	}

	public void setIndividualCommunityDateCreated(String individualCommunityDateCreated) {
		this.individualCommunityDateCreated = individualCommunityDateCreated;
	}

	public int getIndividualMemberNumber() {
		return individualMemberNumber;
	}

	public void setIndividualMemberNumber(int individualMemberNumber) {
		this.individualMemberNumber = individualMemberNumber;
	}

	public String getIndividualMemberId() {
		return individualMemberId;
	}

	public void setIndividualMemberId(String individualMemberId) {
		this.individualMemberId = individualMemberId;
	}

	@Override
	public String toString() {
		return "IndividualCommunityDTO [individualCommunityNumber=" + individualCommunityNumber
				+ ", individualCommunityTitle=" + individualCommunityTitle + ", individualCommunityContent="
				+ individualCommunityContent + ", individualCommunityHits=" + individualCommunityHits
				+ ", individualCommunityLike=" + individualCommunityLike + ", individualCommunityImage="
				+ individualCommunityImage + ", individualCommunityDateCreated=" + individualCommunityDateCreated
				+ ", individualMemberNumber=" + individualMemberNumber + ", individualMemberId=" + individualMemberId
				+ ", individualMemberName=" + individualMemberName + ", individualMemberEmail=" + individualMemberEmail
				+ "]";
	}

}

//`individual_community_number`        INT              NOT NULL    AUTO_INCREMENT COMMENT '개인 게시판 글 번호', 
//`individual_community_title`         VARCHAR(100)     NOT NULL    COMMENT '개인 게시판 글 제목', 
//`individual_community_content`       VARCHAR(1000)    NOT NULL    COMMENT '개인 게시판 글 내용', 
//`individual_community_hits`          INT              NULL        COMMENT '개인 게시판 조회수', 
//`individual_community_like`          INT              NULL        COMMENT '개인 게시판 좋아요', 
//`individual_community_image`         VARCHAR(1000)    NULL        COMMENT '개인 게시판 이미지', 
//`individual_community_date_created`  DATETIME         NOT NULL    COMMENT '개인 게시판 작성일', 
//`individual_number`                  INT              NOT NULL    COMMENT '개인 회원 번호', 
// PRIMARY KEY (individual_community_number)
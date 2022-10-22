package com.milestone.app.nurseryschoolcommunity.vo;

public class NurserySchoolCommunityVO {

   private int nurserySchoolCommunityNumber;
   private String nurserySchoolCommunityTitle;
   private String nurserySchoolCommunityContent;
   private int nurserySchoolCommunityHits;
   private int nurserySchoolCommunityLike;
   private String nurserySchoolCommunityImage;
   private String nurserySchoolCommunityDateCreated;
   private int nurserySchoolMemberNumber;
   
   public NurserySchoolCommunityVO () {;}

   public int getNurserySchoolCommunityNumber() {
      return nurserySchoolCommunityNumber;
   }

   public void setNurserySchoolCommunityNumber(int nurserySchoolCommunityNumber) {
      this.nurserySchoolCommunityNumber = nurserySchoolCommunityNumber;
   }

   public String getNurserySchoolCommunityTitle() {
      return nurserySchoolCommunityTitle;
   }

   public void setNurserySchoolCommunityTitle(String nurserySchoolCommunityTitle) {
      this.nurserySchoolCommunityTitle = nurserySchoolCommunityTitle;
   }

   public String getNurserySchoolCommunityContent() {
      return nurserySchoolCommunityContent;
   }

   public void setNurserySchoolCommunityContent(String nurserySchoolCommunityContent) {
      this.nurserySchoolCommunityContent = nurserySchoolCommunityContent;
   }

   public int getNurserySchoolCommunityHits() {
      return nurserySchoolCommunityHits;
   }

   public void setNurserySchoolCommunityHits(int nurserySchoolCommunityHits) {
      this.nurserySchoolCommunityHits = nurserySchoolCommunityHits;
   }

   public int getNurserySchoolCommunityLike() {
      return nurserySchoolCommunityLike;
   }

   public void setNurserySchoolCommunityLike(int nurserySchoolCommunityLike) {
      this.nurserySchoolCommunityLike = nurserySchoolCommunityLike;
   }

   public String getNurserySchoolCommunityImage() {
      return nurserySchoolCommunityImage;
   }

   public void setNurserySchoolCommunityImage(String nurserySchoolCommunityImage) {
      this.nurserySchoolCommunityImage = nurserySchoolCommunityImage;
   }

   public String getNurserySchoolCommunityDateCreated() {
      return nurserySchoolCommunityDateCreated;
   }

   public void setNurserySchoolCommunityDateCreated(String nurserySchoolCommunityDateCreated) {
      this.nurserySchoolCommunityDateCreated = nurserySchoolCommunityDateCreated;
   }

   public int getNurserySchoolMemberNumber() {
      return nurserySchoolMemberNumber;
   }

   public void setNurserySchoolMemberNumber(int nurserySchoolMemberNumber) {
      this.nurserySchoolMemberNumber = nurserySchoolMemberNumber;
   }

   @Override
   public String toString() {
      return "NurserySchoolCommunityVO [nurserySchoolCommunityNumber=" + nurserySchoolCommunityNumber
            + ", nurserySchoolCommunityTitle=" + nurserySchoolCommunityTitle + ", nurserySchoolCommunityContent="
            + nurserySchoolCommunityContent + ", nurserySchoolCommunityHits=" + nurserySchoolCommunityHits
            + ", nurserySchoolCommunityLike=" + nurserySchoolCommunityLike + ", nurserySchoolCommunityImage="
            + nurserySchoolCommunityImage + ", nurserySchoolCommunityDateCreated="
            + nurserySchoolCommunityDateCreated + ", nurserySchoolMemberNumber=" + nurserySchoolMemberNumber + "]";
   }
   
}

//`nursery_school_community_number`        INT              NOT NULL    AUTO_INCREMENT COMMENT '보육원 게시판 글 번호', 
//`nursery_school_community_title`         VARCHAR(100)     NOT NULL    COMMENT '보육원 게시판 글 제목', 
//`nursery_school_community_content`       VARCHAR(1000)    NOT NULL    COMMENT '보육원 게시판 글 내용', 
//`nursery_school_community_hits`          INT              NULL        COMMENT '보육원 게시판 조회수', 
//`nursery_school_community_like`          INT              NULL        COMMENT '보육원 게시판 좋아요', 
//`nursery_school_community_image`         VARCHAR(1000)    NULL        COMMENT '보육원 게시판 이미지', 
//`nursery_school_community_date_created`  DATETIME         NOT NULL    COMMENT '보육원 게시판 작성일', 
//`nursery_school_member_number`           INT              NOT NULL    COMMENT '보육원 회원 번호', 
// PRIMARY KEY (nursery_school_community_number)
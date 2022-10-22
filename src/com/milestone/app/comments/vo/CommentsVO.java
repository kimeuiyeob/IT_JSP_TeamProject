package com.milestone.app.comments.vo;

public class CommentsVO {
   
   private int commentsNumber;
   private String content;
   private int individualMemberNumber;
   private int nurserySchoolMemberNumber;
   private int individualCommunityNumber;
   private int nurserySchoolCommunityNumber;
   private int commentDateCreated;
   
   public CommentsVO () {;}

   public int getCommentsNumber() {
      return commentsNumber;
   }

   public void setCommentsNumber(int commentsNumber) {
      this.commentsNumber = commentsNumber;
   }

   public String getContent() {
      return content;
   }

   public void setContent(String content) {
      this.content = content;
   }

   public int getIndividualMemberNumber() {
      return individualMemberNumber;
   }

   public void setIndividualMemberNumber(int individualMemberNumber) {
      this.individualMemberNumber = individualMemberNumber;
   }

   public int getNurserySchoolMemberNumber() {
      return nurserySchoolMemberNumber;
   }

   public void setNurserySchoolMemberNumber(int nurserySchoolMemberNumber) {
      this.nurserySchoolMemberNumber = nurserySchoolMemberNumber;
   }

   public int getIndividualCommunityNumber() {
      return individualCommunityNumber;
   }

   public void setIndividualCommunityNumber(int individualCommunityNumber) {
      this.individualCommunityNumber = individualCommunityNumber;
   }

   public int getNurserySchoolCommunityNumber() {
      return nurserySchoolCommunityNumber;
   }

   public void setNurserySchoolCommunityNumber(int nurserySchoolCommunityNumber) {
      this.nurserySchoolCommunityNumber = nurserySchoolCommunityNumber;
   }

   public int getCommentDateCreated() {
      return commentDateCreated;
   }

   public void setCommentDateCreated(int commentDateCreated) {
      this.commentDateCreated = commentDateCreated;
   }

   @Override
   public String toString() {
      return "CommentsVO [commentsNumber=" + commentsNumber + ", content=" + content + ", individualMemberNumber="
            + individualMemberNumber + ", nurserySchoolMemberNumber=" + nurserySchoolMemberNumber
            + ", individualCommunityNumber=" + individualCommunityNumber + ", nurserySchoolCommunityNumber="
            + nurserySchoolCommunityNumber + ", commentDateCreated=" + commentDateCreated + "]";
   }

}

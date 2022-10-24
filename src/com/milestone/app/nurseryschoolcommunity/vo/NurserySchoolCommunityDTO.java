package com.milestone.app.nurseryschoolcommunity.vo;

public class NurserySchoolCommunityDTO {

   private int nurserySchoolCommunityNumber;
   private String nurserySchoolCommunityTitle;
   private String nurserySchoolCommunityContent;
   private int nurserySchoolCommunityHits;
   private int nurserySchoolCommunityLike;
   private String nurserySchoolCommunityImage;
   private String nurserySchoolCommunityDateCreated;
   private int nurserySchoolMemberNumber;
   private String nurserySchoolMemberName;
   private String nurserySchoolMemberEmail;
   
   public String getNurserySchoolMemberEmail() {
	return nurserySchoolMemberEmail;
}

public void setNurserySchoolMemberEmail(String nurserySchoolMemberEmail) {
	this.nurserySchoolMemberEmail = nurserySchoolMemberEmail;
}

public NurserySchoolCommunityDTO () {;}

   public int getNurserySchoolCommunityNumber() {
      return nurserySchoolCommunityNumber;
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

   public String getNurserySchoolMemberName() {
      return nurserySchoolMemberName;
   }

   public void setNurserySchoolMemberName(String nurserySchoolMemberName) {
      this.nurserySchoolMemberName = nurserySchoolMemberName;
   }

   public void setNurserySchoolCommunityNumber(int nurserySchoolCommunityNumber) {
      this.nurserySchoolCommunityNumber = nurserySchoolCommunityNumber;
   }

   @Override
public String toString() {
	return "NurserySchoolCommunityDTO [nurserySchoolCommunityNumber=" + nurserySchoolCommunityNumber
			+ ", nurserySchoolCommunityTitle=" + nurserySchoolCommunityTitle + ", nurserySchoolCommunityContent="
			+ nurserySchoolCommunityContent + ", nurserySchoolCommunityHits=" + nurserySchoolCommunityHits
			+ ", nurserySchoolCommunityLike=" + nurserySchoolCommunityLike + ", nurserySchoolCommunityImage="
			+ nurserySchoolCommunityImage + ", nurserySchoolCommunityDateCreated=" + nurserySchoolCommunityDateCreated
			+ ", nurserySchoolMemberNumber=" + nurserySchoolMemberNumber + ", nurserySchoolMemberName="
			+ nurserySchoolMemberName + ", nurserySchoolMemberEmail=" + nurserySchoolMemberEmail + "]";
}


}

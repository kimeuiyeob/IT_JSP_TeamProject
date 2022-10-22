package com.milestone.app.individual.vo;

public class IndividualDTO {

	private int individualMemberNumber;
	private String individualMemberName;
	private String nickName;
	private String individualMemberPhoneNumber;
	private String individualMemberId;
	private String individualMemberPassword;
	private String individualMemberEmail;
	private String individualMemberAddress;
	private String individualMemberDetailedAddress;
	private String individualMemberProfileImage;
	private int numberOfDonations;
	private String individualMemberJoinDate;
	private String individualMemberRecentLogins;
	private String zip_code;

	// ===============================================

	private String donationDate;
	private int donationAmount;
	private String donationProducts;
	private String myRank;

	public IndividualDTO() {
	}

	public int getIndividualMemberNumber() {
		return individualMemberNumber;
	}

	public void setIndividualMemberNumber(int individualMemberNumber) {
		this.individualMemberNumber = individualMemberNumber;
	}

	public String getIndividualMemberName() {
		return individualMemberName;
	}

	public void setIndividualMemberName(String individualMemberName) {
		this.individualMemberName = individualMemberName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getIndividualMemberPhoneNumber() {
		return individualMemberPhoneNumber;
	}

	public void setIndividualMemberPhoneNumber(String individualMemberPhoneNumber) {
		this.individualMemberPhoneNumber = individualMemberPhoneNumber;
	}

	public String getIndividualMemberId() {
		return individualMemberId;
	}

	public void setIndividualMemberId(String individualMemberId) {
		this.individualMemberId = individualMemberId;
	}

	public String getIndividualMemberPassword() {
		return individualMemberPassword;
	}

	public void setIndividualMemberPassword(String individualMemberPassword) {
		this.individualMemberPassword = individualMemberPassword;
	}

	public String getIndividualMemberEmail() {
		return individualMemberEmail;
	}

	public void setIndividualMemberEmail(String individualMemberEmail) {
		this.individualMemberEmail = individualMemberEmail;
	}

	public String getIndividualMemberAddress() {
		return individualMemberAddress;
	}

	public void setIndividualMemberAddress(String individualMemberAddress) {
		this.individualMemberAddress = individualMemberAddress;
	}

	public String getIndividualMemberDetailedAddress() {
		return individualMemberDetailedAddress;
	}

	public void setIndividualMemberDetailedAddress(String individualMemberDetailedAddress) {
		this.individualMemberDetailedAddress = individualMemberDetailedAddress;
	}

	public String getIndividualMemberProfileImage() {
		return individualMemberProfileImage;
	}

	public void setIndividualMemberProfileImage(String individualMemberProfileImage) {
		this.individualMemberProfileImage = individualMemberProfileImage;
	}

	public int getNumberOfDonations() {
		return numberOfDonations;
	}

	public void setNumberOfDonations(int numberOfDonations) {
		this.numberOfDonations = numberOfDonations;
	}

	public String getIndividualMemberJoinDate() {
		return individualMemberJoinDate;
	}

	public void setIndividualMemberJoinDate(String individualMemberJoinDate) {
		this.individualMemberJoinDate = individualMemberJoinDate;
	}

	public String getIndividualMemberRecentLogins() {
		return individualMemberRecentLogins;
	}

	public void setIndividualMemberRecentLogins(String individualMemberRecentLogins) {
		this.individualMemberRecentLogins = individualMemberRecentLogins;
	}

	public String getZip_code() {
		return zip_code;
	}

	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}

	public String getDonationDate() {
		return donationDate;
	}

	public void setDonationDate(String donationDate) {
		this.donationDate = donationDate;
	}

	public int getDonationAmount() {
		return donationAmount;
	}

	public void setDonationAmount(int donationAmount) {
		this.donationAmount = donationAmount;
	}

	public String getDonationProducts() {
		return donationProducts;
	}

	public void setDonationProducts(String donationProducts) {
		this.donationProducts = donationProducts;
	}

	public String getMyRank() {
		return myRank;
	}

	public void setMyRank(String myRank) {
		this.myRank = myRank;
	}

	@Override
	public String toString() {
		return "IndividualDTO [individualMemberNumber=" + individualMemberNumber + ", individualMemberName="
				+ individualMemberName + ", nickName=" + nickName + ", individualMemberPhoneNumber="
				+ individualMemberPhoneNumber + ", individualMemberId=" + individualMemberId
				+ ", individualMemberPassword=" + individualMemberPassword + ", individualMemberEmail="
				+ individualMemberEmail + ", individualMemberAddress=" + individualMemberAddress
				+ ", individualMemberDetailedAddress=" + individualMemberDetailedAddress
				+ ", individualMemberProfileImage=" + individualMemberProfileImage + ", numberOfDonations="
				+ numberOfDonations + ", individualMemberJoinDate=" + individualMemberJoinDate
				+ ", individualMemberRecentLogins=" + individualMemberRecentLogins + ", zip_code=" + zip_code
				+ ", donationDate=" + donationDate + ", donationAmount=" + donationAmount + ", donationProducts="
				+ donationProducts + ", myRank=" + myRank + "]";
	}

}

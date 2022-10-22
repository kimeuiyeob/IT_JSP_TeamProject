package com.milestone.app.donation.vo;

public class DonationVO {

	private int donationNumber;
	private String donationDate;
	private String donationApplicationDate;
	private int donationAmount;
	private String donationProducts;
	private String donationDetailProducts;
	private String icon;
	private int quantity;
	private int boxQuantity;
	private int individualMemberNumber;
	private int nurserySchoolMemberNumber;

	public DonationVO() {
		;
	}

	public int getDonationNumber() {
		return donationNumber;
	}

	public void setDonationNumber(int donationNumber) {
		this.donationNumber = donationNumber;
	}

	public String getDonationDate() {
		return donationDate;
	}

	public void setDonationDate(String donationDate) {
		this.donationDate = donationDate;
	}

	public String getDonationApplicationDate() {
		return donationApplicationDate;
	}

	public void setDonationApplicationDate(String donationApplicationDate) {
		this.donationApplicationDate = donationApplicationDate;
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

	public String getDonationDetailProducts() {
		return donationDetailProducts;
	}

	public void setDonationDetailProducts(String donationDetailProducts) {
		this.donationDetailProducts = donationDetailProducts;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getBoxQuantity() {
		return boxQuantity;
	}

	public void setBoxQuantity(int boxQuantity) {
		this.boxQuantity = boxQuantity;
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

	@Override
	public String toString() {
		return "MemberVO2 [donationNumber=" + donationNumber + ", donationDate=" + donationDate
				+ ", donationApplicationDate=" + donationApplicationDate + ", donationAmount=" + donationAmount
				+ ", donationProducts=" + donationProducts + ", donationDetailProducts=" + donationDetailProducts
				+ ", icon=" + icon + ", quantity=" + quantity + ", boxQuantity=" + boxQuantity
				+ ", individualMemberNumber=" + individualMemberNumber + ", nurserySchoolMemberNumber="
				+ nurserySchoolMemberNumber + "]";
	}
}

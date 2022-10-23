package com.milestone.app.individualFile.vo;

public class IndividualFileVO {
	private String fileSystemName;
	private String fileOriginalName;
	private int IndividualCommunityNumber;
	public String getFileSystemName() {
		return fileSystemName;
	}
	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}
	public String getFileOriginalName() {
		return fileOriginalName;
	}
	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}
	public int getIndividualCommunityNumber() {
		return IndividualCommunityNumber;
	}
	public void setIndividualCommunityNumber(int individualCommunityNumber) {
		IndividualCommunityNumber = individualCommunityNumber;
	}
	@Override
	public String toString() {
		return "IndividualFileVO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName
				+ ", IndividualCommunityNumber=" + IndividualCommunityNumber + "]";
	}
}

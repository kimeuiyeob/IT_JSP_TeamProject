package com.milestone.app.file.vo;

public class FileVO {
	private String fileSystemName;
	private String fileOriginalName;
	private int nurserySchoolCommunityNumber;
	
	public FileVO() {;}

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

	public int getNurserySchoolCommunityNumber() {
		return nurserySchoolCommunityNumber;
	}

	public void setNurserySchoolCommunityNumber(int nurserySchoolCommunityNumber) {
		this.nurserySchoolCommunityNumber = nurserySchoolCommunityNumber;
	}

	@Override
	public String toString() {
		return "FileVO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName
				+ ", nurserySchoolCommunityNumber=" + nurserySchoolCommunityNumber + "]";
	}

}

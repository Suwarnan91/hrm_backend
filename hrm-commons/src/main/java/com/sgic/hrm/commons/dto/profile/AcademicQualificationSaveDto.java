package com.sgic.hrm.commons.dto.profile;

import java.util.Date;

public class AcademicQualificationSaveDto {

	private Integer user;
	private Integer examType;
	private Integer periodYearFrom;
	private Integer periodYearTo;
	private String schoolName;
	private String result;
	private Integer examinationYear;
	private Date createdAt;
	private Date updatedAt;
	
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
	public Integer getUser() {
		return user;
	}
	public void setUserId(Integer user) {
		this.user = user;
	}
	public Integer getExamType() {
		return examType;
	}
	public void setExamTypeId(Integer examType) {
		this.examType = examType;
	}
	public Integer getPeriodYearFrom() {
		return periodYearFrom;
	}
	public void setPeriodYearFrom(Integer periodYearFrom) {
		this.periodYearFrom = periodYearFrom;
	}
	public Integer getPeriodYearTo() {
		return periodYearTo;
	}
	public void setPeriodYearTo(Integer periodYearTo) {
		this.periodYearTo = periodYearTo;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Integer getExaminationYear() {
		return examinationYear;
	}
	public void setExaminationYear(Integer examinationYear) {
		this.examinationYear = examinationYear;
	}
	
	
}

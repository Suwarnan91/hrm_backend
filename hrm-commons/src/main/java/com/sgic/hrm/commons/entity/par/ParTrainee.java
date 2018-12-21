package com.sgic.hrm.commons.entity.par;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "parTrainee", schema = "par")
public class ParTrainee {
	
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private Integer id;
		private String empId;
		private Double overAllScore;
		private Date scheduleDate;

		public ParTrainee(Integer id, String empId, Double overAllScore, Date scheduleDate) {
			this.id = id;
			this.empId = empId;
			this.overAllScore = overAllScore;
			this.scheduleDate = scheduleDate;
		}

		public ParTrainee(Integer id, String empId, Date scheduleDate) {

			this.id = id;
			this.empId = empId;
			this.scheduleDate = scheduleDate;
		}

		public ParTrainee() {

		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getEmpId() {
			return empId;
		}

		public void setEmpId(String empId) {
			this.empId = empId;
		}

		public Double getOverAllScore() {
			return overAllScore;
		}

		public void setOverAllScore(Double overAllScore) {
			this.overAllScore = overAllScore;
		}

		public Date getScheduleDate() {
			return scheduleDate;
		}

		public void setScheduleDate(Date scheduleDate) {
			this.scheduleDate = scheduleDate;
		}

}

package com.sgic.hrm.commons.entity.par;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "scoreParAppraisee", schema = "par")
public class ScoreParAppraisee {

	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String id;

	@ManyToOne
	@JoinColumn(name = "ParContent_id")
	private ParContent parContent;

	private Double score;
	private String comment;
	

	@ManyToOne
	@JoinColumn(name = "report_par_appraise_id")
	private ReportParAppraise reportParAppraise;

	public ScoreParAppraisee(Double score) {

		this.score = score;
	}

	public ScoreParAppraisee() {

	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public ParContent getParContent() {
		return parContent;
	}

	public void setParContent(ParContent parContent) {
		this.parContent = parContent;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	public ReportParAppraise getReportParAppraise() {
		return reportParAppraise;
	}

	public void setReportParAppraise(ReportParAppraise reportParAppraise) {
		this.reportParAppraise = reportParAppraise;
	}

}

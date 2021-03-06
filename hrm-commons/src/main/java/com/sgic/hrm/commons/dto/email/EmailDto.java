package com.sgic.hrm.commons.dto.email;

public class EmailDto {
	private String from;
	private String to;
	private String subject;
	private String content;

	public EmailDto(String from, String to, String subject, String content) {
		super();
		this.from = from;
		this.to = to;
		this.subject = subject;
		this.content = content;
	}

	public EmailDto() {

	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "EmailDto{" + "from='" + from + '\'' + ", to='" + to + '\'' + ", subject='" + subject + '\''
				+ ", content='" + content + '\'' + '}';
	}
}

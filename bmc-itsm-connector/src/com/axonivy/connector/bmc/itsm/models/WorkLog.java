package com.axonivy.connector.bmc.itsm.models;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class WorkLog implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4369131974695069268L;

	@JsonProperty(value = "Work Log ID")
	private String workLogId;
	
	@JsonProperty(value = "Incident Number")
	private String incidentNumber;
	
	@JsonProperty(value = "Submitter")
	private String submitter;
	
	@JsonProperty(value = "Detailed Description")
	private String detailedDescription;
	
	@JsonProperty(value = "Work Log Type")
	private String workLogType;
	
	@JsonProperty(value = "View Access")
	private String viewAccess;

	public String getWorkLogId() {
		return workLogId;
	}

	public void setWorkLogId(String workLogId) {
		this.workLogId = workLogId;
	}

	public String getIncidentNumber() {
		return incidentNumber;
	}

	public void setIncidentNumber(String incidentNumber) {
		this.incidentNumber = incidentNumber;
	}

	public String getSubmitter() {
		return submitter;
	}

	public void setSubmitter(String submitter) {
		this.submitter = submitter;
	}

	public String getDetailedDescription() {
		return detailedDescription;
	}

	public void setDetailedDescription(String detailedDescription) {
		this.detailedDescription = detailedDescription;
	}

	public String getWorkLogType() {
		return workLogType;
	}

	public void setWorkLogType(String workLogType) {
		this.workLogType = workLogType;
	}

	public String getViewAccess() {
		return viewAccess;
	}

	public void setViewAccess(String viewAccess) {
		this.viewAccess = viewAccess;
	}
	
}

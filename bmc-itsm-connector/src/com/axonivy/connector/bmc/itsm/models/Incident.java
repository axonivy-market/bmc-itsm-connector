package com.axonivy.connector.bmc.itsm.models;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Incident implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6553868588574765448L;

	@JsonProperty(value = "Incident Number")
	private String incidentNumber;
	
	@JsonProperty(value = "Description")
	private String description;
	
	@JsonProperty(value = "Detailed Decription")
	private String detailedDescription;
	
	@JsonProperty(value = "Impact")
	private String impact;
	
	@JsonProperty(value = "Urgency")
	private String urgency;
	
	@JsonProperty(value = "Status")
	private String status;
	
	@JsonProperty(value = "Reported Source")
	private String reportedSource;
	
	@JsonProperty(value = "Service Type")
	private String serviceType;
	
	@JsonProperty(value = "Entry ID")
	private String entryId;
	
	@JsonProperty(value = "Submitter")
	private String submitter;
	

	public String getIncidentNumber() {
		return incidentNumber;
	}

	public void setIncidentNumber(String incidentNumber) {
		this.incidentNumber = incidentNumber;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDetailedDescription() {
		return detailedDescription;
	}

	public void setDetailedDescription(String detailedDescription) {
		this.detailedDescription = detailedDescription;
	}

	public String getImpact() {
		return impact;
	}

	public void setImpact(String impact) {
		this.impact = impact;
	}

	public String getUrgency() {
		return urgency;
	}

	public void setUrgency(String urgency) {
		this.urgency = urgency;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReportedSource() {
		return reportedSource;
	}

	public void setReportedSource(String reportedSource) {
		this.reportedSource = reportedSource;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getEntryId() {
		return entryId;
	}

	public void setEntryId(String entryId) {
		this.entryId = entryId;
	}

	public String getSubmitter() {
		return submitter;
	}

	public void setSubmitter(String submitter) {
		this.submitter = submitter;
	}
}

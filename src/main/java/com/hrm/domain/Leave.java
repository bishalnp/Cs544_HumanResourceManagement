package com.hrm.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.hrm.domain.LeaveStatus;

@Entity
@Table(name = "tbl_leave")
public class Leave {
	@Id
	@GeneratedValue
	private int leaveId;
	
	@NotNull(message = "date required")
	private Date startDate;
	
	@NotNull(message = "date required")
	private Date endDate;
	
	@NotNull(message = "summary required")
	private String description;

	@Enumerated(EnumType.STRING)
	private LeaveType leaveType;
	
	@NotNull(message = "leave days required")
	private Double noOfLeaveDays;
	
	private Double totalLeaves;
	private Double remainingLeaves;
	private int employeeId;

	@Enumerated(EnumType.STRING)
	private LeaveStatus status;

	public Leave() {
	}

	public Leave(Date startDate, Date endDate, String description, LeaveType leaveType, Double noOfLeaveDays,
			Double totalLeaves, Double remainingLeaves, int employeeId, LeaveStatus status) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.description = description;
		this.leaveType = leaveType;
		this.noOfLeaveDays = noOfLeaveDays;
		this.totalLeaves = totalLeaves;
		this.remainingLeaves = remainingLeaves;
		this.employeeId = employeeId;
		this.status = status;
	}

	public int getLeaveId() {
		return leaveId;
	}

	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LeaveType getLeaveType() {
		return leaveType;
	}

	public void setLeaveType(LeaveType leaveType) {
		this.leaveType = leaveType;
	}

	public Double getNoOfLeaveDays() {
		return noOfLeaveDays;
	}

	public void setNoOfLeaveDays(Double noOfLeaveDays) {
		this.noOfLeaveDays = noOfLeaveDays;
	}

	public LeaveStatus getStatus() {
		return status;
	}

	public void setStatus(LeaveStatus status) {
		this.status = status;
	}

	public Double getTotalLeaves() {
		return totalLeaves;
	}

	public void setTotalLeaves(Double totalLeaves) {
		this.totalLeaves = totalLeaves;
	}

	public Double getRemainingLeaves() {
		return remainingLeaves;
	}

	public void setRemainingLeaves(Double remainingLeaves) {
		this.remainingLeaves = remainingLeaves;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

}

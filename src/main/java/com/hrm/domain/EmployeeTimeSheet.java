package com.hrm.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
/**
 * Created by : Shankar Papanna
 * Date : May-13-2016
 * Description : Timesheet Conntroller.
 * 
 */

@Entity
public class EmployeeTimeSheet {

	@Id
	@GeneratedValue
	private int timesheetId;
	private int employeeId;
	@Temporal(TemporalType.DATE)
	private Date dateAttended;
	private float hoursWorked;
	private String comments;
	
	public EmployeeTimeSheet(){
	}
	
	public EmployeeTimeSheet(int employeeId, Date dateAttended, float hoursWorked, String comments) {
		super();
		this.employeeId = employeeId;
		this.dateAttended = dateAttended;
		this.hoursWorked = hoursWorked;
		this.comments = comments;
	}
	
	public long getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public Date getDateAttended() {
		return dateAttended;
	}
	public void setDateAttended(Date dateAttended) {
		this.dateAttended = dateAttended;
	}
	public float getHoursWorked() {
		return hoursWorked;
	}
	public void setHoursWorked(float hoursWorked) {
		this.hoursWorked = hoursWorked;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	
}


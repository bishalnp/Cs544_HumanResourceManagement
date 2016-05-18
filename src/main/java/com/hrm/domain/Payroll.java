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
public class Payroll {

	@Id
	@GeneratedValue
	private int payrollId;
	private int employeeId;
	@Temporal(TemporalType.DATE)
	private Date payrollDate;
	private float noOfDaysWorked;
	private float grossEarnings;
	private float bonus;
	private float totalSalary;
	private int month;
	private int year;
	
	public Payroll(){
		
	}

	public Payroll(int employeeId, Date payrollDate, float noOfDaysWorked, float grossEarnings, float bonus,
			float totalSalary, int month, int year) {
		super();
		this.employeeId = employeeId;
		this.payrollDate = payrollDate;
		this.noOfDaysWorked = noOfDaysWorked;
		this.grossEarnings = grossEarnings;
		this.bonus = bonus;
		this.totalSalary = totalSalary;
		this.month = month;
		this.year = year;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public Date getPayrollDate() {
		return payrollDate;
	}

	public void setPayrollDate(Date payrollDate) {
		this.payrollDate = payrollDate;
	}

	public float getNoOfDaysWorked() {
		return noOfDaysWorked;
	}

	public void setNoOfDaysWorked(float noOfDaysWorked) {
		this.noOfDaysWorked = noOfDaysWorked;
	}

	public float getGrossEarnings() {
		return grossEarnings;
	}

	public void setGrossEarnings(float grossEarnings) {
		this.grossEarnings = grossEarnings;
	}

	public float getBonus() {
		return bonus;
	}

	public void setBonus(float bonus) {
		this.bonus = bonus;
	}

	public float getTotalSalary() {
		return totalSalary;
	}

	public void setTotalSalary(float totalSalary) {
		this.totalSalary = totalSalary;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}
	
	
	
	
}

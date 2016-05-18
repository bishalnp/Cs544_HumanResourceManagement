package com.hrm.domain;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by : Shankar Papanna
 * Date : May-13-2016
 * Description : Timesheet Conntroller.
 * 
 */
@Entity
public class SalaryBreakdown {
	
	@Id
	@GeneratedValue
	private int salaryBreakdownId;
	private int employeeId;
	private float basicAllowance;
	private float houseRentAllowance;
	private float conveyanceAllowance;
	private float medicalAllowance;
	private float incomeTax;
	
	public SalaryBreakdown(){
		
	}
	public SalaryBreakdown(int employeeId, float basicAllowance, float houseRentAllowance, float conveyanceAllowance,
			float medicalAllowance, float incomeTax) {
		super();
		this.employeeId = employeeId;
		this.basicAllowance = basicAllowance;
		this.houseRentAllowance = houseRentAllowance;
		this.conveyanceAllowance = conveyanceAllowance;
		this.medicalAllowance = medicalAllowance;
		this.incomeTax = incomeTax;
		
		
	}
	public long getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public float getBasicAllowance() {
		return basicAllowance;
	}
	public void setBasicAllowance(float basicAllowance) {
		this.basicAllowance = basicAllowance;
	}
	public float getHouseRentAllowance() {
		return houseRentAllowance;
	}
	public void setHouseRentAllowance(float houseRentAllowance) {
		this.houseRentAllowance = houseRentAllowance;
	}
	public float getConveyanceAllowance() {
		return conveyanceAllowance;
	}
	public void setConveyanceAllowance(float conveyanceAllowance) {
		this.conveyanceAllowance = conveyanceAllowance;
	}
	public float getMedicalAllowance() {
		return medicalAllowance;
	}
	public void setMedicalAllowance(float medicalAllowance) {
		this.medicalAllowance = medicalAllowance;
	}
	public float getIncomeTax() {
		return incomeTax;
	}
	public void setIncomeTax(float incomeTax) {
		this.incomeTax = incomeTax;
	}
	
	
	
	
}

package com.hrm.domain;

/**
 * Created by : Shankar Papanna
 * Date : May-15-2016
 * Description : Timesheet Conntroller.
 * 
 */

public class PayrollMonthYear {

	private int month;
	private int year;
	public PayrollMonthYear(){
		
	}
	public PayrollMonthYear(int month, int year) {
		super();
		this.month = month;
		this.year = year;
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

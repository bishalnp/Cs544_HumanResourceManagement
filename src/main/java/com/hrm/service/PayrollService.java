package com.hrm.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.domain.Employee;
import com.hrm.domain.EmployeeTimeSheet;
import com.hrm.domain.Payroll;
import com.hrm.domain.PayrollMonthYear;
import com.hrm.domain.SalaryBreakdown;
import com.hrm.repository.EmployeeRepository;
import com.hrm.repository.PayrollRepository;
import com.hrm.repository.SalaryBreakdownRepository;
import com.hrm.repository.TimeSheetRepository;

/**
 * Created by : Shankar Papanna
 * Date : May-15-2016
 * Description : Timesheet Conntroller.
 * 
 */

@Service
@Transactional
public class PayrollService{
	
	@Autowired
	PayrollRepository payrollRepository;
	
	@Autowired
	TimeSheetRepository timeSheetRepository;
	
	@Autowired
	SalaryBreakdownRepository salaryBreakdownRepository;
	
	@Autowired
	EmployeeRepository employeeRepository;
	
	/*@Autowired
	Payroll payroll;*/
	
	@Transactional
	public void savePayroll(int id, List<EmployeeTimeSheet> employeeTimeSheet, SalaryBreakdown salaryBreakdown, PayrollMonthYear payrollMonthYear){
		
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = new Date();
		
		try {
			date = dateFormat.parse(dateFormat.format(new Date()));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		
		
		int noOfDaysWorked = employeeTimeSheet.size();
		float actualHours = noOfDaysWorked*8;
		
		float hoursWorked = 0;
		for(EmployeeTimeSheet empTimeSheet: employeeTimeSheet){
			hoursWorked += empTimeSheet.getHoursWorked();
		}
		float extraHours = (float) hoursWorked - actualHours;
		float bonus = extraHours*100;
		float grossSalary = (float) bonus+salaryBreakdown.getBasicAllowance()+salaryBreakdown.getConveyanceAllowance()+salaryBreakdown.getHouseRentAllowance()+salaryBreakdown.getMedicalAllowance();
		float totalSalary = (float) grossSalary-(grossSalary/salaryBreakdown.getIncomeTax());
		Payroll payroll = new Payroll();
		payroll.setEmployeeId(id);
		payroll.setPayrollDate(date);
		payroll.setNoOfDaysWorked(noOfDaysWorked);
		payroll.setBonus(bonus);
		payroll.setGrossEarnings(grossSalary);
		payroll.setTotalSalary(totalSalary);
		payroll.setMonth(payrollMonthYear.getMonth());
		payroll.setYear(payrollMonthYear.getYear());
		
		payrollRepository.save(payroll);
	}

	@Transactional
	public List<EmployeeTimeSheet> getEmployeeTimesheet(int id, PayrollMonthYear payrollMonthYear){
		return timeSheetRepository.find(id, payrollMonthYear.getMonth(), payrollMonthYear.getYear());
	}
	
	@Transactional
	public SalaryBreakdown getSalaryBreakdown(int id){
		//return salaryBreakdownRepository.findByEmployeeId(id);
		return salaryBreakdownRepository.findSalaryBreakdown(id);
	}
	
	@Transactional
	public Payroll getMyPayroll(int id, PayrollMonthYear payrollMonthYear){
		return payrollRepository.findPayroll(id, payrollMonthYear.getMonth(), payrollMonthYear.getYear());
	}
	
	@Transactional
	public Employee getEmployee(int id){
		return employeeRepository.findByEmployeeId(id);
	}
	
	@Transactional
	public List<Integer> getMonthsFromTimesheet(int id){
		return timeSheetRepository.findMonths(id);
	}
	
	@Transactional
	public List<Integer> getYearsFromTimesheet(int id){
		return timeSheetRepository.findYears(id);
	}
}
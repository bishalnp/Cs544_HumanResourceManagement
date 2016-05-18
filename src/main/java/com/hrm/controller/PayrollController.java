package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hrm.domain.Employee;
import com.hrm.domain.EmployeeTimeSheet;
import com.hrm.domain.Payroll;
import com.hrm.domain.PayrollMonthYear;
import com.hrm.domain.SalaryBreakdown;
import com.hrm.service.EmployeeService;
import com.hrm.service.PayrollService;
import com.hrm.service.TimeSheetService;

/**
 * Created by : Shankar Papanna
 * Date : May-13-2016
 * Description : Timesheet Conntroller.
 * 
 */

@Controller
public class PayrollController {

	@Autowired
	PayrollService payrollService;
	
	@Autowired
	EmployeeService employeeService;
	
	
	@RequestMapping(value = "/employeePayroll", method = RequestMethod.GET)
	public String getEmployeePayrollList(Model model) {
		List<Employee> emp = employeeService.displayEmployeeList();
		model.addAttribute("employee", emp);
		return "employeePayrollList";
	}
	
	@RequestMapping(value = "/computeEmployeePayroll/{id}", method = RequestMethod.GET)
	public String getAddEmployeePayroll(@PathVariable("id") int id, @ModelAttribute(value = "payrollMonthYear") PayrollMonthYear payrollMonthYear) {
		//System.out.println("id"+id+" month="+payrollMonthYear.getMonth()+" year"+payrollMonthYear.getYear());
		List<EmployeeTimeSheet> employeeTimeSheet = payrollService.getEmployeeTimesheet(id, payrollMonthYear);
		SalaryBreakdown salaryBreakdown = payrollService.getSalaryBreakdown(id);
		
		payrollService.savePayroll(id, employeeTimeSheet,salaryBreakdown,payrollMonthYear);
		
		return "computePayrollStatus";
	}
	
	@RequestMapping(value = "/myPayroll/{id}", method = RequestMethod.GET)
	public String getMyPayroll(@PathVariable("id") int id,Model model, @ModelAttribute(value = "payrollMonthYear") PayrollMonthYear payrollMonthYear) {
		Employee empDetails = employeeService.getEmployee(id);
		model.addAttribute("employee", empDetails);
		Payroll pay = payrollService.getMyPayroll(id,payrollMonthYear);
		model.addAttribute("payroll", pay);
		return "viewPayroll";
	}
	
	/*@RequestMapping(value = "/showComputeEmployeePayroll/{id}", method = RequestMethod.GET)
	public String showTimesheetDates(@PathVariable("id") int id, Model model) {
		List<Integer> months = payrollService.getMonthsFromTimesheet(id);
		List<Integer> years = payrollService.getYearsFromTimesheet(id);
		
	//	model.addAttribute(emp);
		return "payrollMonthYear";
	}*/
	
	@RequestMapping(value="/monthYear/{id}", method= RequestMethod.GET)
	public String getMonthYear(@PathVariable("id") int id, Model model){
		List<Integer> months = payrollService.getMonthsFromTimesheet(id);
		List<Integer> years = payrollService.getYearsFromTimesheet(id);
		
		
		PayrollMonthYear p = new PayrollMonthYear();
		
		model.addAttribute("months", months);
		model.addAttribute("years", years);
		model.addAttribute("id", id);
		model.addAttribute("payrollMonthYear", p);

			return "payrollMonthYear";
		
	}
	
	@RequestMapping(value="/employeeMonthYear/", method= RequestMethod.GET)
	public String getEmployeeMonthYear(Model model, @RequestParam("id") int id){
		List<Integer> months = payrollService.getMonthsFromTimesheet(id);
		List<Integer> years = payrollService.getYearsFromTimesheet(id);
		
		
		PayrollMonthYear p = new PayrollMonthYear();
		
		model.addAttribute("months", months);
		model.addAttribute("years", years);
		model.addAttribute("id", id);
		model.addAttribute("payrollMonthYear", p);

			return "employeePayrollMonthYear";
		
	}
}

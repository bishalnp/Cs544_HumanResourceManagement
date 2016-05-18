package com.hrm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hrm.domain.EmployeeTimeSheet;
import com.hrm.domain.SalaryBreakdown;
import com.hrm.service.SalaryBreakdownService;
import com.hrm.service.TimeSheetService;

/**
 * Created by : Shankar Papanna
 * Date : May-14-2016
 * Description : Timesheet Conntroller.
 * 
 */

@Controller
public class SalaryBreakdownController {

	@Autowired
	SalaryBreakdownService salaryBreakdownService;

	
	@RequestMapping(value = "/salaryBreakdown", method = RequestMethod.GET)
	public String getSalaryBreakdown() {
		return "EmployeeSalaryBreakdown";
	}

	@RequestMapping(value = "/salaryBreakdown", method = RequestMethod.POST)
	public String saveSalaryBreakdown(@ModelAttribute("salaryBreakdown") SalaryBreakdown salaryBreakdown) {
		
		salaryBreakdownService.saveEmployeeTimesheet(salaryBreakdown);
		return "redirect:/adminDashboard";

	}
}

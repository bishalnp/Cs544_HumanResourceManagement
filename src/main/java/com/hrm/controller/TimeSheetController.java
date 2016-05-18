package com.hrm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.hrm.domain.EmployeeTimeSheet;
import com.hrm.service.TimeSheetService;

/**
 * Created by : Shankar Papanna
 * Date : May-13-2016
 * Description : Timesheet Conntroller.
 * 
 */

@Controller
public class TimeSheetController {
	
	@Autowired
	TimeSheetService timeSheetService;

	
	@RequestMapping(value = "/EmployeeTimeSheet", method = RequestMethod.GET)
	public String getAddTimesheet() {
		return "EmployeeTimeSheet";
	}

	@RequestMapping(value = "/EmployeeTimeSheet", method = RequestMethod.POST)
	public String saveTimesheet(@ModelAttribute("employeeTimeSheet") EmployeeTimeSheet employeeTimeSheet) {
		
		timeSheetService.saveEmployeeTimesheet(employeeTimeSheet);
		return "redirect:/adminDashboard";

	}
}

package com.hrm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.domain.EmployeeTimeSheet;
import com.hrm.domain.SalaryBreakdown;
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
public class SalaryBreakdownService {

	@Autowired
	SalaryBreakdownRepository salaryBreakdownRepository;
	
	@Transactional
	public void saveEmployeeTimesheet(SalaryBreakdown salaryBreakdown){
		
		salaryBreakdownRepository.save(salaryBreakdown);
	}
}

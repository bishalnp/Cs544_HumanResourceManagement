package com.hrm.service;


import com.hrm.domain.EmployeeTimeSheet;
import com.hrm.repository.TimeSheetRepository;
import com.hrm.service.TimeSheetService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
* @author Shankar Papanna
* @version 1.0
*/
@Service
@Transactional
public class TimeSheetService{
	
	@Autowired
	TimeSheetRepository timeSheetRepository;
	
	@Transactional
	public void saveEmployeeTimesheet(EmployeeTimeSheet employeeTimeSheet){
		
		timeSheetRepository.save(employeeTimeSheet);
	}

}

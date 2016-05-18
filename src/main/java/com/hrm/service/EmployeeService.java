package com.hrm.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.domain.Employee;
import com.hrm.repository.EmployeeRepository;

@Service
@Transactional
public class EmployeeService {
	
	@Autowired
	EmployeeRepository employeeRepository;
	
	@Transactional
	public void saveEmployee(Employee employee){
		employee.setEndDate(new Date());
		employeeRepository.save(employee);
	}

	@Transactional
	public List<Employee> displayEmployeeList() {
		
		return employeeRepository.findAll();
	}
	
	@Transactional
	public Employee getEmployee(int id){
		return employeeRepository.findByEmployeeId(id);
	}
	@Transactional
	public void updateEmployee(int id,Employee employee){
		employee.setEmployeeId(id);
		employee.setEndDate(new Date());
		employeeRepository.save(employee);
	}
	
	public void deleteEmployee(int id,Employee employee){
		employee.setEmployeeId(id);
		employeeRepository.delete(employee);
	}
	
	public Employee checkLoginInfo(Employee employee){
		Employee emp=employeeRepository.findByEmail(employee.getEmail());
		System.out.println(emp.getEmployeeId());
		return emp;
	}
	

}

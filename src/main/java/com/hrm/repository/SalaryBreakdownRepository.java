package com.hrm.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.hrm.domain.Payroll;
import com.hrm.domain.SalaryBreakdown;

/**
 * Created by : Shankar Papanna
 * Date : May-15-2016
 * Description : Timesheet Conntroller.
 * 
 */

@Repository
public interface SalaryBreakdownRepository extends JpaRepository<SalaryBreakdown, Integer> {

	//SalaryBreakdown findByEmployeeId(int id);
	@Query("SELECT p FROM SalaryBreakdown p WHERE p.salaryBreakdownId=(select max(salaryBreakdownId) from SalaryBreakdown pl where pl.employeeId = :employeeId)")
	 public SalaryBreakdown findSalaryBreakdown(@Param("employeeId") int employeeId);
}

package com.hrm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.hrm.domain.Payroll;

/**
 * Created by : Shankar Papanna
 * Date : May-15-2016
 * Description : Timesheet Conntroller.
 * 
 */

@Repository
public interface PayrollRepository extends JpaRepository<Payroll, Integer> {

	 @Query("SELECT p FROM Payroll p WHERE p.payrollId=(select max(payrollId) from Payroll pl where pl.employeeId = :employeeId and pl.month = :month and pl.year = :year)")
	 public Payroll findPayroll(@Param("employeeId") int employeeId, @Param("month") int month, @Param("year") int year);
	
}


package com.hrm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.hrm.domain.EmployeeTimeSheet;
import com.hrm.domain.PayrollMonthYear;

/**
 * Created by : Shankar Papanna
 * Date : May-15-2016
 * Description : Timesheet Conntroller.
 * 
 */

@Repository
public interface TimeSheetRepository extends JpaRepository<EmployeeTimeSheet, Integer> {
	 
	 @Query("SELECT ets FROM EmployeeTimeSheet ets WHERE ets.employeeId = :employeeId and month(ets.dateAttended) = :month and year(ets.dateAttended) = :year")
	 public List<EmployeeTimeSheet> find(@Param("employeeId") int employeeId, @Param("month") int month, @Param("year") int year);
	 
	 @Query("SELECT distinct month(ets.dateAttended) FROM EmployeeTimeSheet ets WHERE ets.employeeId = :employeeId")
	 public List<Integer> findMonths(@Param("employeeId") int employeeId);
	 
	 @Query("SELECT distinct year(ets.dateAttended) FROM EmployeeTimeSheet ets WHERE ets.employeeId = :employeeId")
	 public List<Integer> findYears(@Param("employeeId") int employeeId);
}

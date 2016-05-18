package com.hrm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.hrm.domain.Leave;

@Repository
public interface LeaveRepository extends JpaRepository<Leave, Integer> {

	Leave findByLeaveId(int id);

	List<Leave> findByEmployeeId(int id);

	/*@Modifying
	@Query("UPDATE tbl_leave t SET t.status = :status WHERE t.leaveId = :id")
	void updateStatus(@Param("id") int id, @Param("status") String status);*/

}
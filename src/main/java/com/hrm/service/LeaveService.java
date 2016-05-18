package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.domain.Employee;
import com.hrm.domain.Leave;
import com.hrm.domain.LeaveStatus;
import com.hrm.repository.EmployeeRepository;
import com.hrm.repository.LeaveRepository;

@Service
@Transactional
public class LeaveService {
	@Autowired
	LeaveRepository leaveRepository;
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	MailService mailService;

	public void requestLeave(Leave leave) {
		leave.setTotalLeaves(15.0);
		leave.setRemainingLeaves(15.0 - leave.getNoOfLeaveDays());
		leave.setStatus(LeaveStatus.PENDING);
		leaveRepository.save(leave);
	}

	public List<Leave> getAllLeave() {

		return leaveRepository.findAll();
	}

	public List<Leave> getAllMyLeave(int id) {

		return leaveRepository.findByEmployeeId(id);
	}

	public Leave getLeaveById(int leaveId) {
		return leaveRepository.findByLeaveId(leaveId);
	}

	public void deleteLeave(int leaveId, Leave leave) {
		leave.setLeaveId(leaveId);
		leaveRepository.delete(leave);
	}

	/*
	 * public void updateStatus(int id, String status) {
	 * leaveRepository.updateStatus(id, status); }
	 */
	public void updateLeave(int id, Leave leave) {
		leave.setLeaveId(id);
		leaveRepository.save(leave);
/*
		Employee emp = employeeRepository.findByEmployeeId(id);
		String subject = "Leave application notification";
		String sendTo = emp.getEmail();
		String body = "Dear " + emp.getFirstName() + " " + emp.getLastName() + ", your leave has been "
				+ leave.getStatus();
		mailService.sendMail("bishalbg@gmail.com", "bishal.nepal@hotmail.com", subject, body);*/
		// mailSender.sendMail("bishalbg@gmail.com", subject, body);

		// leaveRepository.updateLeave(id, leave);
	}
}

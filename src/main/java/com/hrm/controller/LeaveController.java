package com.hrm.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hrm.domain.Leave;
import com.hrm.service.LeaveService;

@Controller
public class LeaveController {

	@Autowired
	LeaveService leaveService;
	Principal pc;

	/*
	 * @RequestMapping(value = "/") public String homePage() { return
	 * "homePage"; }
	 */
	// form load
	@RequestMapping(value = "/leaves/addLeave", method = RequestMethod.GET)
	public String getAddLeave() {
		return "addLeave";
	}

	// leave submit
	@RequestMapping(value = "/leaves/addLeave", method = RequestMethod.POST)
	public String saveLeave(@ModelAttribute("leave") Leave leave, Model model, @RequestParam("id") int id) {
		leave.setEmployeeId(id);
		leaveService.requestLeave(leave);
		// model.addAttribute("message", "Record Deleted Sucessfully");
		return "redirect:/leaveListIndividual?id=" + id;
	}

	// list
	@RequestMapping(value = "/leaves/leaveList", method = RequestMethod.GET)
	public String getAllLeave(Model model) {
		List<Leave> leavelist = leaveService.getAllLeave();
		model.addAttribute("leaves", leavelist);
		return "leaveList";
	}

	// list individual
	@RequestMapping(value = "/leaveListIndividual", method = RequestMethod.GET)
	public String getAllMyLeave(Model model, @RequestParam("id") int id) {
		List<Leave> leavelist = leaveService.getAllMyLeave(id);
		model.addAttribute("leaves", leavelist);
		return "leaveListIndividual";
	}

	// detail
	@RequestMapping(value = "/leaveDetail/{id}", method = RequestMethod.GET)
	public String detailLeave(@PathVariable("id") int id, Model model) {
		Leave leave = leaveService.getLeaveById(id);
		model.addAttribute(leave);
		return "leaveDetail";
	}

	// detail for individual
	@RequestMapping(value = "/leaveDetailIndividual/{id}", method = RequestMethod.GET)
	public String detailLeaveIndividual(@PathVariable("id") int id, Model model) {
		Leave leave = leaveService.getLeaveById(id);
		model.addAttribute(leave);
		return "leaveDetailIndividual";
	}

	// edit
	@RequestMapping(value = "/leaveEdit/{id}", method = RequestMethod.GET)
	public String editLeave(@PathVariable("id") int id, Model model) {

		Leave leave = leaveService.getLeaveById(id);
		model.addAttribute(leave);
		return "leaveEdit";
	}

	// update
	@RequestMapping(value = "/leaveEdit/{id}", method = RequestMethod.POST)
	public String updateLeave(@PathVariable("id") int id, @ModelAttribute(value = "leave") Leave leave) {
		leaveService.updateLeave(id, leave);
		return "redirect:/leaves/leaveList";
	}

	/*
	 * @RequestMapping(value = "/leaveEdit/{id}", method = RequestMethod.POST)
	 * public String updateLeave(@RequestParam("status") String
	 * status,@PathVariable("id") int id) { leaveService.updateStatus(id,
	 * status); return "redirect:/leaves/leaveList"; }
	 */
	// delete
	@RequestMapping(value = "/leaveDelete/{id}", method = RequestMethod.POST)
	public String delete(@PathVariable("id") int id, @ModelAttribute(value = "leave") Leave leave) {
		leaveService.deleteLeave(id, leave);
		return "redirect:/leaves/leaveList";

	}
}

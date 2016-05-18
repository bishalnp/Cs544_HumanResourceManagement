package com.hrm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hrm.domain.Employee;
import com.hrm.service.EmployeeService;

@Controller
public class LoginController {
	
	@Autowired
	EmployeeService employeeService;
	

	@RequestMapping(value = { "/", "/loginpage" })
	public String homePage() {
		return "LogInPage";
	}

	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public String getLogin(Model model){
		return "LogInPage";
	}
	
	@RequestMapping(value = "/adminDashboard", method = RequestMethod.GET)
	public String getAdminDashboard(Model model){
		return "adminDashboard";
	}
	
	@RequestMapping(value = "/userDashboard", method = RequestMethod.GET)
	public String getUserDashboard(Model model){
		return "userDashboard";
	}
	
	@RequestMapping(value = "/loginpage", method = RequestMethod.POST)
	public String checkLogin(HttpSession session, Model model, @ModelAttribute("employee") Employee employee) {

		System.out.println(employee.getEmail());

		Employee emp = employeeService.checkLoginInfo(employee);
		System.out.println(emp.getDepartment().getDesignation());
		model.addAttribute("employee", emp);
		session.setAttribute("user", emp);
		if (emp.getPassword().equals(employee.getPassword())) {
			if (emp.getDepartment().getDesignation().toString() == "HR") {
				return "redirect:/adminDashboard";
			}
			return "redirect:/userDashboard";
		}
		return "redirect:/loginpage";

	}

	@RequestMapping(value = "/logOut", method = RequestMethod.GET)
	public String logOut(HttpSession session, Model model) {
		session.removeAttribute("user");
		return "LogInPage";
	}
	

}

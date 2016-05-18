package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hrm.domain.Address;
import com.hrm.domain.Employee;
import com.hrm.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@RequestMapping(value = "/addEmployee", method = RequestMethod.GET)
	public String getAddEmployee(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "addEmployee";
	}

	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("employee") Employee employee) {

		/*
		 * Address address = new Address(street, city, state, zip, country);
		 * employee.setAddress(address);
		 */

		employeeService.saveEmployee(employee);
		return "redirect:/employeeList";

	}

	@RequestMapping(value = "/employeeList", method = RequestMethod.GET)
	public String getEmployeeList(Model model) {
		List<Employee> emp = employeeService.displayEmployeeList();
		model.addAttribute("employee", emp);
		return "employeeList";
	}

	@RequestMapping(value = "/editEmployee/{id}", method = RequestMethod.GET)
	public String getEditEmployee(@PathVariable("id") int id, Model model) {
		Employee emp = employeeService.getEmployee(id);
		model.addAttribute(emp);
		return "editEmployee";
	}

	@RequestMapping(value = "/editEmployee/{id}", method = RequestMethod.POST)
	public String updateEmployee(@RequestParam("street") String street, @RequestParam("city") String city,
			@RequestParam("state") String state, @RequestParam("zip") int zip, @RequestParam("country") String country,
			@PathVariable("id") int id, @ModelAttribute(value = "employee") Employee employee) {

		employeeService.updateEmployee(id, employee);
		return "redirect:/employeeList";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	public String deleteEmployee(@PathVariable("id") int id, @ModelAttribute(value = "employee") Employee employee,
			RedirectAttributes redirectAttributes) {

		redirectAttributes.addFlashAttribute("deleteMessage", employee.getFirstName() + "has been deleted");
		employeeService.deleteEmployee(id, employee);
		return "redirect:/employeeList";

	}

	// employee detail
	@RequestMapping(value = "/employeeDetail", method = RequestMethod.GET)
	public String detailLeave(Model model, @RequestParam("id") int id) {
		Employee emp = employeeService.getEmployee(id);
		model.addAttribute(emp);
		return "employeeDetail";
	}

}

package com.hrm.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



@Entity
@Table(name = "tbl_employee")
public class Employee {

	@Id
	@GeneratedValue
	private int employeeId;
	private String firstName;
	private String lastName;
	@Temporal(TemporalType.DATE)
	private Date dob;
	private String sex;
	private String email;
	private String contactNumber;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "addressId")
	private Address address;
	@Temporal(TemporalType.DATE)
	private Date joinDate;
	@Temporal(TemporalType.DATE)
	private Date endDate;
	private String password;
	private boolean Status;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name = "Employee_Department", joinColumns = @JoinColumn(name = "employeeId"), inverseJoinColumns = @JoinColumn(name = "departmentId"))
	private Department department;
	@OneToMany(fetch=FetchType.EAGER)
	@JoinColumn(name="emp_id")
	private List<Leave> leaveList= new ArrayList<Leave>();

	public Employee() {

	}

	public Employee(String firstName, String lastName, Date dob, String sex, String email, String contactNumber,
			Address address, Date joinDate, Date endDate, boolean status) {

		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.sex = sex;
		this.email = email;
		this.contactNumber = contactNumber;
		this.address = address;
		this.joinDate = joinDate;
		this.endDate = endDate;
		Status = status;
	}

	public Employee(String firstName, String lastName, Date dob) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
	}

	public long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isStatus() {
		return Status;
	}

	public void setStatus(boolean status) {
		Status = status;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public List<Leave> getLeaveList() {
		return leaveList;
	}

	public void setLeaveList(List<Leave> leaveList) {
		this.leaveList = leaveList;
	}

	
}

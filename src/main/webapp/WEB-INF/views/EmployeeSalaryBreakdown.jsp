<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<title>Salary Breakdown</title>
</head>
<body>
	<img src="./resources/images/hr.jpg" class="headerimage" />
	<div class="SideNavigation" id="navArea">
		<div id="divCategoryListNav">

			<ul id="ulCategoryList">
				<li id="0"><a
					href="${pageContext.request.contextPath}/addEmployee">Add New
						Employee</a></li>
				<li id="1"><a
					href="${pageContext.request.contextPath}/employeeList">View
						Employee Record</a></li>
				<li id="2"><a
					href="${pageContext.request.contextPath}/leaves/leaveList">View
						Employee Leave Request</a></li>

				<li><a
					href="${pageContext.request.contextPath}/salaryBreakdown">Employee
						Salary Breakdown</a></li>
				<li><a
					href="${pageContext.request.contextPath}/EmployeeTimeSheet">Employee
						Time-sheet</a></li>
				<li><a
					href="${pageContext.request.contextPath}/employeePayroll">Compute
						Employee Payroll</a></li>
						<li><a href="${pageContext.request.contextPath}/logOut">Log
						Out</a></li>
			</ul>
		</div>
		<div id="wrapper" class="content">
			<h2>Employee Salary Breakdown</h2>
			<form action="<spring:url value="/salaryBreakdown"/>" method="post"
				modelAttribute="salaryBreakdown">
				<fieldset>
					<legend>Add Salary Breakdown:</legend>

					<table>
						<tr>
							<td>Employee ID:</td>
							<td><input type="text" name="employeeId">
							<td>
						</tr>
						<tr>
							<td>Basic Allowance:</td>
							<td><input type="text" name="basicAllowance">
							<td>
						</tr>
						<tr>
							<td>House Rent Allowance:</td>
							<td><input type="text" name="houseRentAllowance"></td>
						</tr>
						<tr>
							<td>Conveyance Allowance :</td>
							<td><input type="text" name="conveyanceAllowance">
							<td>
						</tr>
						<tr>
							<td>Medical Allowance :</td>
							<td><input type="text" name="medicalAllowance"></td>
						</tr>
						<tr>
							<td>Income Tax :</td>
							<td><input type="text" name="incomeTax"></td>
						</tr>
						<tr></tr>

					</table>
					<input class="btn" type="submit" value="Submit">
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>
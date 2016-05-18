<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<title>Payroll</title>
</head>
<body>
	<img src="../resources/images/hr.jpg" class="headerimage" />
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
			<h2>Select Month and Year for Payroll</h2>
			<form:form
				action="${pageContext.request.contextPath}/computeEmployeePayroll/${id}"
				method="get" modelAttribute="payrollMonthYear">

				<fieldset>
					<legend>My Payroll:</legend>

					<table>
						<tr>
							<td>Month :</td>
							<td><form:select class="listmenu" path="month">
									<form:option value="0" label="--Select--" />

									<form:options items="${months}" />
								</form:select></td>
						</tr>
						<tr>
							<td>Year :</td>
							<td><form:select class="listmenu" path="year">
									<form:option value="0" label="--Select--" />

									<form:options items="${years}" />
								</form:select></td>
						</tr>

						<tr>
							<td><input class="btn" type="submit" value="Submit"></td>
							<td><a class="btn back" href="${pageContext.request.contextPath}/employeePayroll">Back</a></td>
						</tr>

					</table>
				</fieldset>
			</form:form>
		</div>
	</div>
</body>
</html>
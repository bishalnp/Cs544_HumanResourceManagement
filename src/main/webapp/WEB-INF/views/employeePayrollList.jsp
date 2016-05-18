<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<title>Employee Payroll List</title>
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
		<div class="content">
			<h2>List of Payroll Employees</h2>
			<div class="tablewrapper">
				<table id="gradient-style">
					<thead>
						<tr>
							<th width="20%">Employee ID</th>
							<th width="20%">First Name</th>
							<th width="20%">Last Name</th>
							<th width="20%">Email</th>
							<th width="20%">Contact Number</th>
							<th width="20%">Payroll</th>
						</tr>
					</thead>


					<tbody class="scrollContent">
						<c:forEach var="employee" items="${employee}">
							<tr>
								<td width="20%">${employee.employeeId}</td>
								<td width="20%">${employee.firstName}</td>
								<td width="20%">${employee.lastName}</td>
								<td width="20%">${employee.email}</td>
								<td width="20%">${employee.contactNumber}</td>
								<td width="20%">
									<form
										action="${pageContext.request.contextPath}/monthYear/${employee.employeeId}"
										method="get">
										<button class="btn">Compute Payroll</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
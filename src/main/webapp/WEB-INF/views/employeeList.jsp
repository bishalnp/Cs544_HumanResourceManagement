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
<title>Employee List</title>
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
			<h2>Employee Leave Record</h2>
			<div class="tablewrapper">
				<table id="gradient-style">
					<thead>
						<tr>
							<th scope="col">Emp ID</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Sex</th>
							<th scope="col">Email</th>
							<th scope="col">Contact Number</th>
							<th scope="col">Street</th>
							<th scope="col">City</th>
							<th scope="col">State</th>
							<th scope="col">Join Date</th>
							<th scope="col">Department Name</th>
							<th scope="col">Designation</th>
							<th scope="col">Edit</th>
							<th scope="col">Delete</th>

						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="14">Human Resource Management</td>
						</tr>
					</tfoot>

					<tbody>
						<c:forEach var="employee" items="${employee}">
							<tr>
							<td scope="col">${employee.employeeId}</td>
								<td scope="col">${employee.firstName}</td>
								<td scope="col">${employee.lastName}</td>
								<td scope="col">${employee.sex}</td>
								<td scope="col">${employee.email}</td>
								<td scope="col">${employee.contactNumber}</td>
								<td scope="col">${employee.address.street}</td>
								<td scope="col">${employee.address.city}</td>
								<td scope="col">${employee.address.state}</td>
								<td scope="col">${employee.joinDate}</td>
								<td scope="col">${employee.department.departmentName}</td>
								<td scope="col">${employee.department.designation}</td>

								<td scope="col">
									<form
										action="${pageContext.request.contextPath}/editEmployee/${employee.employeeId}"
										method="get">
										<button class="btn">Edit</button>
									</form>
								</td>
								<td scope="col">
									<form
										action="${pageContext.request.contextPath}/delete/${employee.employeeId}"
										method="post">
										<button class="btn">Delete</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<%-- <form action="${pageContext.request.contextPath}/homePage"
				method="get">
				<button>Back To Home</button>
			</form> --%>
		</div>
	</div>
</body>
</html>
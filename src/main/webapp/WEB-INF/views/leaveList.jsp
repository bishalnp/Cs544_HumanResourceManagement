<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Application</title>
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
			<h2>Employee Leave Record</h2>
			<div class="tablewrapper">
				<table id="gradient-style">
					<thead>
						<tr>
							<th scope="col">EmpID</th>
							<th scope="col">Description</th>
							<th scope="col">Type</th>
							<th scope="col">Status</th>
							<th scope="col">Start Date</th>
							<th scope="col">End Date</th>
							<th scope="col">Total Leaves</th>
							<th scope="col">View</th>
							<th scope="col">Edit</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="10">Human Resource Management</td>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="leave" items="${leaves}" varStatus="loopStatus">
							<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
								<td>${leave.employeeId}</td>
								<td>${leave.description}</td>
								<td>${leave.leaveType}</td>
								<td>${leave.status}</td>
								<td>${leave.startDate}</td>
								<td>${leave.endDate}</td>
								<td>${leave.totalLeaves}</td>
								<td><a
									href="${pageContext.request.contextPath}/leaveDetail/${leave.leaveId}">Detail</a></td>
								<td><a
									href="${pageContext.request.contextPath}/leaveEdit/${leave.leaveId}">Edit</a></td>
								<td>
									<form
										action="${pageContext.request.contextPath}/leaveDelete/${leave.leaveId}"
										method="post"
										onsubmit="return confirmDelete(this, '${pageContext.request.contextPath}/leaveDelete/${leave.leaveId}')">
										<button type="submit" class="btn delete">Delete</button>
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
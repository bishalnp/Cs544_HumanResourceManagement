<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<title>Insert title here</title>
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
			<h2>Leave Details</h2>
			<form class="formwrapper"
				action='${pageContext.request.contextPath}/leaveDetail/${leave.leaveId}'
				method="post">
				<table>
					<tr>
						<td>Description:</td>
						<td><label>${leave.description}</label></td>
					</tr>
					<tr>
						<td>Leave Type:</td>
						<td><label>${leave.leaveType}</label></td>
					</tr>
					<tr>
						<td>Leave Type:</td>
						<td><label>${leave.status}</label></td>
					</tr>
					<tr>
						<td>Start Date:</td>
						<td><label>${leave.startDate}</label></td>
					</tr>
					<tr>
						<td>End Date:</td>
						<td><label>${leave.endDate}</label></td>
					</tr>
					<tr>
						<td>No Of Leave days:</td>
						<td><label>${leave.noOfLeaveDays}</label></td>
					</tr>
					<tr>
						<td>Total Leave:</td>
						<td><label>${leave.totalLeaves}</label></td>
					</tr>
					<tr>
						<td>Remaining Leaves:</td>
						<td><label>${leave.remainingLeaves}</label></td>
					</tr>
					<tr>
						<td colspan="2"><a class="btn back" href="${pageContext.request.contextPath}/leaves/leaveList">Back</a></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
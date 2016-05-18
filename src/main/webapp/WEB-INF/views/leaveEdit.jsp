<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Edit Leave</title>
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
			<h2>Edit Employee Record</h2>
			<form class="formwrapper"
				action='${pageContext.request.contextPath}/leaveEdit/${leave.leaveId}'
				method="post" modelAttribute="leave">
				<table>
					<tr>
						<td>EmployeeID:</td>
						<td><input name="employeeId" value="${leave.employeeId}"></td>
					</tr>
					<tr>
						<td>Description:</td>
						<td><textarea name="description">${leave.description}</textarea></td>
					</tr>
					<tr>
						<td>Start Date:</td>
						<td><input name="startDate" type="text"
							value="${leave.startDate}" /></td>
					</tr>
					<tr>
						<td>End Date:</td>
						<td><input name="endDate" type="text"
							value="${leave.endDate}" /></td>
					</tr>
					<tr>
						<td>Leave Type:</td>
						<td><input name="leaveType" type="text"
							value="${leave.leaveType}" /></td>
					</tr>
					<tr>
						<td>No Of Leaves:</td>
						<td><input name="noOfLeaveDays" type="text"
							value="${leave.noOfLeaveDays}" /></td>
					</tr>
					<tr>
						<td>Remaining Leaves:</td>
						<td><input name="remainingLeaves" type="text"
							value="${leave.remainingLeaves}" /></td>
					</tr>
					<tr>
						<td>Total Leaves:</td>
						<td><input name="totalLeaves" type="text"
							value="${leave.totalLeaves}" /></td>
					</tr>
					<tr>
						<td>Status:</td>
						<td><select class="listmenu" name="status">
								<option value="PENDING">PENDING</option>
								<option value="APPROVED">APPROVED</option>
								<option value="REJECTED">REJECTED</option>
						</select></td>
					</tr>
					<tr>
					<tr>
						<td><input class="btn" type="submit" value="Update" /></td>
						<td><a class="btn back"
							href="${pageContext.request.contextPath}/leaves/leaveList">Back</a></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
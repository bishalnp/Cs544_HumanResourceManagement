<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
					href="${pageContext.request.contextPath}/employeeDetail?id=${user.employeeId}">My
						Profile</a></li>
				<li id="1"><a
					href="${pageContext.request.contextPath}/employeeMonthYear/?id=${user.employeeId}">My
						Payroll</a></li>
				<li id="2"><a
					href="${pageContext.request.contextPath}/leaves/addLeave?id=${user.employeeId}">Apply
						Leave</a></li>

				<li><a
					href="${pageContext.request.contextPath}/leaveListIndividual?id=${user.employeeId}">My
						Leave Record</a></li>
				<li><a href="${pageContext.request.contextPath}/logOut">Log
						Out</a></li>
			</ul>
		</div>
		<div id="wrapper" class="content">
			<h2>Leave Application Form</h2>
			<form class="formwrapper"
				action="${pageContext.request.contextPath}/leaves/addLeave?id=${user.employeeId}" method="post"
				modelAttribute="leave">
				<table class="tableform">
					<!-- <tr>
						<td colspan="2"><label class="lblClass">Total leave 5
								days</label></td>
					</tr>
					<tr>
						<td colspan="2"><label class="lblClass">Remaining
								leave 7 days</label></td>
					</tr> -->
					<tr>
						<td><label class="lblClass">Description:</label></td>
						<td><textarea class="txtClass" name="description"></textarea></td>
					</tr>
					<tr>
						<td>Start Date:</td>
						<td><input class="txtClass" type="date" name="startDate"></td>
					</tr>
					<tr>
						<td>End Date:</td>
						<td><input class="txtClass" type="date" name="endDate"></td>
					</tr>
					<tr>
						<td>Leave Type:</td>
						<td><select class="listmenu" name="leaveType"><option
									value="SICK">SICK</option>
								<option value="MATERNITY">MATERNITY</option>
								<option value="HOLIDAY">HOLIDAY</option></select>
								</td>
					</tr>
					<!-- <tr>
				<td>Status:</td>
				<td><select><option value="SICK">PENDING</option>
						<option value="MATURNITY">APPROVED</option></select></td>
				</td>
			</tr> -->
					<tr>
						<td>No Of Leaves:</td>
						<td><input class="txtClass" type="text" name="noOfLeaveDays"></td>
					</tr>

<tr>
						<td colspan="2"><input type="submit" value="Submit" class="btn"/></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
</body>
</html>
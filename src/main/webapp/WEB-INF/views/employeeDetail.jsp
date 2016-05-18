<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<title>My Profile</title>
</head>
<body>
	<img src="./resources/images/hr.jpg" class="headerimage" />
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
			<h2>My Profile</h2>
			<form class="formwrapper"
				action="${pageContext.request.contextPath}/employeeDetail/"
				method="post" modelAttribute="employee">
				<fieldset>
					<table>
						<tr>
							<td>First Name:</td>
							<td><label>${employee.firstName}</label>
							<td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><label>${employee.lastName}</label></td>
						</tr>
						<tr>
							<td>DOB:</td>
							<td><label>${employee.dob}</label></td>
						</tr>
						<tr>
							<td>Sex:</td>
							<td><label>${employee.sex}</label></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><label>${employee.email}</label></td>
						</tr>
						<tr>
							<td>Contact Number:</td>
							<td><label>${employee.contactNumber}</label></td>
						</tr>
						<tr>
							<td>Street:</td>
							<td><label>${employee.address.street}</label></td>
						</tr>
						<tr>
							<td>City:</td>
							<td><label>${employee.address.city}</label></td>
						</tr>
						<tr>
							<td>State:</td>
							<td><label>${employee.address.state}</label></td>
						</tr>
						<tr>
							<td>Zip:</td>
							<td><label>${employee.address.zip}</label></td>
						</tr>
						<tr>
							<td>Country:</td>
							<td><label>${employee.address.country}</label></td>
						</tr>
						<tr>
							<td>Join Date:</td>
							<td><label>${employee.joinDate}</label></td>
						</tr>
						<%-- <tr>
							<td>End Date:</td>
							<td><label>${employee.endDate}</label></td>
						</tr> --%>
					<%-- 	<tr>
						<td colspan="2"><a class="btn back" href="${pageContext.request.contextPath}/leaves/leaveList">Back</a></td>
					</tr> --%>
					</table>

				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>
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
<title>Employee Form</title>
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
			<h2>Add New Employee</h2>
			<form action="<spring:url value="/addEmployee"/>" method="post"
				modelAttribute="employee">
				<fieldset>
					<table>
						<tr>
							<td>First Name:</td>
							<td><input type="text" name="firstName"></td>
							<td>Last Name:</td>
							<td><input type="text" name="lastName"></td>
						</tr>

						<tr>
							<td>DOB:</td>
							<td><input type="date" name="dob"></td>
							<td>Sex:</td>
							<td><input type="text" name="sex"></td>
						</tr>

						<tr>
							<td>Email:</td>
							<td><input type="text" name="email"></td>
							<td>Contact Number:</td>
							<td><input type="text" name="contactNumber"></td>
						</tr>

						<tr>
							<td>Street:</td>
							<td><input type="text" name="address.street"></td>
							<td>City:</td>
							<td><input type="text" name="address.city"></td>
						</tr>

						<tr>
							<td>State:</td>
							<td><input type="text" name="address.state"></td>
							<td>Zip:</td>
							<td><input type="text" name="address.zip"></td>
						</tr>

						<tr>
							<td>Country:</td>
							<td><input type="text" name="address.country"></td>
							<td>Join Date:</td>
							<td><input type="date" name="joinDate"></td>
						</tr>

					
						<tr>
							<td>Department:</td>
							<td><select class="listmenu"
								name="department.departmentName">
									<option value="IT Department">IT Department</option>
									<option value="HR Department">HR Department</option>
									<option value="Support Department">Support Department</option>
									<option value="Marketing Department">Marketing
										Department</option>
							</select></td>
							<td>Designation:</td>
							<td><select class="listmenu" name="department.designation">
									<option value="SUPERVISOR">SUPERVISOR</option>
									<option value="DIRECTOR">DIRECTOR</option>
									<option value="HR">HR</option>
									<option value="DEVELOPER">DEVELOPER</option>
									<option value="DESIGNER">DESIGNER</option>
							</select></td>
						</tr>
							<tr>
						<!-- 	<td>End Date:</td>
							<td><input type="date" name="endDate"></td> -->
							
							<td>Password:</td>
							<td><input type="password" name="password"></td>
							<td colspan="2"></td>
							
						</tr>
						<tr>
							<td colspan="4"><input class="btn" type="submit"
								value="Submit"></td>
						</tr>
					</table>
				</fieldset>
			</form>

		</div>
	</div>
</body>
</html>
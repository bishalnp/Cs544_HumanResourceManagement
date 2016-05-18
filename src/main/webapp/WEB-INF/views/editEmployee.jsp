<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
			<h2>Edit Employee</h2>
			<form
				action="${pageContext.request.contextPath}/editEmployee/${employee.employeeId}"
				method="post" modelAttribute="employee">
				<fieldset>
					<legend>Edit Employees:</legend>

					<table>
						<tr>
							<td>First Name:</td>
							<td><input type="text" name="firstName"
								value="${employee.firstName}"></td>
							<td>Last Name:</td>
							<td><input type="text" name="lastName"
								value="${employee.lastName}"></td>
						</tr>
						<tr>
							<td>DOB:</td>
							<td><input type="date" name="dob" value="${employee.dob}">
							</td>
							<td>Sex:</td>
							<td><input type="text" name="sex" value="${employee.sex}"></td>
						</tr>

						<tr>
							<td>Email:</td>
							<td><input type="text" name="email"
								value="${employee.email}"></td>
							<td>Contact Number:</td>
							<td><input type="text" name="contactNumber"
								value="${employee.contactNumber}"></td>
						</tr>
						<tr>
							<td>Street:</td>
							<td><input type="text" name="street"
								value="${employee.address.street}"></td>
							<td>City:</td>
							<td><input type="text" name="city"
								value="${employee.address.city}"></td>
						</tr>

						<tr>
							<td>State:</td>
							<td><input type="text" name="state"
								value="${employee.address.state}"></td>
							<td>Zip:</td>
							<td><input type="text" name="zip"
								value="${employee.address.zip}"></td>
						</tr>
						<tr>
							<td>Country:</td>
							<td><input type="text" name="country"
								value="${employee.address.country}"></td>
							<td>Join Date:</td>
							<td><input type="date" name="joinDate"
								value="${employee.joinDate}"></td>
						</tr>
						<tr>
							<%-- <td>End Date:</td>
							<td><input type="date" name="endDate"
								value="${employee.endDate}"></td> --%>
							<td>Department:</td>
							<td><select class="listmenu"
								name="department.departmentName">
									<option value="${employee.department.departmentName}">${employee.department.departmentName}</option>
									<option value="IT Department">IT Department</option>
									<option value="HR Department">HR Department</option>
									<option value="Support Department">Support Department</option>
									<option value="Marketing Department">Marketing
										Department</option>
							</select></td>
							<td>Designation:</td>
							<td><select class="listmenu" name="department.designation">
									<option value="${employee.department.designation}">${employee.department.designation}</option>
									<option value="SUPERVISOR">SUPERVISOR</option>
									<option value="DIRECTOR">DIRECTOR</option>
									<option value="HR">HR</option>
									<option value="DEVELOPER">DEVELOPER</option>
									<option value="DESIGNER">DESIGNER</option>
							</select></td>
						</tr>
						
						<tr>
							<td><input class="btn" type="submit" value="Submit"></td>
						<td><a class="btn back" href="${pageContext.request.contextPath}/employeeList">Back</a></td>
				
						</tr>
					</table>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>
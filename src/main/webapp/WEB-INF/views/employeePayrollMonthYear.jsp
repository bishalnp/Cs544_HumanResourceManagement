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
<title>My Payroll</title>
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
			<h2>Select Month and Year for Payroll</h2>
			<form:form
				action="${pageContext.request.contextPath}/myPayroll/${user.employeeId} }"
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
						</tr>

					</table>
				</fieldset>
			</form:form>
		</div>
	</div>
</body>
</html>
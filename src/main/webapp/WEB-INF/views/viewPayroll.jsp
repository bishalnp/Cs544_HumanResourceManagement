<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Payroll</title>
</head>
<body>
<h1>Payroll</h1>
	<!--  <form action="" method="post" modelAttribute="payroll"> -->
	
		<fieldset>
			<legend>My Payroll:</legend>
			
			<table>
					<tr>
						<td>Employee ID:</td>
						<td><input type="text" name="employeeId" value="${payroll.employeeId}" readonly> <td>
					</tr>
					<tr>
						<td>First Name:</td>
						<td><input type="text" name="firstName" value="${employee.firstName}" readonly> <td>
					</tr>
					<tr>
						<td>Last Name:</td>
						<td><input type="text" name="lastName" value="${employee.lastName}" readonly> </td>
					</tr>
					<tr>
						<td>Payroll Date:</td>
						<td><input type="text" name="payrollDate" value="${payroll.payrollDate}" readonly> <td>
					</tr>
					<tr>
						<td>No Of Days Worked:</td>
						<td><input type="text" name="noOfDaysWorked" value="${payroll.noOfDaysWorked}" readonly> </td>
					</tr>
					<tr>
				 		<td>Bonus:</td>
				 		<td><input type="text" name="bonus" value="${payroll.bonus}" readonly> </td>
					</tr>
					<tr>	 
						 <td>Gross Earnings:</td>
				 		<td><input type="text" name="grossEarnings" value="${payroll.grossEarnings}" readonly> </td>
					</tr>	
					<tr>
						<td>Total Salary Paid: </td>
						<td><input type="text" name="totalSalary" value="${payroll.totalSalary}" readonly></td>
					</tr>	
					
				</table>
		</fieldset>
<!--	</form> -->
<a href="${pageContext.request.contextPath}/userDashboard">HomePage</a>
</body>
</html>
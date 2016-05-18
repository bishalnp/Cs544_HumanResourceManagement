<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body {
	background-color: #3e94ec;
	font-family: "Roboto", helvetica, arial, sans-serif;
	font-size: 16px;
	text-rendering: optimizeLegibility;
	padding: 1% 15% 0;
}

ul.menu1 {
	padding: 0;
	list-style-type: none;
	height: 26px;
	/*width:500px;margin:0 auto;*/
	/*Uncomment this line to make the menu center-aligned.*/
}

ul.menu1 li {
	border: 1px solid #65A2DC;
	border-right: none;
	list-style-type: none;
	padding: 0;
	margin: 0;
	float: left;
	display: block;
	color: White;
}

ul.menu1 li.lastItem {
	border-right: 1px solid #65A2DC;
}

ul.menu1 li a {
	padding: 0 20px;
	background-image: url(bg.gif);
	border: 1px solid #DDECF9;
	border-top: 1px solid #FFFFFF;
	color: White;
	text-align: left;
	text-decoration: none;
	display: block;
	float: left;
	font: bold 12px Arial;
	line-height: 26px;
}

ul.menu1 li a:hover, ul.menu1 li a.current {
	background-position: 0 -40px;
}

/* table list */
gradient-style {
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 12px;
	margin: 45px;
	width: 480px;
	text-align: left;
	border-collapse: collapse;
}

#gradient-style th {
	font-size: 13px;
	font-weight: normal;
	padding: 8px;
	background: #b9c9fe url('table-images/gradhead.png') repeat-x;
	border-top: 2px solid #d3ddff;
	border-bottom: 1px solid #fff;
	color: #039;
}

#gradient-style td {
	padding: 8px;
	border-bottom: 1px solid #fff;
	color: #669;
	border-top: 1px solid #fff;
	background: #e8edff url('table-images/gradback.png') repeat-x;
}

#gradient-style tfoot tr td {
	background: #e8edff;
	font-size: 12px;
	color: #99c;
}

#gradient-style tbody tr:hover td {
	background: #d0dafd url('table-images/gradhover.png') repeat-x;
	color: #339;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<form:form method="GET" class="formwrapper">
		<h1>Welcome to Human Resource Management</h1>
		<ul class="menu1">
			<li><a href="login">Login</a></li>
			<li><a href="adminDashboard">Admin Dashboard</a></li>
			<li><a href="userDashboard">User Dashboard</a></li>
			<li><a href="leaves/addLeave">Request for Leave</a></li>
			<li><a href="leaves/leaveList">HR Leave Records</a></li>
			<li><a href="leaves/leaveListIndividual">My Leave Records</a></li>
			<li><a href="addEmployee">Add New Employees</a></li>
			<li><a href="${pageContext.request.contextPath}/employeeDetail">Employee
					detail</a></li>
			<li><a href="employeeList">List of Employee</a></li>
			<li class="lastItem"><a
				href="${pageContext.request.contextPath}/EmployeeTimeSheet">Employee
					Time-sheet</a></li>
		</ul>


	</form:form>
</body>
</html>
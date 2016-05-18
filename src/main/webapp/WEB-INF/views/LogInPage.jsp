<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/login.css" />

<title>Login Page</title>
</head>
<body>
	<img src="./resources/images/hr.jpg" class="headerimage" />
	<div id="wrapper">
		<div id="login" class="animate form">
			<form action="${pageContext.request.contextPath}/loginpage"
				method="post">
				<h1>Log in</h1>
				<p>
					<label for="username" class="uname"> Your email address </label> <input
						id="username" type="text" name="email"
						placeholder="Enter email address" />
				</p>
				<p>
					<label for="password" class="youpasswd"> Your password </label> <input
						id="password" type="password" name="password"
						placeholder="Enter password" />
				</p>
				<p class="login button">
					<input type="submit" value="Login" />
				</p>

			</form>
		</div>
	</div>


</body>
</html>
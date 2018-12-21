<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<title>Đăng ký</title>
<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<%@include file="header.jsp" %>

<body class="bg-dark">
	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header">Register an Account</div>
			<div class="card-body">
				<form:form modelAttribute="userDTO" action="registerProcess"
					method="post">
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<form:label path="username">Username</form:label>
								<form:input class="form-control" type="text" name="username" path="username"/>
								<form:errors path="username" cssStyle="color:red;display:block"/>
							</div>
							<div class="col-md-6">
								<form:label path="fullname">Full Name</form:label>
								<form:input class="form-control" type="text" name="fullname" path = "fullname"/>
								<form:errors path="fullname" cssStyle="color:red;display:block"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<form:label path="email">Email address</form:label>
						<form:input class="form-control" type="email" name="email" path="email"/>
						<form:errors path="email" cssStyle="color:red;display:block"/>
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<form:label path="password">Password</form:label>
								<form:password class="form-control" name="password" path="password"/>
								<form:errors path="password" cssStyle="color:red;display:block"/>
							</div>
							<div class="col-md-6">
								<form:label path="confirmPassword">Confirm password</form:label>
								<form:password path="confirmPassword" class="form-control" name="confirmPassword"/>
								<form:errors path="confirmPassword" cssStyle="color:red;display:block"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="g-recaptcha" data-sitekey="6LeR0WcUAAAAAGfR1CAStt1dA7OwzrhdGemw3wwU"></div>
						<form:errors path="reCaptcha" cssStyle="color:red;display:block;margin-left:5px;"></form:errors>
					</div>
					<form:button type="submit" class="btn btn-primary btn-block">Register</form:button>
				</form:form>
				<div class="text-center">
					<a class="d-block small mt-3" href="dangnhap.jsp">Login Page</a> <a
						class="d-block small" href="#">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp" %>
</body>


</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quên mật khẩu</title>
<style type="text/css">
div {
	display: block;
}

body {
	font-size: 100%;
	background: #44474c;
}
.element h2 {
    font-size: 2.5em;
    color: #0086E5;
    text-align: center;
    margin-top: 1em;
    font-weight: 700;
}
.element-main {
    width: 27%;
    background: #fff;
    margin: 2em auto 0em;
    border-radius: 5px;
    padding: 3em 2em;
}
.element-main h1 {
    text-align: center;
    font-size: 2.3em;
    color: #0086E5;
    font-weight: 700;
}
.element-main p {
    font-size: 1em;
    color: #696969;
    line-height: 1.5em;
    margin: 1.5em 0em;
    text-align: center;
}
.element-main input[type="text"] {
    font-size: 1em;
    color: #A29E9E;
    padding: 1em 0.5em;
    display: block;
    width: 95%;
    outline: none;
    margin-bottom: 1em;
    text-align: center;
    border: 1px solid #B9B9B9;
}
.element-main input[type="submit"] {
    font-size: 1em;
    color: #fff;
    background: #0086E5;
    width: 50%;
    padding: 0.8em 0em;
    outline: none;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    border-bottom: 3px solid #045B99;
    display: block;
    margin: 1.5em auto 0;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
	<div class="element">
		<h2>Reset Password Form</h2>
		<div class="element-main">
			<h1>Forgot Password</h1>
			<p>Enter your e-mail address and we'll send you a link to reset
				your password</p>
			<form>
				<input type="text" value="Your e-mail address"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Your e-mail address';}">
				<input type="submit" value="Reset my Password">
			</form>
		</div>
	</div>
<%@include file="footer.jsp" %>
</body>
</html>
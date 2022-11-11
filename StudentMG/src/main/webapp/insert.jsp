<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.main {
	width: 100vw;
	background-position: center;
}

.navbar {
	height: 80px;
	margin: auto;
	background-color: black;
}

.icon {
	width: 360px;
	float: left;
	height: 70px;
}

.logo {
	font-family: Arial;
	color: rgb(245, 162, 27);
	padding: 20px;
	float: left;
	font-size: 28px;
	letter-spacing: 3px;
}

.menu {
	width: 40%;
	float: left;
	height: 70px;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}

ul li {
	list-style: none;
	margin-left: 60px;
	margin-top: 28px;
	font-size: 18px;
}

ul li a {
	text-decoration: none;
	color: #fff;
	transition: 0.04 ease-in-out;
	font-weight: bold;
	font-family: Arial;
	letter-spacing: 1px;
}

ul li a:hover {
	color: rgb(245, 162, 27);
}

body {
	justify-content: center;
}

form {
	width: 30%;
	align-items: center;
}

legend {
	display: block;
	padding-left: 10px;
	padding-right: 10px;
	color: white;;
}

input {
	width: 250px;
	margin: 4px 20px;
}

.form {
	font-size: 25px;
	color: orange;
	font-weight: bold;
	margin-left: 10px;
}

.submit {
	margin-left: 70px;
	background-color: black;
	color: orange;
	height: 35px;
	letter-spacing: 1.5px;
	width: 140px;
}

.data {
	justify-content: center;
	align-items: center;
	margin-left: 40px;
}

.insertf {
	margin-top: 40px;
	margin-left: 190px;
}
</style>
</head>
<body>
	<div>
		<div class="main">
			<div class="navbar">
				<div class="icon">
					<h2 class="logo">Student Managment</h2>
				</div>
				<div class="menu">
					<ul>
						<li><a href="insert.jsp"> Insert </a></li>
						<li><a href="delete.jsp"> Delete </a></li>
						<li><a href="Home.jsp"> Home </a></li>
					</ul>
				</div>
			</div>
		</div>

		<div>
			<div class="insertf">
				<form method="get" action="add">
					<fieldset>
						<legend class="form"> Insert Form </legend>
						<br>
						<div class="data">
							<input type="text" name="name" placeholder="Enter your name"><br>
							<br> <input type="email" name="email" placeholder="Email Id"><br>
							<br> <input type="password" name="password" placeholder="Password"><br> <br> 
							<input type="date" name="dob" placeholder="Date of Birth"><br>
							<br> <input type="text" name="city" placeholder="City"><br>
							<br> <input class="submit" type="submit" value="SUBMIT">
						</div>
						<br>
					</fieldset>
				</form>
			</div>
		</div>

	</div>

</body>
</html>
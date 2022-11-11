<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Style/css.jsp" %>
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
		width: 450px;
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
		margin-left: 20px;
		margin-top: 20px;
		font-size: 20px;
	}
	
	ul li a {
		text-decoration: none;
		color: #fff;
		transition: 0.04 ease-in-out;
		font-weight: bold;
		font-family: Arial;
		letter-spacing: 1.5px;
	}
	
	ul li a:hover {
		color: rgb(245, 162, 27);
	}
	
	.search {
		width: 330px;
		margin-left: 30px;
		margin-top:5px;
		float: left;
	}
	
	.srch {
		font-family: 'Times New Roman';
		width: 200px;
		height: 20px;
		background: transparent;
		margin-top: 10px;
		font-size: 15px;
		float: left;
		padding: 10px;
		font-style: bold;
		color: #fff;
		border-radius: 5px;
		border: none;
	}
	
	.btn {
		width: 100px;
		height: 44px;
		border: 2px solid;
		font-size: 14px;
		margin-top: 2px;
		background-color: rgb(245, 162, 27);
	}
	
	̰.btn:focus {
		outline: none;
		color:White;
	}
	
	.srch:focus {
		outline: none;
	}
</style>
</head>

<body>

	<div class="main">
		<div class="navbar">
			<div class="icon">
				<h2 class="logo">STUDENT MANAGMENT</h2>
			</div>
			<div class="menu">
				<ul>
					<li><a href="insert.jsp"> Insert </a></li>
					<li><a href="delete.jsp"> Delete </a></li>
				</ul>
			</div>
			<div class="search">
				<input class="srch" type="text" name="" placeholder="Search here...">
				<a href="#">
					<button class="btn">Search</button>
				</a>
			</div>
		</div>
	</div>
	
	<% String errormessage=(String)session.getAttribute("errorMessage1"); %>
	<%
		if(errormessage!=null){%>
		<div class="alert alert-success alert-dismissible fade show text-center" role="alert">
		  <strong><%= errormessage%></strong> 
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<%}
	%>
	
	<div class="container-fluid back-img text-center text-success">
		<h1 class="mt-2">Welcome to Student Managment</h1>
	</div>

	
</body>
</html>
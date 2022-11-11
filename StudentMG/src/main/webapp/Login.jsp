<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
<%@include file="Style/css.jsp" %>
</head>
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
</style>
<body>

	<div class="main">
		<div class="navbar">
			<div class="icon">
				<h2 class="logo">Student Managment</h2>
			</div>
		</div>
	</div>
		<br>
	<br>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Login Page</h4>
						<form action="login" method="post">
							<%
								String error = (String) request.getAttribute("error");
								if (error != null) {
								%>
								<p class="text-center text-danger"><%=error%></p>
								<%
								}
								%>
								<%
								String errormsg = (String) request.getAttribute("errormsg");
								if (errormsg != null) {
								%>
								<p class="text-center text-success"><%=errormsg%></p>
								<%
								}
							%>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email" required>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password" required>
							</div>
							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 300px;">
		<%@include file="Style/footer.jsp"%>
	</div>

</body>
</html>
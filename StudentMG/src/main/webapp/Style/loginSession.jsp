<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String isLogin = (String) session.getAttribute("checkValidUser");
	if (isLogin != null) {
		response.sendRedirect("index.jsp");
	}
%>
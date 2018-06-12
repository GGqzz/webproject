<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	session.setAttribute("brand","不限");
	session.setAttribute("style", "不限");
	session.setAttribute("minPrice", "0");
	session.setAttribute("maxPrice", "0");
	session.setAttribute("minAge", "0");
	session.setAttribute("maxAge", "0");
	output.print("<script>window.location.href=\"buyCar.jsp\";</script>");
	output.close();
%>
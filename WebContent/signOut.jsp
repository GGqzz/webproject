<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("utf-8");
	PrintWriter output=response.getWriter();
	session.removeAttribute("user");
	output.print("<script>alert('返回主页');window.location.href=\"index.html\";</script>");
%>
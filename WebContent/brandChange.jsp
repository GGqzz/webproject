<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	String brand=request.getParameter("brand");
	
	System.out.println(brand);
	session.setAttribute("brand", brand);
	output.print("<script>window.location.href=\"buyCar.jsp\";</script>");
	output.close();
%>
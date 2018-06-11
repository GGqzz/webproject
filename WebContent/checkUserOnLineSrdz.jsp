<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("utf-8");
	PrintWriter output=response.getWriter();
	if(session.getAttribute("user")!=null){
		output.print("<script>window.location.href=\"srdz.jsp\";</script>");
	}
	else{
		output.print("<script>alert(\"您还未登陆,请登陆!\");window.location.href=\"sign.html\";</script>");
	}
%>
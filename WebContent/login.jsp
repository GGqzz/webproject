<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dbutil.*" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%@page import="java.sql.*" %>
<%
	response.setContentType("text/html;charset=utf-8");
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	User user=DBUtil.login(DBUtil.getConnection(), name, password);
	PrintWriter output=response.getWriter();
	if(user==null){
		output.print("<script>alert('用户名或者密码错误,请重新输入!');window.history.back(-1);</script>");
		//request.getRequestDispatcher("sign.jsp").forward(request, response);
	}
	else{
		session.setAttribute("user", user);
		output.print("<script>alert('登录成功,欢迎！');window.location.href=\"index.html\";</script>");
	}
	output.flush();
	output.close();
%>



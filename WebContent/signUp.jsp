<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dbutil.*" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%@page import="java.sql.*" %>
<% 
	Connection con=DBUtil.getConnection();
	response.setContentType("text/html;charset=utf-8");
	request.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	if(DBUtil.checkUser(con, request.getParameter("name"))==false){
		output.print("<script>alert('用户名重复,请更换用户名');window.history.back(-1);</script>");
	}
	else{
		User user=new User();
		user.setUserId(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		user.setMail(request.getParameter("email"));
		user.setAddress(request.getParameter("address"));
		user.setTelephoneNumber(request.getParameter("telephoneNumber"));
		UserDAO userdao=new UserDAO();
		userdao.adduser(con, user);
		output.print("<script>alert('恭喜,用户注册成功!');window.history.back(-1);</script>");
		DBUtil.closeConnection(con);
		output.flush();
		output.close();
	}
%>
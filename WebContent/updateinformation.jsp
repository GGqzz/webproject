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
	String name=request.getParameter("user_id");
	String password=request.getParameter("password");
	String newPassword=request.getParameter("newPassword");
	String newMobile=request.getParameter("newMobile");
	String newAddress=request.getParameter("newAddress");
	String newEmail=request.getParameter("newEmail");
	UserDAO userdao=new UserDAO();
	User user=DBUtil.login(DBUtil.getConnection(), name, password);
	PrintWriter output=response.getWriter();
	System.out.println(name+" "+newMobile+" "+newAddress+" "+newEmail);
	if(name==null){
		output.print("<script>alert('错误,请重新输入!');window.history.back(-1);</script>");
		//request.getRequestDispatcher("sign.jsp").forward(request, response);
	}
	else{
		userdao.updateUserInformation(DBUtil.getConnection(),newMobile,newAddress,newEmail,name);
		output.print("<script>alert('修改成功！');window.history.back(-1);</script>");
	}
	output.flush();
	output.close();
%>
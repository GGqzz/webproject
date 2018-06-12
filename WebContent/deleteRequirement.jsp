<%@page import="dbutil.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.Requirement_DingDanDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	String require_id=request.getParameter("require_id");
	Requirement_DingDanDAO rdd=new Requirement_DingDanDAO();
	Connection connection=DBUtil.getConnection();
	rdd.deleteUserRequirement(connection, require_id);
	output.print("<script>alert('删除成功!');window.location.href=\"会员中心_我的需求.jsp\";</script>");
	
	DBUtil.closeConnection(connection);
%>
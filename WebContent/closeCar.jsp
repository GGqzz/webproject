<%@page import="dbutil.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.*"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	Connection connection=DBUtil.getConnection();
	DingDanDAO dingDandao=new DingDanDAO();
	CarDAO cardao=new CarDAO();
	String car_id=request.getParameter("car_id");
	
	dingDandao.deleteOrder(connection, car_id);
	cardao.deleteCar(connection, car_id);
	output.print("<script>alert('删除成功');window.location.href=\"会员中心_我的车.jsp\";</script>");
	DBUtil.closeConnection(connection);
%>
<%@page import="dao.DingDanDAO"%>
<%@page import="dbutil.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CarDAO"%>
<%@page import="dao.UserDAO"%>
<%@page import="model.*"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	DingDanDAO dingDanDAO=new DingDanDAO();
	Connection connection=DBUtil.getConnection();
	String carId=request.getParameter("car_id");
	dingDanDAO.closeOrder(connection, carId);
	//System.out.print(request.getParameter("buyer_id"));
	output.print("<script>alert('关闭交易成功');window.location.href=\"会员中心_我的需求.jsp\";</script>");
	
	DBUtil.closeConnection(connection);
%>
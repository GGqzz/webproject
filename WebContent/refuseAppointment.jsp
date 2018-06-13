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
	CarDAO cardao=new CarDAO();
	UserDAO userdao=new UserDAO();
	Connection connection=DBUtil.getConnection();
	Car car=new Car();
	car=cardao.searchCarByID(connection,Integer.valueOf(request.getParameter("car_id")));
	User user=userdao.getUserById(connection, request.getParameter("buyer_id"));
	//System.out.print(request.getParameter("buyer_id"));
	cardao.changeOrderState(connection, car, user, "在售");
	output.print("<script>alert('拒绝成功');window.location.href=\"会员中心_我的车.jsp\";</script>");
	
	DBUtil.closeConnection(connection);
%>
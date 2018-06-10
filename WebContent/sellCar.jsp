<%@page import="java.text.SimpleDateFormat"%>
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
	User user=(User)session.getAttribute("user");
	Connection con=DBUtil.getConnection();
	PrintWriter output=response.getWriter();
	Car car=new Car();
	java.util.Date date=new SimpleDateFormat("yyyy-MM").parse(request.getParameter("buytime"));
	//System.out.println(request.getParameter("buytime")+" "+request.getParameter("brandCar")+" "+request.getParameter("brandCar"));
	String t=new SimpleDateFormat("yyyy").format(date);
	int age=2018-Integer.parseInt(t);//计算几年内买的车
	if(age<0){
		output.print("<script>alert('还没到这个时候呢!');window.history.back(-1);</script>");
	}
	else{
		car.setBuy_Time(request.getParameter("buytime"));
		car.setBrand(request.getParameter("brandCar"));
		car.setStyle(request.getParameter("styleCar"));
		car.setPrice(request.getParameter("price"));
		car.setMile(request.getParameter("mile"));
		car.setAge(String.valueOf(age));
		CarDAO cardao=new CarDAO();
		cardao.addCar(con, car, user.getUserId());
		output.print("<script>alert('您的爱车已经发布,请去个人中心查看！');window.location.href=\"会员中心_我的车.html\";</script>");
	}

%>
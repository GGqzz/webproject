<%@page import="java.io.PrintWriter"%>
<%@page import="dao.Requirement_DingDanDAO"%>
<%@page import="dbutil.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html;charset=utf-8");
	request.setCharacterEncoding("UTF-8");
	User user=(User)session.getAttribute("user");
	Connection con=DBUtil.getConnection();
	Requirement_DingDan rdd=new Requirement_DingDan();
	rdd.setBrand(request.getParameter("brand"));
	rdd.setStyle(request.getParameter("style"));
	rdd.setAge(request.getParameter("age"));
	rdd.setMin_price(request.getParameter("minPrice"));
	rdd.setMax_price(request.getParameter("maxPrice"));
	rdd.setOther_require(request.getParameter("content"));
	//System.out.println(request.getParameter("maxPrice")+" "+rdd.getMax_price()+" "+rdd.getBrand()+" "+
		//	rdd.getStyle()+" "+rdd.getAge()+" "+rdd.getOther_require()+" "+user.getUserId());
	
	Requirement_DingDanDAO rdddao=new Requirement_DingDanDAO();
	rdddao.addRequirement_DingDan(con, rdd, user.getUserId());
	
	PrintWriter output=response.getWriter();
	output.print("<script>alert('私人定制发布成功，请到个人中心查看！');window.location.href=\"会员中心_我的需求.jsp\";</script>");
	
	
%>
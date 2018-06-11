<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dbutil.*" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.Vector" %>
<%
	response.setCharacterEncoding("UTF-8");
	Vector<Car> carList=new Vector<Car>();
	Connection con=DBUtil.getConnection();
	CarDAO cardao=new CarDAO();
	carList=cardao.getCarListSortByPrice(con);
	int pageCount;
	if(carList.size()%2==0){
		pageCount=carList.size()/2;
	}
	else{
		pageCount=carList.size()/2+1;
	}
	//当前页面
	int currentPage=0;
	session.setAttribute("pageCount", pageCount);
	session.setAttribute("currentPage", currentPage);
	session.setAttribute("carList", carList);
	DBUtil.closeConnection(con);
	PrintWriter output=response.getWriter();
	//System.out.print(session.getAttribute("currentPage"));
	output.print("<script>window.location.href=\"carList.jsp\";</script>");
%>
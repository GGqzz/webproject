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
	
	String brand=(String)session.getAttribute("brand");
	String style=(String)session.getAttribute("style");
	float minPrice=Float.valueOf((String)session.getAttribute(("minPrice")));
	float maxPrice=Float.valueOf((String)session.getAttribute(("maxPrice")));
	String minAge=(String)session.getAttribute("minAge");
	String maxAge=(String)session.getAttribute("maxAge");
	carList=cardao.getCarList(con,brand,style,minPrice,maxPrice,minAge,maxAge);
	//计算中共有几页商品
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
	
	output.close();
%>
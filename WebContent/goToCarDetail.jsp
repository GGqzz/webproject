<%@page import="dbutil.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%
	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	String car_id=request.getParameter("car_id");
	Vector<Car> carList=new Vector<Car>();
	CarDAO cardao=new CarDAO();
	Connection con=DBUtil.getConnection();
	carList=cardao.getCarList(con);
	session.setAttribute("carList", carList);
	if(car_id.equals("208")){
		output.print("<script>window.location.href='carDetail.jsp?carNumber=0'</script>");
	}
	else if(car_id.equals("209")){
		output.print("<script>window.location.href='carDetail.jsp?carNumber=1'</script>");
	}
	else if(car_id.equals("210")){
		output.print("<script>window.location.href='carDetail.jsp?carNumber=2'</script>");
	}
	else if(car_id.equals("211")){
		output.print("<script>window.location.href='carDetail.jsp?carNumber=3'</script>");
	}
	DBUtil.closeConnection(con);
	
%>
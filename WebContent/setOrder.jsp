<%@page import="dbutil.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%
	response.setContentType("text/html;charset=utf-8");
	request.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	if(session.getAttribute("user")!=null){
		Connection con=DBUtil.getConnection();
		User user=(User)session.getAttribute("user");
		CarDAO cardao=new CarDAO();
		Car car=cardao.searchCarByID(con, Integer.parseInt(request.getParameter("car_id")));
		if(cardao.isSameUser(con, user, car)){
			output.print("<script>alert(\"您不能购买自己的车!\");window.history.back(-1);</script>");
		}
		else{
			cardao.changeOrderState(con, car, user, "预约中");
			output.print("<script>alert(\"预约成功!请等待卖家给予回复,可在个人中心看到订单状态。\");window.location.href=\"会员中心_我的需求.jsp\";</script>");
		}
	}
	else{
		output.print("<script>alert(\"您还未登陆,请登陆!\");window.location.href=\"sign.html\";</script>");
	}
	
%>
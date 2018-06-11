<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	int cPage=Integer.valueOf(request.getParameter("cPage"));
	if(cPage<(int)session.getAttribute("pageCount")&&cPage>=0){
		session.setAttribute("currentPage", cPage);
	}
	//System.out.println(session.getAttribute("pageCount")+" "+session.getAttribute("currentPage"));
	output.print("<script>window.location.href=\"carList.jsp\";</script>");
%>
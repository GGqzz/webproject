<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dbutil.*" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.PrintWriter"%>
<% 
	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");
	PrintWriter output=response.getWriter();
	Connection con=DBUtil.getConnection();
	
	//前台筛选条件
	String brand=request.getParameter("brandRadio");
	String price=request.getParameter("priceRadio");
	String style=request.getParameter("styleRadio");
	String age=request.getParameter("ageRadio");
	String pressure=request.getParameter("pressureRadio");
	
	String sql="select * from car ";
	//根据前台的筛选条件修改sql语句
	if(brand.equals("不限")&&price.equals("不限")&&style.equals("不限")&&age.equals("不限")&&pressure.equals("不限")){
	}
	else{
		int flag=0;//判断是否要加and
		sql+="where";
		if(!brand.equals("不限")){
			sql+="brand="+brand;
			flag=1;
		}
		if(!price.equals("不限")){
			if(flag==1){
				sql+="and";
			}
			sql+="price="+price;
		}
		if(!style.equals("不限")){
			if(flag==1){
				sql+="and";
			}
			sql+="style="+style;
		}
		if(!age.equals("不限")){
			if(flag==1){
				sql+="and";
			}
			sql+="age="+age;
		}
	}
	Vector<Car> carList=new Vector<Car>();
	ResultSet rs=con.prepareStatement(sql).executeQuery();
	int i=0;
	while(rs.next()){
		Car car=new Car();
		car.setCar_id(rs.getString("car_id"));
		car.setOrder_id(rs.getString("order_id"));
		car.setBrand(rs.getString("brand"));
		car.setAge(rs.getString("age"));
		car.setPrice(rs.getFloat("price"));
		car.setStyle(rs.getString("style"));
		car.setMile(rs.getString("mile"));
		String imageSQL="select * from car,car_imageconnect,image where car.car_id=car_imageconnect.car_id and car_imageconnect.image_id=image.image_id and car.car_id="
				+car.getCar_id();
		ResultSet imageRs=con.prepareStatement(imageSQL).executeQuery();
		Vector<Image> images=new Vector<Image>();
		while(imageRs.next()){
			Image image=new Image();
			image.setImage_address(imageRs.getString("image_address"));
			image.setImage_id(imageRs.getString("image_id"));
			images.add(image);
		}
		car.setImageList(images);
		carList.add(car);
		i++;
	}
	session.setAttribute("carList", carList);
	session.setAttribute("listCount", i);
	output.print("<script>documen</script>");
	rs.close();
	DBUtil.closeConnection(con);
%>
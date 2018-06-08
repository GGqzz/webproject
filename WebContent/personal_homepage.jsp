<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dbutil.*" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%@page import="java.sql.*" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>个人主页</title>
<style type="text/css">
body {
	background-size: 100%,100%;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #000000;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
</style>
<link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/index.css" />
    <link rel="shortcut icon" href="favicon.ico" />

    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" type="text/css" href="css/content.css" />
</head>
<body >
<div class="public-header">
        <img src="favicon.ico" />
        <a href="main.jsp">福大二手车</a>
        <a class="function1" href="main.jsp">首页</a>
        <a class="function" href="buy_car.jsp">我要买车</a>
        <a class="function" href="sell_car.jsp">我要卖车</a>
        <a class="function" href="GaofenFilm.jsp">联系我们</a>
        <form class="header-search">
        <div class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
            <button type="button">注册</button>
            <div class="morph-content">
                <div>
                    <div class="content-style-form content-style-form-1">
                        <span class="icon icon-close">Close the dialog</span>
                        <h2>Login</h2>
                        <form  action="loginServlet"   method="get">
                            <p><label>Email</label><input type="text1" /></p>
                            <p><label>Password</label><input type="password" /></p>
                            <p><button type="submit" id="btn_submit" >Login</button></p>
                        
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="morph-button morph-button-modal morph-button-modal-3 morph-button-fixed">
            <button type="button">登录</button>
            <div class="morph-content">
                <div>
                    <div class="content-style-form content-style-form-2">
                        <span class="icon icon-close">Close the dialog</span>
                        <h2>Sign Up</h2>
                        <form>
                            <p><label>Email</label><input type="text1" /></p>
                            <p><label>Password</label><input type="password" /></p>
                            <p><label>Repeat Password</label><input type="password" /></p>
                            <p><button>Sign Up</button></p>
                            <p><button type="submit" id="btn_submit" >Sign Up</button></p>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <a class="function2" href="Play record.html">已下载▼</a>
    </div>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td><img src="images/u=585834479,2252628897&fm=27&gp=0.jpg" width="1366" height="200" alt=""/></td>
    </tr>
  </tbody>
</table>
<table width="1024" height="55" border="0" align="center" cellpadding="0" cellspacing="10"  style="color: #000000; font-style: normal;">
  <tbody>
    <tr bgcolor="#D6D6D6">
      <td width="8%" align="center" bgcolor="#FFFFFF">&nbsp;</td>
      <td width="10%" align="center"><a href="#">主页</a></td>
      <td width="15%" align="center"><a href="#">我要买车</a></td>
      <td width="15%" align="center"><a href="#">我要卖车</a></td>
      <td width="16%" align="center"><a href="#">发布需求</a></td>
      <td width="13%" align="center"><a href="dv.html">个人主页</a></td>
      <td width="13%" align="center"><a href="#">联系我们</a></td>
      <td width="10%" align="center"><img src="images/fg-land.gif" width="49" height="19" alt=""/></td>
    </tr>
  </tbody>
</table>
<table width="1024" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td height="63" align="center"><strong style="font-size: 36px; font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; color: #000000;">个人信息</strong></td>
    </tr>
  </tbody>
</table>
<table width="1024" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="260" height="132" rowspan="3" bgcolor="#EFEAEA"><img src="images/u=4294195975,4274483686&fm=27&gp=0.jpg" width="181" height="200" alt=""/></td>
      <td width="382" height="72" bgcolor="#EFEAEA">用户名：***</td>
      <td width="382" bgcolor="#EFEAEA">绑定手机：***********</td>
    </tr>
    <tr>
      <td height="50" bgcolor="#EFEAEA">常用邮箱：*********</td>
      <td height="50" bgcolor="#EFEAEA">QQ：******</td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#EFEAEA"><p>收货地址：**************</p></td>
    </tr>
    <tr>
      <td height="90" colspan="3" align="center" style="font-size: 36px"><strong>我的订单</strong></td>
    </tr>
  </tbody>
</table>
<table width="1024" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="462" height="173" bgcolor="#EFEAEA"><img src="images/u=1289570676,3190367867&fm=27&gp=0.jpg" width="381" height="200" alt=""/></td>
      <td width="154" bgcolor="#EFEAEA">山地越野自行车</td>
      <td width="176" bgcolor="#EFEAEA"><p>颜色：黑白</p>
        <p>性能：变速，碟刹</p>
      <p>新旧程度：八成新</p></td>
      <td width="104" bgcolor="#EFEAEA">250元</td>
      <td width="128" bgcolor="#EFEAEA">状态：已卖出</td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>
<table width="1024" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="463" bgcolor="#EFEAEA"><img src="images/u=2256690445,923913280&fm=11&gp=0.jpg" width="387" height="200" alt=""/></td>
      <td width="157" bgcolor="#EFEAEA">雅迪电动车</td>
      <td width="175" bgcolor="#EFEAEA"><p>颜色：黑白</p>
        <p>性能：续航持久，碟刹</p>
      <p>新旧程度：九成新</p></td>
      <td width="105" bgcolor="#EFEAEA">1500元</td>
      <td width="124" bgcolor="#EFEAEA">状态：已买入</td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>

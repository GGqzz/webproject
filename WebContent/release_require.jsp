<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发布需求</title>
<style type="text/css">
body {
	margin-left: 300px;
	margin-right: 250px;
	margin-top: 30px;
	background-attachment: fixed;
	background-image: url(image/049e545a5df367519ca04d5a715d2b82.jpg);
	background-repeat: repeat;
	background-position: center top;
	color: #000000;
}
#品牌_0 {
	color: #000;
}
.F1 {
	font-weight: bold;
	font-family: "Comic Sans MS", cursive;
}
.F1 {
	font-family: "Comic Sans MS", cursive;
	color: #D6D6D6;
}
.bt1 {
	background-image: url(image/QQ%E6%88%AA%E5%9B%BE20180519225747.png);
	font-family: "Comic Sans MS", cursive;
}
.bt2 {
	background-image: url(image/QQ%E6%88%AA%E5%9B%BE20180519225758.png) ;
	font-size: 18px;
}
.t2 {
}
.t1 {
	background-image: url(image/QQ%E6%88%AA%E5%9B%BE20180519225718.png);
	font-size: 18px;
}
.bt3 {
	background-image: url(image/QQ%E6%88%AA%E5%9B%BE20180519225728.png);
	font-size: 18px;
}
a:link {
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
		<link rel="stylesheet" href="css/BuyCar.css" />
		<link rel="stylesheet" href="css/nav.css" />
		
		<link rel="stylesheet" href="css/reset.css" />
   		<link rel="stylesheet" href="css/common.css" />
    	<link rel="stylesheet" href="css/index.css" />
   		<link rel="shortcut icon" href="favicon.ico" />
   		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
    	<link rel="stylesheet" type="text/css" href="css/demo.css" />
    	<link rel="stylesheet" type="text/css" href="css/component.css" />
   		<link rel="stylesheet" type="text/css" href="css/content.css" />
</head>

<body bgcolor="#FFFFFF" >
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
<span class="F1"><a name="回到顶部" id="回到顶部"></a></span>
<table width="1280" border="0" cellpadding="0" cellspacing="15">
  <tr>
    
    <td width="40" height="28" align="center" bgcolor="#999999" class="bt1">首页</td>
    <td width="60" align="center" bgcolor="#999999" class="bt1">我要买车</td>
    <td width="60" align="center" bgcolor="#999999" class="bt1">我要买车</td>
    <td width="60" align="center" bgcolor="#999999" class="bt1">发布需求</td>
    <td width="40" align="center" bgcolor="#999999" class="bt1"><a href="https://www.guazi.com/fz/">登录</a></td>
  </tr>
</table>
<table width="1280" border="0" cellpadding="0" cellspacing="15">
  <tr>
    <td width="950" height="81"  bgcolor="#CCCCCC" ><form id="form3" name="form3" method="post" action="">
      <p class="t1">&nbsp;&nbsp;品牌：</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_0" />
          雅迪</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_1" />
          新日</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_2" />
          绿源</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_3" />
          E客</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_4" />
          台铃</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_5" />
          小米</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_6" />
          小刀</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_7" />
          立马</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_8" />
          新大洲</label>
        
        <label>
          <input type="radio" name="品牌" value="单选" id="品牌_9" />
          小牛</label>
        
      </p>
    </form>
    <hr noshade="noshade" /></td>
  </tr>
  <tr>
    <td height="90" bgcolor="#CCCCCC"><form id="form2" name="form2" method="post" action="">
      <p class="bt2">&nbsp;&nbsp;类型：</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
            <input type="radio" name="类型" value="单选" id="类型_0" />
          电动摩托车</label>
        
        <label>
          <input type="radio" name="类型" value="单选" id="类型_1" />
          电动自行车</label>
        
        <label>
          <input type="radio" name="类型" value="单选" id="类型_2" />
          电动滑板车</label>
        
        <label>
          <input type="radio" name="类型" value="单选" id="类型_3" />
          电动平衡车</label>
        
      </p>
    </form>
    <hr noshade="noshade" /></td>
  </tr>
  <tr>
    <td height="195" border="0.5" bgcolor="#CCCCCC"><form id="form1"  name="form1" method="post" action="">
        <p class="bt3">&nbsp;&nbsp;价格区间：</p>
        <p>
          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="价格区间" value="单选" id="价格区间_0" />
          500-1000</label>
          <br />
          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="价格区间" value="单选" id="价格区间_1" />
          1000-1500</label>
          <br />
          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="价格区间" value="单选" id="价格区间_2" />
            1500-2000</label>
          <br />
          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="价格区间" value="单选" id="价格区间_3" />
          2000-2500</label>
          <br />
          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="价格区间" value="单选" id="价格区间_4" />
            2500-3000</label>
          <br />
          <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="价格区间" value="单选" id="价格区间_5" />
          3000-3500</label>
          <br />
        </p>
    </form>
    <hr noshade="noshade" /></td>
  </tr>
  <tr bgcolor="#0066FF">						
    <td height="141" bgcolor="#CCCCCC"><form id="form4" name="form4" method="post" action="">
      
      <div align="center">
        <input name="1" type="submit" class="bt2" id="1" style="width:160px;height:60px;border:1px solid #DCDCDC;background:#999"  value="已选好，我要发布" />
      </div>
    </form></td>
  </tr>
</table>
<table width="1280" height="289" border="0" cellpadding="0" cellspacing="15">
<tr></tr>
<tr></tr>
<tr></tr>
<tr>
  <td align="center" bgcolor="#FFFFFF"><p> <img src="image/u=98293212,3405978788&amp;fm=27&amp;gp=0.jpg" width="238" height="200" />&nbsp; &nbsp;&nbsp;</p></td>
  <td align="center" bgcolor="#FFFFFF"><img src="image/u=515779666,2971062691&amp;fm=200&amp;gp=0.jpg" width="300" height="200" /></td>
  <td align="center" bgcolor="#FFFFFF"><img src="image/u=1693989845,1830865995&amp;fm=27&amp;gp=0.jpg" width="300" height="200" /></td>
</tr>
<tr>
  <td align="center" bgcolor="#FFFFFF"><img src="image/u=2456866427,2211431992&amp;fm=200&amp;gp=0.jpg" width="300" height="200" /></td>
  <td align="center" bgcolor="#FFFFFF"><img src="image/u=2515289574,2944828549&amp;fm=27&amp;gp=0.jpg" width="300" height="225" /></td>
  <td align="center" bgcolor="#FFFFFF"><img src="image/u=2530193426,4134131963&amp;fm=27&amp;gp=0.jpg" width="300" height="225" /></td>
</tr>
<tr>
  <td height="110" align="center" bgcolor="#FFFFFF"><img src="image/u=3656832226,1348329033&amp;fm=27&amp;gp=0.jpg" width="300" height="253" /></td>
  <td align="center" bgcolor="#FFFFFF"><img src="image/u=4215066434,2371016800&amp;fm=27&amp;gp=0.jpg" width="300" height="210" /></td>
  <td align="center" bgcolor="#FFFFFF"><img src="image/下载 (1).jpg" width="300" height="213" /></td>
</tr>
</table>
<table width="1280" height="51" border="0" cellspacing="15">
  <tr>
    <td width="100" align="center" bgcolor="#FFFFFF"><a href="#回到顶部">回到顶部</a></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@ page import="dbutil.*" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>买车页面</title>
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
		
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/jquery-nav.js" ></script>
	</head>
	<body>
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
		<div class="main_body">
			<!--
            	作者：智钊
            	时间：2018-05-18
            	描述：对电动车进行筛选
            -->
			<div class="screen">
				<div class="condition">
				<form action="showWare0-0-0-0-0-0.jsp" method="post">
				<dl>
					<dt>品牌</dt>
					<dd>
						<div class="dd-top">
							<span>
									<label><input type="radio" name="brandRadio" checked="checked" value="不限" />不限</label>
									<label><input type="radio" name="brandRadio" value="绿源" />绿源</label>
									<label><input type="radio" name="brandRadio" value="雅迪" />雅迪</label>
									<label><input type="radio" name="brandRadio" value="爱玛" />爱玛</label>
									<label><input type="radio" name="brandRadio" value="新日" />新日</label>
									<label><input type="radio" name="brandRadio" value="其他" />其他</label>
						</span>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>价格</dt>
					<dd>
						<div class="dd-top">
							<span>
							<label><input type="radio" checked="checked" name="priceRadio" />不限</label>
							<label><input type="radio" name="priceRadio" />1000以下</label>
							<label><input type="radio" name="priceRadio" />1000-1500</label>
							<label><input type="radio" name="priceRadio" />1500-2000</label>
							<label><input type="radio" name="priceRadio" />2000以上</label>
						</span>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>款式</dt>
					<dd>
						<div class="dd-top">
							<span>
							<label><input type="radio" checked="checked"  name="styleRadio" />不限</label>
							<label><input type="radio" name="styleRadio" />小龟</label>
							<label><input type="radio" name="styleRadio" />大龟</label>
							<label><input type="radio" name="styleRadio" />踏板车</label>
							<label><input type="radio" name="styleRadio" />小牛</label>
							<label><input type="radio" name="styleRadio" />滑板车</label>
							<label><input type="radio" name="styleRadio" />其他</label>
						</span>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>车龄</dt>
					<dd>
						<div class="dd-top">
							<span>
							<label><input type="radio" checked="checked" name="ageRadio" />不限</label>
							<label><input type="radio" name="ageRadio" />一年以内</label>
							<label><input type="radio" name="ageRadio" />三年以内</label>
							<label><input type="radio" name="ageRadio" />五年以内</label>
							<label><input type="radio" name="ageRadio" />五年以上</label>
						</span>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>电压</dt>
					<dd>
						<div class="dd-top">
							<span>
							<label><input type="radio" checked="checked" name="pressureRadio" />不限</label>
							<label><input type="radio" name="pressureRadio" />60V</label>
							<label><input type="radio" name="pressureRadio" />48V</label>
							<label><input type="radio" name="pressureRadio" />36V</label>
						</span>
						</div>
					</dd>
				</dl>
				<input type="submit" value="提交条件">
				</form>
			</div>
			</div>
			<!--
            	作者：offline
            	时间：2018-05-18
            	描述：搜索结果
            -->
			<div class="screenResult">
				<p id="screenResult">查找到0个结果</p>
			</div>
			<!--
            	作者：offline
            	时间：2018-05-18
            	描述：排序
            -->
            <div class="sortcontainer">
            	<div class="sort">
            		<a>排序方式:</a>
            		<input type="button" value="默认排序 ↑" />
            		<input type="button" value="价格 ↑" />
            		<input type="button" value="车龄 ↑" />
           		</div>
            </div>
            <!--
            	作者：offline
            	时间：2018-05-18
            	描述：浏览搜索结果
            -->
            <div class="carlistbox">
            	<ul class="carList" id="carList">
            		<li>
            			<a href="www.baidu.com">
            				<img src="img/timg2.jpg" />
            				<h3>碉堡车</h3>
            				<div class="carIfo">
            					<p id="carAge">2012年</p>
            				</div>
            				<div class="carPrice">
            					<p id="carPrice">1000W</p>
            				</div>
            			</a>
            		</li>
            		<li>
            			<a href="www.baidu.com">
            				<img src="img/timg2.jpg" />
            				<h3>碉堡车</h3>
            				<div class="carIfo">
            					<p id="carAge">2012年</p>
            				</div>
            				<div class="carPrice">
            					<p id="carPrice">1000W</p>
            				</div>
            			</a>
            		</li>
            		<li>
            			<a href="www.baidu.com">
            				<img src="img/timg2.jpg" />
            				<h3>碉堡车</h3>
            				<div class="carIfo">
            					<p id="carAge">2012年</p>
            				</div>
            				<div class="carPrice">
            					<p id="carPrice">1000W</p>
            				</div>
            			</a>
            		</li>
            		<li>
            			<a href="www.baidu.com">
            				<img src="img/timg2.jpg" />
            				<h3>碉堡车</h3>
            				<div class="carIfo">
            					<p id="carAge">2012年</p>
            				</div>
            				<div class="carPrice">
            					<p id="carPrice">1000W</p>
            				</div>
            			</a>
            		</li>
            		<li>
            			<a href="www.baidu.com">
            				<img src="img/timg2.jpg" />
            				<h3>碉堡车</h3>
            				<div class="carIfo">
            					<p id="carAge">2012年</p>
            				</div>
            				<div class="carPrice">
            					<p id="carPrice">1000W</p>
            				</div>
            			</a>
            		</li>
            	</ul>
            </div>
		</div>
	</body>
</html>
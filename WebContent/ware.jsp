<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>浏览二手车</title>
		<link rel="stylesheet" href="css/Ware.css" />
		<link rel="stylesheet" href="css/nav.css" />
	</head>
	<body>
		<div class="nav-box">
			<div class="nav-meun" style="background-image: url(img/透明背景.png);"></div>
			<div class="nav-background">
				<img src="img/timg (2).jpg" />
				<div class="nav-warpper">
					<div class="nav-left">
						<img src="img/timg2.jpg" />
					</div>
					<div class="nav-right">
						<ul id="navList">
							<li>首页</li>
							<li>我要买车</li>
							<li>我要卖车</li>
							<li>发布需求</li>
							<li>登录/注册</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="main_body">
			<div class="car-infobox">
				<div class="car-info-imgbox">
					<div class="car-info-imgbox-main">
						<img id="mainImg" src="img/1.jpg" />
					</div>
					<div class="car-info-imgbox-small">
						<ul id="smallProductImg">
							<li>
								<img id="smallImg1" src="img/1.jpg" />
							</li>
							<li>
								<img id="smallImg2" src="img/2.jpg" />
							</li>
							<li>
								<img id="smallImg3" src="img/3.jpg" />
							</li>
							<li>
								<img id="smallImg4" src="img/4.jpg" />
							</li>
							<li>
								<img id="smallImg5" src="img/5.jpg" />
							</li>
						</ul>
					</div>
				
				</div>
				<div class="car-info-pricebox">
					<p class="car-info-title">电动车</p>
					<div class="car-info-carstmt">
						<ul>
							<li>电动自行车</li>
							<li>艾玛</li>
							<li>48V</li>
							<li>两年</li>
						</ul>
					</div>
					<div class="car-info-price">车主报价:
						<p>1399元</p>
					</div>
					<div class="car-info-buttonbox">
						<input type="button" value="预约买家" />
						<input type="button" value="砍价一波" />
					</div>
				</div>
			</div>
			<div class="car-info-quality">
				<img src="img/质量检测.jpg"/>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/Ware.js" ></script>
		<script type="text/javascript" src="js/nav.js" ></script>
	</body>
</html>
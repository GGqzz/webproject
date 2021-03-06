<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%@ page import="dao.*" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>我要卖车</title>
<meta name="description" content="二手车"/>
<meta name="keywords" content="福州二手车,福大二手车">
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/sell.css">
<link rel="stylesheet" type="text/css" href="css/alert.css">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>


<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
<script>
        DD_belatedPNG.fix('*');
    </script>
<![endif]--> 
</head>                                        
<body>
<!--头部的开始-->
<%
	User user=(User)session.getAttribute("user");
%>
<div id="header">
  <div class="top">
    <div class="wrap clearfix"> <a href="#" class="logo left"><img src="images/logo11.png"/></a>
      <div class="nav left dInline" id="headerMenu">
      <a  href="index.jsp">首页</a>
      <a href="preCarList.jsp">我要买车</a>
      <a class="on" href="checkUserOnLineSell.jsp">我要卖车</a>
      <a href="checkUserOnLineSrdz.jsp">私人定制</a>
      <!--<a href="shfw.html">售后服务</a>-->
      <a id="MemberMenuChange" class="b-login" href="checkUserOnLineVIP.jsp" target="_self">我的主页</a>
      <a href="about.jsp">关于我们</a>
      </div>
      <span class="right" id="rightMenuHtml">
      <%if(session.getAttribute("user")==null){ %>
	  	<a href="sign.html" class="b-login" id="b-login">登录</a>|<a href="sign.html" id="b-regist">注册</a>|&nbsp;&nbsp;&nbsp;&nbsp;		
      <%}
      else{%>
      	<a href="会员中心首页.jsp" class="b-login" id="b-login"><%=user.getUserId() %></a>|<a href="signOut.jsp" id="b-regist">退出</a>|&nbsp;&nbsp;&nbsp;&nbsp;
      <%} %>
      </span> </div>
  </div>
  
</div>

<!--头部的结束-->

<style>
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {color: #000;}
input:-moz-placeholder, textarea:-moz-placeholder {color:#000;}
input::-moz-placeholder, textarea::-moz-placeholder {color:#000;}
input:-ms-input-placeholder, textarea:-ms-input-placeholder {color:#000;}
.select-item{margin-bottom: 25px;}
</style>
<div id="about">
	<div class="mTags wrap">
		<a href="#">福大二手车交易</a>><a href="3.html">我要卖车</a>
	</div>
	<div class="sellBox">
		<div class="sellTop">
			<div class="wrap">
				<div class="selDetail">
					<div class="sel-a left dInline">
						<ul class="clearfix">
							<li>
								<img src="images/sell1_1.png"/>
								<strong>流程简单</strong>
							</li>
							<li>
								<img src="images/sell1_2.png"/>
								<strong>快速回款</strong>
							</li>
							<li class="last">
								<img src="images/sell1.png" style="color:#000" />
								<strong>诚信服务</strong>
							</li>
						</ul>
						<p>
                        	<strong style="font-size:24px;">卖车标准</strong><br/><br/>
                            车龄不超过3年<br/>
                            行驶里程不超过10000公里<br/>
                            无结构性损伤，非事故车、泡水车或火烧车<br/>
                            具有完备、合法的车辆手续
                        </p>
					</div>
					<div class="sell-form right dInline">
						<form  action="sellCar.jsp" method="post" name="forms" id="forms">
							<h3>登记您的爱车信息</h3>
							<div class="sell-info" style="margin-top:5px">
                                <div class="select-item clearfix">
                                	<select class="select car-select" name="brandCar" id="brandCar" style="width:100%">
										<option value=""> 选择品牌</option>
					                    <option value="爱玛" >爱玛</option>
										<option value="E客" >E客</option>
										<option value="台铃" >台铃</option>
					                    <option value="新日" >新日</option>
					                    <option value="小刀" >小刀</option>
					                    <option value="小牛" >小牛</option>
										<option value="雅迪" >雅迪</option> 
										<option value="其他" >其他</option>
									</select>                                    
								</div>
								<div class="select-item clearfix">
                                    <select class="select car-select" name="styleCar" id="styleCar" style="width:100%">
                                        <option value=""> 选择车系</option>
										<option value="两轮" >两轮</option>
										<option value="电动摩托车" >电动摩托车</option>
										<option value="跑车" >跑车</option>
										<option value="踏板车" >踏板车</option>
										<option value="折叠式" >折叠式</option>
										<option value="其他" >其他</option>
                                    </select>
								</div>
                                <div class="select-item clearfix">
                                    <input type="text" name="price" placeholder="出售价格" value="" class="cPrice" id="price"  style="float:right" />
								</div>
								<!--<div class="select-item clearfix">
									<input id="input-phone" type="text" name="phone" value="手机号" class="cPut" style="width:150px" />
                                    <input type="text" name="verify" value="验证码" style="width:110px; margin:0 5px 0 25px" class="cPut" />
                                    <div id="send_Mess" class="left"><a href="#" class="send_Mess right">获取验证码</a></div>
								</div>-->
                                <div class="select-item clearfix">
                                    <input type="text" value="" placeholder="购买时间" class="form_datetime cPut" id="buytimeval" name="buytime" data-date-format="yyyy-mm"  style="float:left; width:150px"/>
                                    <input type="text" name="mile" placeholder="行驶里程" value="" class="cPut" id="mialval"  style="float:right" />
                                    <div class="unit">公里</div>
                                </div>
								<div class="seBtn">
                                	<input id="input-phone" type="hidden" name="mobile" value="" />
                                    <input id="input-verify" type="hidden" name="verify" value="" />
                                    <a href="#" id="sendMESS" onclick="return checkForm()">提交</a>
									<!--<a href="javascript:void(0)" onclick="$('#forms').submit()">登记</a>-->
									<!--<a href="#">评估</a>-->
								</div>
							</div>
						</form>
<input type="hidden" id="ckmobile" value="1" />
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox-1.3.4.css">
<script type="text/javascript" src="js/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript">
var checkForm=function(){
		var makeCar=$("#brandCar").val();
		var styleCar=$("#styleCar").val();
		var buytimeval=$("#buytimeval").val();
		var mialval=$("#mialval").val();
		var price=$("#price").val();
		var url='/Sales/getprice';
		if(makeCar==''){
			alert("请选择品牌");
			$("#makeCar").focus();
			return false;
		}
		if(styleCar==''){
			alert("请选择车型");
			$("#styleCar").focus();
			return false;
		}
		if(buytimeval==''){
			alert("请选择日期");
			$("#buytimeval").focus();
			return false;
		}
		if(mialval==''){
			alert("请输入里程");
			$("#mialval").focus();
			return false;
		}
		if(price==''){
			alert("请输入价格");
			$("#price").focus();
			return false;
		}
		document.getElementById('forms').submit();
	}
</script>
					</div>
				</div>
			</div>
		</div>
		<div class="sell-a">
			<div class="wrap">
				<h2>二手车须知及流程</h2>
				<div class="sa-list">
					<ul class="clearfix">
						<li>
							<img src="images/sell2_1.png"/>
							<h4>准备手续</h4>
							<p>
								买车发票或收据、学生证复印件等车辆资料
							</p>
						</li>
						<li>
							<img src="images/sell2_2.png"/>
							<h4>上门评估</h4>
							<p>
								可以通过网络提交评估需求，我们专业评估团队会及时联系您约上门评估时间和地点。

							</p>
						</li>
						
						<li>
							<img src="images/sell2_4.png"/>
							<h4>确定价格</h4>
							<p>
								评估师根据车况反馈评估价格，结合车主售车意愿确定车辆价格。
							</p>
						</li>
						<li class="last">
							<img src="images/sell2_4.png"/>
							<h4>手续办理</h4>
							<p>
								确定交易的车辆准备好相关手续，由车主本人现场签字办理相关手续。
 
							</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<div id="popBoxYzm" style="display:none">
	<div class="popForm">
    	<div class="p-detail">
				<form action="" enctype="multipart/form-data" method="post" name="yzmcheck" id="yzmcheck">
					 <ul class="login-items" style="width:100%">
			            <li>
			                <label>手机号</label>
			                <input type="text" value="" maxlength="32"  name="mobile" id="shoujihao" style="width:120px">
                            <input type="checkbox" name="remembermobile" style=" width:auto; margin:10px 20px 0" id="remembermobile" />
			            	<label>记住此号</label>
			            </li>
			            <li>
			                <label>验证码</label>
			                <input type="text" value="" maxlength="16"  name="verify" id="yanzhengma" style="width:120px; margin-right:20px;">
                            <img src="" id="yzcode" width="100" height="42" alt="点击切换" onclick="this.src='../../../Admin/Login/buildVerify.html'">
			            </li>
			        </ul>
			        <div class="login-button">
			            <input type="button"  value="立即提交" class="fM" onclick="sendtosend()" style="line-height:20px" />
			        </div>
				</form>
        </div>
        <a class="closed">×</a>
	</div>
</div>
<div style="display:none;">
	<div id="showDiv">
		<div class="guBox">
			<h3>您的爱车</h3>
			<p>欧蓝德(进口) 2014款欧蓝德(进口)2.4L四驱豪华超值版7座 </p>
			<span>上牌时间：<font> 2014-12</font> </span><span>行驶里程： <font>1万公里</font></span>
			<h3>评估价：<strong>￥18.14万</strong></h3>
		</div>
		<img src="images/jzgu.png" class="s_gu" />
	</div>
</div>
<style type="text/css">
.sa-list li{width:223px;}
#showDiv{width:800px;height:270px;background:#fff;position:relative;}
#showDiv .s_gu{position:absolute;right:20px;bottom:15px;}
.guBox{padding:20px 30px 0 30px;font-size:20px;}
.guBox h3{color:#000;font-weight: normal;margin-top:30px;font-size:20px;}
.guBox h3 strong{font-weight: bold;color:#0756b5}
.guBox p{color:#427dc6;font-weight: bold;padding:10px 0;}
.guBox span{font-size:14px;display:inline-block;margin-right:15px;}
.guBox span font{font-weight: bold;color:#437ec6;font-size:14px;}
</style>
</div>

<div id="footer">
  <div class="foot-a1">
    <div class="wrap">
      <ul class="clearfix">
        <li> <img src="images/db1.png"/>
          <p>365项检测认证</p>
        </li>
       
        <li> <img src="images/db3.png"/>
          <p>1年或两百公里无忧质保</p>
        </li>
        <li> <img src="images/db4.png"/>
          <p>7天无忧退换</p>
        </li>
        <li> <img src="images/db5.png"/>
          <p> 优惠合算</p>
        </li>
      </ul>
    </div>
  </div>
  <div class="foot-a">
    <div class="wrap clearfix">
      <div class="fDl left dInline "> <strong>我们承诺</strong>
        <ul>
          <li><a href="#">365项严苛检测</a></li>
          <li><a href="#">50公里无故障</a></li>
          <li><a href="#">7天退换</a></li>
        </ul>
      </div>
      <div class="fDl left dInline "> <strong>买卖二手车指南</strong>
        <ul>
          <li><a href="#" target="_blank">到场观看车辆</a></li>
          <li><a href="#" target="_blank">现场检查车的性能</a></li>
        </ul>
      </div>
      <div class="fDl left dInline "> <strong>售后服务</strong>
        <ul>
          <li><a href="#">一年内保修</a></li>
         
        </ul>
      </div>
      <div class="fDl left dInline "> <strong>关于我们</strong>
        <ul>
          <li><a href="#" target="_blank">团队动态</a></li>
          <li><a href="#" target="_blank">团队优势</a></li>
          <li><a href="#" target="_blank">联系我们</a></li>
        
        </ul>
      </div>
     
    </div>
  </div>
  <div class="foot-b"> design by couple ,@2018.6<br/>
    <br/>
     </div>
</div>
<div id="miniBus" style="right:-270px;">
	<div class="mini-bar">
		<div class="mini-barlist">
			<ul>
				
				
				
				<li class="callItem">
					<div class="mini-mi callback">
						<i class="mini-ease"></i>
						<code></code>
						<span></span>
					</div>
				</li>
				
			</ul>
		</div>
		<a class="mini-gotop"></a>
		<a class="wx1"></a>
		<div class="wmImg hide">
			<img src="images/wx_2.png">
		</div>
	</div>
  <div class="mini-cont">
		<div class="mini-contlist">
			<div class="mini-ni">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>最近浏览</code></span>
				</div>
				<div class="miList" id="Liulan">
					<ul>
				  </ul>
				</div>
			</div>
			<div class="mini-ni">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>我的收藏</code></span>
				</div>
				<div class="miList" id="shoucang">
					<ul>
				  </ul>
<a  href="javascript:void(0)" class="mini-fav b-login">查看更多收藏</a>
				</div>
			</div>
			<!--<div class="mini-ni">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>在线客服</code></span>
				</div>
			</div>-->
			<div class="mini-ni" id="shopping">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>对比车辆</code></span>
                    <span class="lf-fr" style="margin:auto 10px; font-size:26px; font-weight:bolder" id="deletealldb"><a><code>×</code></a></span>
				</div>
                <div class="miList" id="Carduibi">
					<ul>
				  </ul>
					<a href="#" class="mini-fav">立即对比</a>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="popBox">
	<div class="popCont">
		<a class="p_closed">关闭</a>
		<div class="p-tab">
			<a>会员登录<i></i></a><a>会员注册<i></i></a>
		</div>
		<div class="p-detail">
			<div class="p-dl">
				<form onsubmit="return check();" enctype="multipart/form-data" method="post" name="form" id="form">
					 <ul class="login-items">
			            <li>
			                <label>用户名(手机号)</label>
			                <input class="input" type="text" value="" maxlength="32"  name="username" placeholder="请输入您的手机号">
			            </li>
			            <li>
			                <label>密码</label>
			                <input class="input" type="password" value="" maxlength="16"  name="password">
			            </li>
			        </ul>
			        <div class="login-check">
			            <input type="checkbox" name="checkbox" style=" width:auto;" />
			            <label>记住我</label>
			            <a href="../../../Meet/editPass">忘记登录密码？</a>
			        </div>
			        <div class="login-button">
                    	<input type="hidden" value="" name="carid" class="ordercarid" />
                        <input type="hidden" value="" name="carstatus" class="orderstatus" />
			            <input type="button"  value="登&nbsp;&nbsp;&nbsp;&nbsp;陆" class="fM" onclick="$('#form').submit()" />
			        </div>
			        <!--<div class="security-pro">
			            <i class="icons ver-green-down"></i>
			            <b>您的信息已通过256位SGC加密保护，数据传输安全</b>
			        </div>-->
				</form>
			</div>
			<div class="p-dl">
				<form class="registForm" onsubmit="return regcheck();" enctype="multipart/form-data" method="post" name="reg" id="reg">
					 <ul class="login-items">
			            <li class="clearfix">
			                <input class="input" name="mobile" id="mobile" type="text" value="" placeholder="手机号码（登录帐号）">
			            </li>
			            <li class="clearfix">
			                <input class="input left" type="text" value=""  name="verify" placeholder="输入验证码" style="width:100px;" />
			                <div id="send"><a href="#" class="send_code right">获取验证码</a></div>
			            </li>
			            <li class="clearfix">
			                <input class="input" type="text" value=""  name="realname" placeholder="姓名">
			            </li>
			            <li class="clearfix sex">
			                <input type="radio" checked="" name="gender" value="M" /> 男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="F" /> 女 
			            </li>
			            <li class="clearfix">
			                <input id="" class="input" type="password" name="password" value="" placeholder="输入密码（六位字符）">
			            </li>
			        </ul>
			      
			        <div class="login-button">
                    	<input type="hidden" value="" name="carid" class="ordercarid" />
                        <input type="hidden" value="" name="carstatus" class="orderstatus" />
			            <input type="button"  value="立即注册" class="fM" onclick="$('#reg').submit()" />
			        </div>
			      
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="js/miniBar.js"></script>
<script type="text/javascript" src="js/lg_reg.js"></script>
<!--<script type="text/javascript" src="js/borrow.js"></script>-->


<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
       format: 'yyyy-mm',
		language:"zh-CN",        
		startView: 3,
		minView: 3,
		autoclose:true	

    });
</script>





</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Vector" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>个人中心</title>
<meta name="description" content="二手车"/>
<meta name="keywords" content="福州二手车,福大二手车">
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/hurst.css">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script src="js/jquery.cookie.js" type="text/javascript"></script>
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
<script>
        DD_belatedPNG.fix('*');
    </script>
<![endif]--> 
</head>                                        
<body>
<%
	User user=(User)session.getAttribute("user");
%>
<div id="header">
  <div class="top">
    <div class="wrap clearfix"> <a href="#" class="logo left"><img src="images/logo11.png"/></a>
      <div class="nav left dInline" id="headerMenu">
      <a  href="index.jsp">首页</a>
      <a href="preCarList.jsp">我要买车</a>
      <a href="checkUserOnLineSell.jsp">我要卖车</a>
      <a href="checkUserOnLineSrdz.jsp">私人定制</a>
      <!--<a href="shfw.html">售后服务</a>-->
      <a class="on" id="MemberMenuChange" class="b-login" href="checkUserOnLineVIP.jsp" target="_self">我的主页</a>
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

<div id="about">
	<div class="mTags wrap">
		<a href="/">福大二手车交易</a>><a href="/member/index/channel/7.html">个人中心</a>><a href="/Member/manage/channel/7/list/15.html">账户管理</a>
	</div>
	<div class="mebBox">
		<div class="meb-cont clearfix wrap">
			<div class="meb-nav left dInline">
				<ul class="clearfix">
					<li ><a href="会员中心首页.jsp">个人中心</a></li>
                    <li ><a href="会员中心_我的需求.jsp">我的需求</a></li>
                    <li><a href="会员中心_我的车.jsp">我的车</a></li>
                    <li class="on"><a href="会员中心_账户管理.jsp">账户管理</a></li>					
                </ul>
			</div>
			<div class="meb-right right dInline">
            	<div class="mr-top">
    <div class="mr-top-div clearfix">
        <span class="left">
            <img src="images/photo.png"/>
        </span>
        <div class="mr-infor left dInline">
             <h2>您好！ <b><%=user.getUserId() %></b></h2>
              <p> 手机：<%=user.getTelephoneNumber() %>   邮箱：<%=user.getMail() %>  |  [ <a href="会员中心_账户管理.jsp">管理账户信息</a> ] </p>
        </div>
    </div>
</div>
				<div class="mr-detail">
					<div class="mr-tab clearfix">
						<a class="on">个人资料管理 </a>
                        <a href="#ps">修改密码</a>
					</div>
					<div class="me-box me-box1">
						<div class="me-dl" style="display:block;">
							<div class="me-one">
								<div class="accForm">
									<form action="updateinformation.jsp?user_id=<%=user.getUserId() %>" name="editM" method="post" onsubmit="return checkpost();">
										<div class="afl clearfix">
											<label class="left">
												手机号码
											</label>
											<div class="af-r left dInline">
												<input type="text" class="ar-txt" name="newMobile" placeholder="请输入手机号码" value=""  />
											</div>
										</div>
										<div class="afl clearfix">
											<label class="left">
												地址
											</label>
											<div class="af-r left dInline">
												<input type="text" class="ar-txt" name="newAddress" placeholder="请输入您的姓名" value="" />
											</div>
										</div>
										<div class="afl clearfix">
											<label class="left">
												邮箱
											</label>
											<div class="af-r left dInline">
												<input type="text" class="ar-txt" name="newEmail" placeholder="请输入您的邮箱" value="" />
											</div>
										</div>
										<div class="afl clearfix">
											<label class="left">
											</label>
											<div class="af-r left dInline">
												<input type="submit" value="提 交" class="ar-btn">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
                        <div id="ps" class="me-dl" style="display:block;">
							<div class="me-one">
								<div class="accForm">
									<form action="updatePassword.jsp?user_id=<%=user.getUserId() %>"  name="editP" method="post" onsubmit="return checkPasspost();">
										<div class="afl clearfix">
											<label class="left">
												当前密码
											</label>
											<div class="af-r left dInline">
												<input type="password" class="ar-txt" name="password" placeholder="请输入当前密码" value="" />
											</div>
										</div>
										<div class="afl clearfix">
											<label class="left">
												新密码
											</label>
											<div class="af-r left dInline">
												<input type="password" class="ar-txt" name="newPassword" placeholder="请输入新密码" value="" />
											</div>
										</div>
										<div class="afl clearfix">
											<label class="left">
												确认新密码
											</label>
											<div class="af-r left dInline">
												<input type="password" class="ar-txt" name="password2" placeholder="请确认输入的新密码" value="" />
											</div>
										</div>
										<div class="afl clearfix">
											<label class="left">
											</label>
											<div class="af-r left dInline">
												<input type="submit" value="提 交" class="ar-btn">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!--footer部分开始-->

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

<!--footer部分结束-->
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
			            <a href="/Meet/editPass">忘记登录密码？</a>
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
<script type="text/javascript">
$(function(){
	$('.mr-tab a').each(function(index){
		$(this).click(function(){
			$(this).addClass('on').siblings().removeClass('on');
			$('.me-dl').eq(index).show().siblings().hide();
		})
	});
})
</script>
<script>
function checkpost(){
	var realname=editM.realname.value;//手机号
	var gender=editM.gender.value;//验证码
	var email=editM.email.value;//姓名
	var Yemail = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; //邮箱验证
	var url='/Member/manage/channel/7/list/15';
	if(realname.length>10){
		alert("姓名要不得大于10个字符");
		editM.realname.focus();
		return false;
	}
	if(!Yemail.exec(email)&&email!=''){
		alert("邮箱格式不正确");
		editM.email.focus();
		return false;
	}
	$.ajax({
		 type: "POST",
		 url: url,
		 data: {realname:realname, gender:gender,email:email},
		 dataType: "json",
		 success: function(data){
			 alert(data.msg);
		}
	 });
	 return false;
}
function checkPasspost(){
	var password=editP.password.value;//性别
	var password1=editP.password1.value;//密码
	var password2=editP.password2.value;//密码
	var Ypass=/\S{6,}/;//密码验证
	var url='/Member/manage/channel/7/list/15';
	if(!password1){
		alert("请输入新密码");
		editP.password1.focus();
		return false;
	}
	if(!password2){
		alert("请重复输入新密码");
		editP.password2.focus();
		return false;
	}
	if(password1!=password2){
		alert("两次新密码输入不同");
		editP.password1.focus();
		return false;
	}
	if(!Ypass.exec(password1)){
		alert("密码格式不正确，必须以字母开头的6-16 字母，数字");
		editP.password1.focus();
		return false;
	}
	$.ajax({
		 type: "POST",
		 url: url,
		 data: {password:password,password1:password1},
		 dataType: "json",
		 success: function(data){
			 alert(data.msg);
		}
	 });
	 return false;
}
</script>




</body>
</html>

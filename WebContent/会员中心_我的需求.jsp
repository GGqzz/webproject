<%@page import="dbutil.DBUtil"%>
<%@page import="java.sql.Connection"%>
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
<!--<link rel="stylesheet" type="text/css" href="css/jquery.fancybox-1.3.4.css">-->

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>


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
	UserDAO userdao=new UserDAO();
	CarDAO cardao=new CarDAO();
	DingDanDAO dingDanDAO=new DingDanDAO();
	Requirement_DingDanDAO rdd=new Requirement_DingDanDAO();
	Connection connection=DBUtil.getConnection();
	Vector<Car> carList=cardao.getCarListByUserId(connection, user.getUserId());
	Vector<DingDan> dingDanList=dingDanDAO.getUserDingDan(connection, user.getUserId());
	Vector<Requirement_DingDan> requirement_DingDanList=rdd.getUserReuirementDingDanList(connection, user.getUserId());		
	Vector<DingDan> buyerDingDanList=dingDanDAO.getBuyerDingDan(connection, user.getUserId());
	
%>
<div id="header">
  <div class="top">
    <div class="wrap clearfix"> <a href="#" class="logo left"><img src="images/logo11.png"/></a>
      <div class="nav left dInline" id="headerMenu">
      <a  href="index.jsp">首页</a>
      <a href="preCarList.jsp">我要买车</a>
      <a  href="checkUserOnLineSell.jsp">我要卖车</a>
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
		<a href="/">福大二手车交易</a>><a href="#">个人中心</a>><a href="#">我的需求</a>
	</div>
	<div class="mebBox">
		<div class="meb-cont clearfix wrap">
			<div class="meb-nav left dInline">
				<ul class="clearfix">
					<li><a href="会员中心首页.jsp">个人中心</a></li>
                    <li class="on" ><a href="会员中心_我的需求.jsp">我的需求</a></li>
                    <li><a href="会员中心_我的车.jsp">我的车</a></li>
                    <li><a href="会员中心_账户管理.jsp">账户管理</a></li>				
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
						<a class="on">我的订单</a>
						<a>私人订制</a>						
					</div>
					<div class="me-box">
					
					<!-- 我的订单部分 -->
					<div class="me-dl" style="display:block;">
							<div class="me-one" id="me-o">
								<ul class="cs-list">
									<ul class="cs-list">
					<%if(buyerDingDanList.size()==0){ %>
							<div class="me-more">
								<a href="preCarList.jsp">
									<h3>您目前没有，买车的需求！</h3>
									<p>我要买车</p>
								</a>
							</div>						

					<%} 
					else {
						for(int i=0;i<buyerDingDanList.size();i++){
							Car buyerCar=cardao.searchCarByID(connection, buyerDingDanList.get(i).getCar_id());
					%>
										<li class="clearfix" style="position: relative;">	
										<span class="carImg left dInline">
											<a href="javascript:return false;" target="_blank">
												<div class="car_bg"> </div>		
												<img src="images/3.png" onerror="this.src='images/pro4.jpg'" width="300" />
											</a>	
										</span>	
											<div class="pa" style="z-index:1111px;left:6px;top:10px;position: absolute;">		
													</div>	<div class="carTxt right dInline">		
													<h2><a href="javascript:return false;" target="_blank"><%=buyerCar.getBrand()+" "+buyerCar.getStyle() %></a>
														
													</h2>		
													<p>			
														<span>购买时间：<%=buyerCar.getBuy_Time() %></span> 			
														<span>已行驶：<%=buyerCar.getMile() %></span>					
													</p>		
													<div class="price clearfix" style="margin:5px 0;">			
														<div class="left dInline pNum">				
															<font>寄售价</font><br/>				
															<span class="num nBlue"><%=buyerCar.getPrice() %>			
															</span><font> 元</font>			 
														</div>			
													</div>		
													<div class="cs_ding clearfix">			
														<div class="cdLeft left dInline" style="width:auto;">									
															<span>卖家电话：<%if(buyerDingDanList.get(i).getDingdan_state().equals("成交")){ %>
																<span><%=userdao.getUserById(connection,buyerDingDanList.get(i).getUser_id()).getTelephoneNumber() %>
															<%} %></span>	
															</span>				
															<span>订单状态：<%=buyerDingDanList.get(i).getDingdan_state() %></span>			
														</div>			
														<a href="closeOrder.jsp?car_id=<%=buyerCar.getCar_id() %>" style="width:50px;color:#4573af; float:right;" onclick="delOrder('delete','88')">取消订单</a>			
													</div>	
												</div>
										</li>
					<%		}
						} %>
					</ul>
									<div class="hPages">    
									</div>								
								</ul>
							</div>
						</div>
					<!-- 私人定制 -->
						<div class="me-dl" style="display:block;">
							<div class="me-one" id="me-o">
								<ul class="cs-list">
									<ul class="cs-list">
										<%if(requirement_DingDanList.size()==0){ %>
										<div class="me-dl">
											<div class="me-more">
												<a href="buyCar.jsp">
												<h3>您目前没有私人订制！</h3>
												<p>点击这里进行私人订制...</p>
												</a>
											</div>						
										</div>
										<%} 
										else{
											for(int i=0;i<requirement_DingDanList.size();i++){
										%>
										<li class="clearfix" style="position: relative;">	
											<div class="pa" style="z-index:1111px;left:6px;top:10px;position: absolute;">		
					
											</div>	
												<div class="carTxt right dInline">
												<h2><%=requirement_DingDanList.get(i).getBrand()+" "+requirement_DingDanList.get(i).getStyle() %></a></h2>
												<p>			
												<span>要求车龄：<%=requirement_DingDanList.get(i).getAge() %></span> 						
												</p>		
												<div class="price clearfix" style="margin:5px 0;">			
													<div class="left dInline pNum">				
														<font>你的最低预算</font><br/>				
														<span class="num nBlue"><%=requirement_DingDanList.get(i).getMin_price() %></span>
														<font> 元</font>	<br/>		
														<font>你的最高预算</font><br/>				
														<span class="num nBlue"><%=requirement_DingDanList.get(i).getMax_price() %></span>
														<font> 元</font>		 
													</div>			
														<span class="num1 left" style="height:43px;padding-top:10px;">													
												</div>		
												<div class="cs_ding clearfix">			
												<div class="cdLeft left dInline" style="width:auto;">									
												<span>订单状态：<%=requirement_DingDanList.get(i).getRequireState() %></span>			
												</div>			
												<a href="deleteRequirement.jsp?require_id=<%=requirement_DingDanList.get(i).getRequire_id() %>" style="width:50px;color:#4573af; float:right;">取消订单</a>				
												</div>	
												</div>
												</li>
										<%}} DBUtil.closeConnection(connection);%>
										</ul>
										<div class="hPages">    
										</div>								
									</ul>
							</div>
						</div>
						
						<div class="me-dl">
							<div class="me-more">
								<a href="checkUserOnLineSell.jsp">
									<h3>您目前没有，卖车需求！</h3>
									<p>点击这里发布爱车</p>
								</a>
							</div>						
						</div>
						
                        
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="overlay">
	<div class="popup-over t-center" style="margin-left:-380px; height:420px;margin-top: -200px;">
		<div class="popDiv popDiv1">
			<div class="pop-head clearfix">
				<h2 class="left dInline">上传资料</h2>
                <h1 id="p_closedziliao" style="float:right">关闭</h1>
			</div>
			<div class="pop-cont">
            	<form action="/Member/cardImg/channel/7.html"  method="post" id="uploadIdForm" name="uploadIdForm" enctype="multipart/form-data"><!-- onsubmit="subc();"-->
				<dl>
					<dt>必要认证资料</dt>
					<dd>
						<ul class="clearfix verify_ul">
							<li>
								<span>身份认正证</span>
								<div class="ver-a">
                                	<img  id="imgPreview1" width="200" height="130" /><br />
                                    <input type="file" name="postfile1" onchange='PreviewImage1(this)' />
								</div>
							</li>
                            <li>
								<span>身份认反证</span>
								<div class="ver-a">
                                	<img  id="imgPreview2" width="200" height="130" /><br />
                                    <input type="file" name="postfile2" onchange='PreviewImage2(this)' />
								</div>
							</li>
						</ul>
					</dd>
				</dl>
                	<input type="hidden" name="memId" value="" id="memId" />
				<a class="pop_submit" href="javascript:void(0)" onclick="$('#uploadIdForm').submit()">提交资料</a>
                </form>
			</div>
		</div>
	</div>
</div>
<style type="text/css">
#showdiv{width:586px;background:#fff;overflow: hidden;color:#333;}
#showdiv .showTit{color: #000;font-size:18px;border-bottom:1px solid #a0a0a0;padding:20px;background:#f3f3f3;}
#showdiv .dk_r{width:205px;}
#showdiv .dk_div{width:516px;background:#f3f3f3;height:180px;margin:15px auto;}
.dk_tit{height:37px;line-height:37px;background:#ccd3e0}
.dk_tit span{display:inline-block;float:left;width: 50%;text-align:center;color:#3865c0;font-size:14px;position:relative;height:37px;cursor: pointer;}
.dk_tit span.on{color:#fff;background:#3865c0}
.dk_tit span.on i{position:absolute;left:50%;margin-left:-3px;background:url(images/dk_d.png) no-repeat;width:6px;height:4px;bottom:-4px;}
.dk_dl{padding:30px 0px 0 40px;}
.dk_dl label{width: 70px;display:block;height:25px;margin-right:20px;}
.dk_dl li{height:25px;line-height:25px;font-size:14px;color:#000;margin-bottom:20px}
.dk_tag span{display:inline-block;padding:0 13px;margin-right:10px;cursor: pointer;cursor: pointer;}
.dk_tag span.on{background:#3865c0;color: #fff;}

a.dk_btn{display:block;background-color: #1663B1;color:#fff;font-size:14px;height:30px;line-height:30px;width:215px;margin:0 auto;text-align: center;margin-top:10px}
#showdiv li .yh_s{cursor: pointer;}
.buy_je{text-align: center;font-size:18px;padding:15px 0 0 0;line-height:38px;}
.buy_je strong{font-weight: normal;color: #3865c0;font-size:38px;display:inline-block;padding:0 6px;}
.dk_result{background:#f3f3f3;padding:20px 0;text-align:center;margin-top:25px;}
.dk_tel{font-size:18px;color:#484848;padding:10px 0 4px 0;}
.dk_result p{color:#969696;}
</style>
<script type="text/javascript">
$(function(){
	$('.dk_tit span').each(function(index){
		$(this).click(function(){
			$(this).addClass('on').siblings().removeClass('on');
			$('.dk_dl ul').eq(index).removeClass('hide').siblings().addClass('hide');
		})
	});
	$('.dk_tag span').click(function(){
		$(this).addClass('on').siblings().removeClass('on');
	})
})
</script>

<script>
function JSuanQ(carid,price,descript){
	$('#thisCarId').val(carid);
	$('#thisCarPrice').html('汽车金额 <strong>'+price+'万</strong>元');
	//$('#changepriceHtml').html(descript);
}
function changeprice(act,val,t){
	if(act=="yinhang"){
		var yinhang_v=val;//银行的值
		var yinhang_s=t;//银行的名字
	}else{
		var yinhang_v=$('.yinhangselect span[ class="on"]').attr('data-pk');//银行的值
		var yinhang_s=$('.yinhangselect span[ class="on"]').attr('data-type');//银行的名字
	}
	if(act=="shoufu"){
		var shoufu=val;
	}else{
		var shoufu=$('.shoufubili  span[class="on"][data-type='+yinhang_s+']').attr('data-pk');//银行的名字
	}
	if(act=="fenqi"){
		var qixian=val;
	}else{
		var qixian=$('.fenqishu  span[class="on"][data-type='+yinhang_s+']').attr('data-pk');
	}
	var carid=suandk.carid.value;
	var url='/Apply/getpriceHtml/channel/5/type/send.html';
	if(yinhang_s=='中国工商银行'&&shoufu=="50"){
		$('#openclick').fadeIn();
	}else{
		$('#openclick').fadeOut();
	}
	$.ajax({
		type: "POST",
		url: url,
		data: {carid:carid,yhbh:yinhang_v,qixian:qixian,shoufu:shoufu},
		dataType: "json",
		success: function(data){
			$('#changepriceHtml').html(data.descript);
		}
	});
	return false;
}
function daikuanjisuan(){
	var yinhang_v=$('.yinhangselect span[ class="on"]').attr('data-pk');//银行的值
	var yinhang_s=$('.yinhangselect span[ class="on"]').attr('data-type');//银行的名字
	var shoufu=$('.shoufubili  span[class="on"][data-type='+yinhang_s+']').attr('data-pk');//银行的名字
	var qixian=$('.fenqishu  span[class="on"][data-type='+yinhang_s+']').attr('data-pk');//银行的名字
	var carid=suandk.carid.value;
	var mobile=suandk.mobile.value;
	var chec=1;
	var url='/Apply/Index/channel/5/type/send.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {mobile:mobile,carid:carid,yhbh:yinhang_v,qixian:qixian,shoufu:shoufu,chec:chec},
		dataType: "json",
		success: function(data){
			//alert(data);
			if(data.result=='1'){
				alert('已发送到手机');
				window.location.reload();
			}else{
				alert('发送失败');
			}
		}
	});
	return false;
}
$(function(){
	$('.small_img li a').click(function(){
		var path=$(this).find('img').attr('src');
		$('.prev_bg').find('img').attr('src',path);
		$('.small_img li a').removeClass('zoomThumbActive');
		$(this).addClass('zoomThumbActive');
	})
	$("#dBtn").fancybox({
		'padding':'0',
		'titlePosition':'inside',
		'transitionIn':'elastic',
		'transitionOut':'elastic'
	});
	$('.yh_s').each(function(index){
		$(this).click(function(){
			pricechange('0');
			$('.dr_pay input').attr('checked',false);
			$('.dr_year input').attr('checked',false);
			$('.yh_s input').attr('checked',false);
			$(this).find('input').attr('checked',true);
			$('.dr_pay').eq(index).removeClass('hide').siblings().addClass('hide')
		})
	})
})
//jSuanQ('122')
</script>

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

<script type="text/javascript" src="js/smooth-scroll.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<!--<script type="text/javascript" src="js/CarLoad.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-1.3.4.js"></script>
<script src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=810a1f8c-0ebe-4324-9a03-00c2d328d099&amp;pophcol=2&amp;lang=zh" type="text/javascript" charset="utf-8"></script>
<script src="http://static.bshare.cn/b/bshareC0.js" type="text/javascript" charset="utf-8"></script>-->

<script type="text/javascript">
$('.mr-tab a').each(function(index){
	$(this).click(function(){
		$(this).addClass('on').siblings().removeClass('on');
		$('.me-dl').eq(index).show().siblings().hide();
	})
});
$('.cs_ding a').mouseover(function(){
	this.style.color='blue';
})
$('.cs_ding a').mouseout(function(){
	this.style.color='#4573af';
})
function clsub(id){
	$('#memId').val(id);
	var url='/Member/getCardImg/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {id:id},
		dataType: "json",
		success: function(data){
			if(data.idcarda){
				document.getElementById("imgPreview1").src = data.idcarda;
			}else{
				document.getElementById("imgPreview1").src = 'images/qzx.jpg';
			}
			if(data.idcardb){
				document.getElementById("imgPreview2").src = data.idcardb;
			}else{
				document.getElementById("imgPreview2").src = 'images/qzx.jpg';
			}
		}
	});
	$overlay = $('.overlay');
	$overlay.addClass('active');
	 $('.popup-over').show().addClass('active');
	$overlay.click(function(){
		modalHidden($whichPopup);
	});
	var $whichPopup = $('.popup-over');
		$('.popup-over').show().addClass('active');
		$overlay.click(function(){
		modalHidden($whichPopup);
	});
	$('.overBtn').click(function(){
		modalHidden($whichPopup);
	});
	$whichPopup.click(function(e){
		e.stopPropagation();
	});
	function modalHidden($ele) {
		$ele.removeClass('active');
		$overlay.removeClass('active');
	}
	
}

function subc(){
	var postfile1=uploadIdForm.postfile1.value;
	var postfile2=uploadIdForm.postfile2.value;
    var memId=uploadIdForm.memId.value;
	var url='/Member/cardImg/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {postfile1:postfile1, postfile2:postfile2,memId:memId},
		dataType: "json",
		headers:{'ClientCallMode':'ajax'},
		data:$('#formid').serialize(),
		success: function(data){
			if(data.result=='1'){
				alert('添加成功');
			}else{
				alert('添加失败');
				window.location.reload();
			}
		}
	});
	return false;
}
$('.auth').click(function(){
	$('.ver_dialog').fadeIn();
})
$('.ui-dialog-close').click(function(){
	$('.ver_dialog').fadeOut();
})
$('#me-one .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'LSDZ'},
		success: function(data){
			$('#me-one').html(data);
		}
	});
	return false;
})
$('#me-tow .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'SELL'},
		success: function(data){
			$('#me-tow').html(data);
		}
	});
	return false;
})
$('#me-three .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'APPLY'},
		success: function(data){
			$('#me-three').html(data);
		}
	});
	return false;
})
$('#me-four .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'CONCERN'},
		success: function(data){
			$('#me-four').html(data);
		}
	});
	return false;
})
$('#me-o .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'ORDER'},
		success: function(data){
			$('#me-o').html(data);
		}
	});
	return false;
})
$('#p_closedziliao').click(function(){
	$('.overlay').removeClass('active');
})

function delNeed(act,meb){
	var url='/Member/delNeed/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {act:act,meb:meb},
		success: function(data){
			if(data.result){
				alert('已取消该需求');
				window.location.reload();
			}else{
				alert('需求操作失败');
				window.location.reload();
			}
		}
	});
	return false;
}
function delNeedThis(carid){
	var url='/Member/delCondent/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {carid:carid},
		success: function(data){
			if(data.result){
				alert('已取消该收藏');
				 window.location.href="/Member/need/channel/7/list/11/tpl/4";
			}else{
				alert('收藏取消失败');
			}
		}
	});
	return false;
}

function delOrder(act,meb){
	var url='/Member/delOrder/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {act:act,meb:meb},
		success: function(data){
			if(data.result){
				alert('已取消该订单');
				window.location.reload();
			}else{
				alert('订单取消失败');
			}
		}
	});
	return false;
}
</script>
<!--<script>
function PreviewImage1(imgFile){
	var pattern = /(\.*.jpg$)|(\.*.png$)|(\.*.jpeg$)|(\.*.gif$)|(\.*.bmp$)/;
	if(!pattern.test(imgFile.value)){
		alert("系统仅支持jpg/jpeg/png/gif/bmp格式的照片！");
		imgFile.focus();
	}else{
		var path;
		if(document.all){
			imgFile.select();
			path = document.selection.createRange().text;
			document.getElementById("imgPreview1").src="";
			document.getElementById("imgPreview1").style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='scale',src=\"" + path + "\")";//使用滤镜效果
		}else{
			path = URL.createObjectURL(imgFile.files[0]);
			document.getElementById("imgPreview1").src = path;
		}
	}
}
function PreviewImage2(imgFile){
	var pattern = /(\.*.jpg$)|(\.*.png$)|(\.*.jpeg$)|(\.*.gif$)|(\.*.bmp$)/;
	if(!pattern.test(imgFile.value)){
		alert("系统仅支持jpg/jpeg/png/gif/bmp格式的照片！");
		imgFile.focus();
	}else{
		var path;
		if(document.all){
			imgFile.select();
			path = document.selection.createRange().text;
			document.getElementById("imgPreview2").src="";
			document.getElementById("imgPreview2").style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='scale',src=\"" + path + "\")";//使用滤镜效果
		}else{
			path = URL.createObjectURL(imgFile.files[0]);
			document.getElementById("imgPreview2").src = path;
		}
	}
}

</script>
-->



</body>
</html>
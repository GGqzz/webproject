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
	CarDAO cardao=new CarDAO();
	DingDanDAO dingDanDAO=new DingDanDAO();
	Connection connection=DBUtil.getConnection();
	Vector<Car> carList=cardao.getCarListByUserId(connection, user.getUserId());
	Vector<DingDan> dingDanList=dingDanDAO.getUserDingDan(connection, user.getUserId());
	DBUtil.closeConnection(connection);
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
  <div class="mTags wrap"> <a href="/">福大二手车交易</a>><a href="/member/index/channel/7.html">个人中心</a>><a href="/Member/car/channel/7/list/12.html">我的车</a> </div>
  <div class="mebBox">
    <div class="meb-cont clearfix wrap">
      <div class="meb-nav left dInline">
        <ul class="clearfix">
					<li ><a href="会员中心首页.jsp">个人中心</a></li>
                    <li ><a href="会员中心_我的需求.jsp">我的需求</a></li>
                    <li class="on"><a href="会员中心_我的车.jsp">我的车</a></li>
                    <li><a href="会员中心_账户管理.jsp">账户管理</a></li>						
                </ul>
      </div>
      <div class="meb-right right dInline">
        <div class="mr-top">
          <div class="mr-top-div clearfix"> <span class="left"> <img src="images/photo.png"/> </span>
            <div class="mr-infor left dInline">
              <h2>您好！ <b><%=user.getUserId() %></b></h2>
              <p> 手机：<%=user.getTelephoneNumber() %>   邮箱：<%=user.getMail() %>  |  [ <a href="会员中心_账户管理.jsp">管理账户信息</a> ] </p>
            </div>
          </div>
        </div>
        <div class="mr-detail">
          <div class="mr-tab clearfix"> <a class="on">我的车</a> 
            <!--<a>售后历史</a>--> 
          </div>
          <div class="me-box me-box1">
            <div class="me-dl" style="display:block;">
              <div class="me-one">
                <ul class="cs-list">
                  <ul class="cs-list">
                  </ul>
                  <div class="hPages"></div>
                </ul>
              </div>
              <div class="me-dl" style="display:block;">
							<div class="me-one" id="me-o">
								<ul class="cs-list">
									<ul class="cs-list">
              <%if(carList.size()==0){ %>
	              <div class="me-more"> <a href="checkUserOnLineSell.jsp">
	                <h3>您目前没有发售车辆</h3>
	                <p>点击这里发布爱车...</p>
	                </a> </div>
	            </div>
         	  <%}
              	else { 
         	  		for(int i=0;i<carList.size();i++){
         	 	 %>	
										<li class="clearfix" style="position: relative;">	
											<span class="carImg left dInline">
												<a href="javascript:return false;" target="_blank">
												<div class="car_bg"> </div>		
												<img src="images/3.png"  width="300" />
												</a>	
											</span>	
											<div class="pa" style="z-index:1111px;left:6px;top:10px;position: absolute;">		
					
											</div>	
												<div class="carTxt right dInline">
												<h2><a href="javascript:return false;" target="_blank"><%=carList.get(i).getBrand()+" "+carList.get(i).getStyle() %></a></h2>
												<p>
													<span>购买时间：<%=carList.get(i).getBuy_Time() %></span> 			
													<span>已行驶：<%=carList.get(i).getMile() %>公里</span>					
												</p>		
											<div class="price clearfix" style="margin:5px 0;">			
											<div class="left dInline pNum">				
											<font>售价</font><br/>				
											<span class="num nBlue"><%=carList.get(i).getPrice() %>				
											</span><font> 元</font>			 
											</div>			
											<span class="num1 left" style="height:43px;padding-top:10px;">				
					
											</span>		
											</div>		
											<div class="cs_ding clearfix">			
														<div class="cdLeft left dInline" style="width:auto;">											
															<span>订单状态：<%=dingDanList.get(i).getDingdan_state() %></span>	
															<%if(dingDanList.get(i).getDingdan_state().equals("预约中")){ %>		
															<span>预约人：<%=dingDanList.get(i).getBuyer_id() %></span>	
															<%} %>
														</div>			
														<a href="closeCar.jsp?car_id=<%=carList.get(i).getCar_id()%>" style="width:50px;color:#4573af; float:right;">取消订单</a>	
														<%if(dingDanList.get(i).getDingdan_state().equals("预约中")){ %>		
															<a href="refuseAppointment.jsp?car_id=<%=carList.get(i).getCar_id()%>&buyer_id=<%=dingDanList.get(i).getBuyer_id() %>" style="width:50px; margin:auto 10px;color:#4573af; float:right;">拒绝预约</a>
															<a href="acceptAppointment.jsp?car_id=<%=carList.get(i).getCar_id() %>&buyer_id=<%=dingDanList.get(i).getBuyer_id() %>" style="width:50px; margin:auto 10px;color:#4573af; float:right;">接受预约</a>		
															<%} %>		
													</div>		
											</div>
									</li>
         	 	 <%	
         	  		}
         	 	 %>
         	  <%} %>
         	  								</div>
											</div>
         	  							</ul>
											<div class="hPages">    
										</div>								
									</ul>
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
  <div class="popCont"> <a class="p_closed">关闭</a>
    <div class="p-tab"> <a>会员登录<i></i></a><a>会员注册<i></i></a> </div>
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
            <a href="/Meet/editPass">忘记登录密码？</a> </div>
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
              <input type="radio" checked="" name="gender" value="M" />
              男&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="radio" name="gender" value="F" />
              女 </li>
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
<script type="text/javascript"> var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Faa70c6792578150b40ad413464080efa' type='text/javascript'%3E%3C/script%3E")) </script>
</body>
</html>
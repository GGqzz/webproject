<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%@ page import="dao.*" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>福大二手车交易</title>
<meta name="description" content="二手车"/>
<meta name="keywords" content="福州二手车,福大二手车">
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
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
<style type="text/css">
#banner .prevs,#banner .nexts{position:absolute;top:220px;z-index: 100;margin-top:-25px;}
#banner .nexts{right:0;}
#banner .banShow a{display:block;width: 100%;height:789px;}
</style>
<div id="banner">
  <div class="banShow clearfix" style="width:100%;"> 
    <a href="#" class="bDiv" style="background:url(images/201805291.jpg) no-repeat center top;"></a>  
    <a href="#" class="bDiv" style="background:url(images/1.jpg) no-repeat center top;"></a> 
  </div>
  <div class="b_btn wrap"> 
    <!--<a class="prevs"><img src="images/l1.png"></a> 
    <a class="nexts"><img src="images/r1.png"></a>-->   
  </div>
</div>
<div id="main">
  <div class="main-a mDiv" id="box1">
    <div class="wrap">
      <div class="in-tit clearfix">
        <h1 class="left dInline"> 今日推荐 </h1>
      </div>
      <div class="inBox clearfix">
        <div class="thPic left dInline pve tBox"> <a href="javascript:return false;" style="cursor: default;"  target="_blank"> <img src="images/21.jpg" class="imgVt" /> </a> </div>
        <div class="tBox right pve dInline thPicRight">
          <div class="thPic1 left dInline pve">
            <ul class="clearfix">
              <li class="pve"> <a href="goToCarDetail.jsp?car_id=208" target="_blank"> <span class="icon icon_th"></span>
                <div class="car-pic"> <img src="images/12.png" /> </div>
                <div class="price"> <font></font> <span class="num nBlue">1255 </span> <font>&nbsp;&nbsp;元</font> </div>
                <p>新日 踏板车</p>
                </a></li>
                
                <li class="pve"> <a href="goToCarDetail.jsp?car_id=209" target="_blank"> <span class="icon icon_th"></span>
                <div class="car-pic"> <img src="images/13.png" /> </div>
                <div class="price"> <font></font> <span class="num nBlue">2556 </span> <font>&nbsp;&nbsp;元</font> </div>
                <p>E客 两轮</p>
                </a></li>
                
                <li class="pve"> <a href="goToCarDetail.jsp?car_id=210" target="_blank"> <span class="icon icon_th"></span>
                <div class="car-pic"> <img src="images/14.png" /> </div>
                <div class="price"> <font></font> <span class="num nBlue">2653 </span> <font>&nbsp;&nbsp;元</font> </div>
                <p>雅迪 跑车</p>
                </a></li>
                
                <li class="pve"> <a href="goToCarDetail.jsp?car_id=211" target="_blank"> <span class="icon icon_th"></span>
                <div class="car-pic"> <img src="images/15.png" /> </div>
                <div class="price"> <font></font> <span class="num nBlue">1259 </span> <font>&nbsp;&nbsp;元</font> </div>
                <p>其他 跑车</p>
                </a></li>
              
            </ul>
          </div>
          <div class="pve right dInline hdPic"> <a href="javascript:return false;" style="cursor: default;"  target="_blank"> <img src="images/2.jpg" height="475" class="imgVt" /> </a> </div>
        </div>
      </div>
    </div>
  </div>
  <div class="mDiv" id="box2"></div>
  <div class="mDiv main-a">
    <div class="wrap">
      <div class="in-tit clearfix">
        <h1 class="left dInline"> 精品车源 </h1>
      </div>
      <div class="jpBox">
        <div class="jpTit"> 
        <a class="on"> <img src="images/cLogo.png"/> <span>推荐车源</span> <i></i></a>
        <a> <img src="images/logo1.png" width="50" height="38" /> <span>新日</span> <i></i></a>
        <a> <img src="images/logo2.png" width="100" height="38" /> <span>爱玛</span> <i></i></a>
        <a> <img src="images/logo (1).png" width="113" height="51" /> <span>雅迪</span> <i></i></a>
        <a> <img src="images/22.jpg" width="162" height="48" /> <span>小刀</span> <i></i></a>
        <a> <img src="images/23.jpg" width="162" height="54" /> <span>小牛</span> <i></i></a>
        <a> <img src="images/24.png" width="89" height="50" /> <span>E客</span> <i></i></a>
        <a class="last"> <img src="images/25.png" width="162" height="47" /> <span>台铃</span> <i></i></a> 
        </div>
        <div class="jpCont">
          <div class="jpDl" style="display: block;">
            <ul class="clearfix">
              <li class="clearfix" style="position: relative;"> 
               <a href="goToCarDetail.jsp?car_id=208" target="_blank">
                <div class="carImg left dInline"> 
                  <img src="images/3.png" width="266" /> 
                </div>
                
                <div class="right carTxt dInline pve">
                  <div class="c-txt">
                    <h3>
                     <a href="goToCarDetail.jsp?car_id=208" target="_blank">新日 踏板车</a>
                    </h3>
                    
                    <p>2016-06 | 60V26AH电芯电池+普通7H充电器</p>
                    <div class="price">
                      <p>价格：</p>
                      <i>￥</i> <span class="num nBlue">1255</span><font> 元</font>  
                    </div>
                    
                  </div>
                </div>
                
                </a>
                </li>
                
                <li class="clearfix" style="position: relative;"> <a href="goToCarDetail.jsp?car_id=209" target="_blank">
                <div class="carImg left dInline"> <img src="images/12.png" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3>
                     <a href="goToCarDetail.jsp?car_id=209" target="_blank">E客 两轮车</a>
                    </h3>
                    
                    <p>2014-02 | 48V26AH电芯电池+普通7H充电器</p>
                    <div class="price">
                      <p>价格：</p>
                      <i>￥</i> <span class="num nBlue">1885 </span><font> 元</font>  </div>
                  </div>
                </div>
                </a></li>
                
                <li class="clearfix" style="position: relative;"> <a href="goToCarDetail.jsp?car_id=210" target="_blank">
                <div class="carImg left dInline"> <img src="images/13.png" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3>
                     <a href="goToCarDetail.jsp?car_id=210" target="_blank">雅迪 跑车</a>
                    </h3>
                    
                    <p>2017-01 | 60V26AH电芯电池+普通7H充电器</p>
                    <div class="price">
                      <p>价格：</p>
                      <i>￥</i> <span class="num nBlue">2445 </span><font> 元</font>  </div>
                  </div>
                </div>
                </a></li>
                
                <li class="clearfix" style="position: relative;"> <a href="#" target="_blank">
                <div class="carImg left dInline"> <img src="images/14.png" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3>
                     <a href="goToCarDetail.jsp?car_id=211" target="_blank">其他 跑车</a>
                    </h3>
                    
                    <p>2018-05 | 60V26AH电芯电池+普通7H充电器</p>
                    <div class="price">
                      <p>价格：</p>
                      <i>￥</i> <span class="num nBlue">1259 </span><font> 元</font>  </div>
                  </div>
                </div>
                </a></li>
              
            </ul>
            <div class="proMore"> <a href="buyCar.jsp" target="_blank">查看更多>></a> </div>
          </div>
          <!-- 
          <div class="jpDl">
            <ul class="clearfix">
              <li class="clearfix" style="position: relative;"> <a href="#" target="_blank">
                <div class="carImg left dInline"> <img src="images/3.png" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3>
                     <a href="#" target="_blank">E客 E1S标准版</a>
                    </h3>
                    
                    <p>2017-08 | 60V26AH电芯电池+普通7H充电器</p>
                    <div class="price">
                      <p>价格：</p>
                      <i>￥</i> <span class="num nBlue">4000 </span><font> 元</font>  </div>
                  </div>
                </div>
                </a></li>
                
                <li class="clearfix" style="position: relative;"> <a href="#" target="_blank">
                <div class="carImg left dInline"> <img src="images/3.png" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3>
                     <a href="#" target="_blank">E客 E1S标准版</a>
                    </h3>
                    
                    <p>2017-08 | 60V26AH电芯电池+普通7H充电器</p>
                    <div class="price">
                      <p>价格：</p>
                      <i>￥</i> <span class="num nBlue">4000 </span><font> 元</font>  </div>
                  </div>
                </div>
                </a></li>
             
              
            </ul>
            <div class="proMore"> 
            	<a href="buyCar.jsp" target="_blank">查看更多>></a> 
            </div>
          </div>
          -->

        </div>
      </div>
    </div>
  </div>
  <div class="mDiv">
    <div class="wrap">
      <div class="in-tit clearfix">
        <h1 class="left dInline"> 私人定制 </h1>
      </div>
      <div class="bdBox clearfix">
        <div class="left dLeft dInline">
          <ul class="clearfix">
            <li><a href="javascript:return false;" style="cursor: default;"  target="_blank"> <img src="images/empty.png" /></a></li>
            <li><a href="javascript:return false;" style="cursor: default;"  target="_blank"> <img src="images/31.jpg" /></a></li>
            <li><a href="javascript:return false;" style="cursor: default;"  target="_blank"> <img src="images/32.jpg" /></a></li>
            <li><a href="javascript:return false;" style="cursor: default;"  target="_blank"> <img src="images/empty.png" /></a></li>
          </ul>
        </div>
        <div class="left dRight dInline">
          <link rel="stylesheet" type="text/css" href="css/alert.css">
          <style type="text/css">
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {color: #000;}
input:-moz-placeholder, textarea:-moz-placeholder {color:#000;}
input::-moz-placeholder, textarea::-moz-placeholder {color:#000;}
input:-ms-input-placeholder, textarea:-ms-input-placeholder {color:#000;}
</style>
          <form class="dForm" name="dForm" id="dForm" method="post"  action="checkUserOnLineSrdzSmall.jsp">
            <h2>私人订制</h2>
            <p>专业车辆顾问为您服务</p>
            <table>
            <tr>
              <td><select class="Smakeid" name="brand"  id="brand" placeholder="所属品牌">
                  <option value=""> 选择品牌</option>
                  <option value="爱玛" >爱玛</option>
				  <option value="E客" >E客</option>
			      <option value="台铃" >台铃</option>
                  <option value="新日" >新日</option>
                  <option value="小刀" >小刀</option>
                  <option value="小牛" >小牛</option>
			      <option value="雅迪" >雅迪</option> 
			      <option value="其他" >其他</option>
                </select></td>
            </tr>
            <tr>
              <td><div id="xlselect">
                  <select name="style" id="style">
                    <option value=""> 选择车系（必选）</option>
					<option value="两轮" >两轮</option>
					<option value="电动摩托车" >电动摩托车</option>
					<option value="跑车" >跑车</option>
					<option value="踏板车" >踏板车</option>
					<option value="折叠式" >折叠式</option>
					<option value="其他" >其他</option>
                  </select>
                </div></td>
            </tr>
            <tr>
              <td><select name="age" id="age">
                  <option value="不限">选择使用年限</option>
                  <option value="1年以内">1年以内</option>
                  <option value="2年以内">2年以内</option>
                  <option value="3年以内">3年以内</option>
                  <option value="3-5年">3-5年</option>
                  <option value="5年以上">5年以上</option>
                </select></td>
            </tr>
            <tr>
              <td><input type="text" id="minPrice" name="minPrice" placeholder="最少预算" value="" class="cInput" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                <input type="text" id="maxPrice" name="maxPrice" placeholder="最多预算" value="" class="cInput" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                万元 </td>
            </tr>
            <tr>
              <td><input type="text" value="" placeholder="计划购买时间" style="width:95%" class="form_datetime cInput" name="buytime" data-date-format="yyyy-mm"></td>
            </tr>
            <tr>
              <td><textarea name="content" placeholder="其他要求（例如车身和内饰颜色、行驶里程要求等）"></textarea></td>
            </tr>
            <tr>
              <td><input id="input-phone" type="hidden" name="mobile" value="" />
                <input id="input-verify" type="hidden" name="verify" value="" />
                <input type="button" value="提交需求" class="sBtn" style=" padding:0;" id="sendMESS" onclick="return checkInput()" /></td>
            </tr>
          </table>
          </form>
          
          
        </div>
      </div>
    </div>
  </div>
 
</div>


<!--底部的开始-->
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
<!--底部的结束-->

<!--右侧内容的开始-->
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

<!--右侧内容的结束-->

<!--会员登录和注册弹出框开始-->
<div id="popBox">
  <div class="popCont"> <a class="p_closed">关闭</a>
    <div class="p-tab"> <a>用户登录<i></i></a><a>用户注册<i></i></a> </div>
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
            <a href="Meet/editPass">忘记登录密码？</a> </div>
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
<!--会员登录和注册弹出框结束-->


<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script> 
<script type="text/javascript" src="js/index.js"></script> 
<!--右侧滑动-->
<script type="text/javascript" src="js/miniBar.js"></script>
<script type="text/javascript" src="js/lg_reg.js"></script>

<!--搜索下图片切换-->
<!--<script type="text/javascript">
$(function(){
	$('.b_btn').hide();
	$('#banner').hover(function(){
		$(this).find('.b_btn').fadeIn();
	},function(){
		$(this).find('.b_btn').hide();
	});
	$('.bDiv').width($(window).width());
	$('.banShow').width($(window).width());
	$(window).resize(function(){
		$('.bDiv').width($(window).width());
		$('.banShow').width($(window).width());
	})
})
</script> -->
<script type="text/javascript">
var checkInput=function(){
	var makeCar=$("#brand").val();
		var styleCar=$("#style").val();
		var buytimeval=$("#age").val();
		var mialval=$("#minPrice").val();
		var price=$("#maxPrice").val();
		if(makeCar==0){
			alert("请选择品牌");
			$("#brand").focus();
			return false;
		}
		if(styleCar==0){
			alert("请选择车型");
			$("#style").focus();
			return false;
		}
		if(buytimeval==0){
			alert("请选择车龄");
			$("#age").focus();
			return false;
		}
		if(mialval==''){
			alert("请输入最少预算");
			$("#mialval").focus();
			return false;
		}
		if(price==''){
			alert("请输入最大预算");
			$("#price").focus();
			return false;
		}
		document.getElementById('dForm').submit();
}
</script>


</body>
</html>
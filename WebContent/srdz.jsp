<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%@ page import="dao.*" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>私人订制</title>
<meta name="description" content="二手车"/>
<meta name="keywords" content="福州二手车,福大二手车">
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/ding.css">
<!--<link rel="stylesheet" type="text/css" href="css/alert.css">-->
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
      <a href="buyCar.jsp">我要买车</a>
      <a  href="checkUserOnLineSell.jsp">我要卖车</a>
      <a class="on" href="checkUserOnLineSrdz.jsp">私人定制</a>
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
<style>
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {color: #656565;}
input:-moz-placeholder, textarea:-moz-placeholder {color:#656565;}
input::-moz-placeholder, textarea::-moz-placeholder {color:#656565;}
input:-ms-input-placeholder, textarea:-ms-input-placeholder {color:#656565;}
</style>
<div id="about">
  <div class="mTags">
    <div class="wrap"> <a href="#">福大二手车</a>><a href="4.html">私人订制</a> </div>
  </div>
  <div class="dBox">
    <div class="dzDetail">
      <div class="wrap clearfix">
        <div class="dzLeft left dInline"> <strong>私人订制</strong>
          <p> 私人订制是根据您对车辆品牌、车型、年限、预算等的需求进行定制化服务，我们将在大学城范围内搜寻相匹配的优质车，供您挑选，让爱车真正成为您的专属座驾。 </p>
        </div>
        <input type="hidden" id="ckmobile" value="1" />
        <div class="diForm">
          <form id="dForm" name="dForm" method="post" action="setRequirment.jsp">
          <br/>
          <h3>提交信息，帮您量身定制！</h3>
            <table>
              <tr>
                <td><select class="Smakeid" name="brand"  id="" placeholder="所属品牌">
                    <option value="0"> 选择品牌（必选）</option>
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
                    <select class="" name="style"  id="" placeholder="所属车型">
                            <option value="0"> 选择车系（必选）</option>
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
                    <option value="0">选择使用年限</option>
                    <option value="1年以内">1年以内</option>
                    <option value="2年以内">2年以内</option>
                    <option value="3年以内">3年以内</option>
                    <option value="3年以上">5年以内</option>
                    <option value="5年以上">5年以上</option>
                  </select></td>
              </tr>
              <tr>
                <td><input type="text" value="" placeholder="计划购买时间" style="padding:0px" class="form_datetime dateTxt" name="buytime" data-date-format="yyyy-mm"></td>
              </tr>
              <tr>
                <td><label class="f14">购买预算</label>
                  <input name="minPrice" type="text" style="padding:0px" class="ysTxt" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                  <span>-</span>
                  <input name="maxPrice" type="text" style="padding:0px" class="ysTxt" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                  <label>元</label></td>
                <td></td>
              </tr>
              <tr>
                <td colspan="2"><textarea name="content" class="f14" placeholder="其他要求（例如车身颜色、行驶里程要求等）"></textarea></td>
              </tr>
              <tr>
                <td colspan="2" style="text-align:right;"><input id="input-phone" type="hidden" name="mobile" value="" />
                  <input id="input-verify" type="hidden" name="verify" value="" />
                  <a href="#" class="btn" id="sendMESS" onclick="document.getElementById('dForm').submit();return false">私人订制</a>
                  </td>
              </tr>
            </table>
          </form>
        </div>
      </div>
    </div>
    <div style="text-align:center;padding:150px 0;"> <img src="images/dz1.jpg"/> </div>
  </div>
</div>
<div id="footer">
  <div class="foot-a">
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
            <a href="../../../Meet/editPass">忘记登录密码？</a> </div>
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
<script language="javascript" type="text/javascript" src="datepicker/WdatePicker.js"></script> 
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
<script type="text/livescript">
$("#sendMESS").live("click",function(){
	var ckmobile=$("#ckmobile").val();
	if(ckmobile){
		$("#yzcode").attr("src",'/Admin/Login/buildVerify');
		$('#popBoxYzm').fadeIn();
	}else{
		sendtosend();
	}
});
function sendtosend(){
	if ($('#remembermobile').attr('checked')){
		remember = 2;
	}else{
		remember='';
	}
	var mobile=$("#shoujihao").val();
	var verify=$("#yanzhengma").val();
	var re = /^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/;
	if(!re.exec(mobile)){
		alert("手机号格式不正确");
		$("#shoujihao").focus();
		return false;
	}else{
		$("#input-phone").val(mobile);
		$("#input-verify").val(verify);
		$('#popBoxYzm').fadeOut();
		$('#dForm').submit();
	}
}
</script>
<img src="images/logo.png" width="155" height="34">
</body>
</html>
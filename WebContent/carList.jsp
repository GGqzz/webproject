<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Vector" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>买车页面</title>
<meta name="description" content="二手车"/>
<meta name="keywords" content="福州二手车,福大二手车">
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/pro.css">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
<script>
        DD_belatedPNG.fix('*');
    </script>
<![endif]-->

<%
	Vector<Car> carList=new Vector<Car>();
	carList=(Vector<Car>)session.getAttribute("carList");
	int cPage;
	int pageCount=(int)session.getAttribute("pageCount")-1;
	if(request.getParameter("currentPage")==null){
		cPage=(int)session.getAttribute("currentPage");
	}
	else{
		cPage=Integer.parseInt(request.getParameter("cPage"));
		session.setAttribute("currentPage", cPage);
	}
%>
<%
	User user=(User)session.getAttribute("user");
%>
</head>
<body>
<div id="header">
  <div class="top">
    <div class="wrap clearfix"> <a href="#" class="logo left"><img src="images/logo11.png"/></a>
      <div class="nav left dInline" id="headerMenu">
      <a  href="index.jsp">首页</a>
      <a href="buyCar.jsp">我要买车</a>
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
<style>
.s-form { margin-top:0px;}
.toselect{background-color: rgb(64, 100, 156); color:#FFF}
</style>
<div id="about">
  <div class="mTags" style="margin-bottom:20px">
    <div class="wrap"> <a href="index.jsp">福大二手车交易</a>><a href="buyCar.jsp">我要买车</a> </div>
  </div>
  <div class="wrap text-left">
    <div class="carfliter-box">
      <div class="carfl-tit clearfix">
        <a href="checkUserOnLineSrdz.jsp" class="dBtn right">在线私人订制</a> </div>
      <div class="condition">
        <ul>
          <li class=""> <span class="c-name left">品牌：</span>
            <div class="spec-moudle left dInline"> 
            <a href="#" ><img src="images/logo1.png" width="81" style="height:32px;"/></a>
            <a href="#"><img src="images/logo2.png" width="108" style="height:32px;"/></a>
            <a href="#"><img src="images/logo (1).png" width="97" style="height:32px;"/></a>
            <a href="#"><img src="images/22.jpg" width="102" style="height:32px;"/></a>
            <a href="#"><img src="images/23.jpg" width="81" style="height:32px;"/></a>
            <a href="#" ><img src="images/24.png" style="height:32px;"/></a>
           
              <div class="pro_smore">
                <div class="clearfix ps-a">
                  <select class="left" name="brandSelect"  id="Smakeid" placeholder="所属品牌">
                    	<option value=""> 不限</option>
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
              </div>
            </div>
          </li>
          <li class=""> <span class="c-name left">价格：</span>
            <div class="spec-moudle left dInline"> 
	            <a href="#" >1000以内</a> 
	            <a href="#" >1-3千</a> 
	            <a href="#" >3-5千</a> 
	            <a href="#" >5千以上</a>
              <div class="pro_smore">
                <div class="clearfix ps-b">
                  <table>
                    <tr>
                      <td><input name="price_L" type="text" class="sTxt" id="price_L" value="" /></td>
                      <td>-</td>
                      <td><input name="price_R" type="text" class="sTxt" id="price_R" value="" /></td>
                      <td>元</td>
                      <td><input type="submit" value="确定" class="sBtn" id="tjprice" style="line-height:10px" /></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </li>
          <li class="" style="height:28px;"> <span class="c-name left">车型：</span>
            <div class="spec-moudle left dInline" style="height:auto;"> 
            <a href="#"  >两轮</a> <a href="#"  >
             	 电动摩托车</a> <a href="#" >
             	 跑车</a> <a href="#"  >
             	 踏板车</a> <a href="#" >
              	折叠式</a> <a href="#" >
             	 更多</a> 
             	  <div class="pro_smore">
                <div class="clearfix ps-a">
                  <select name="style" id="style">
                    <option value="">不限</option>
					<option value="两轮" >两轮</option>
					<option value="电动摩托车" >电动摩托车</option>
					<option value="跑车" >跑车</option>
					<option value="踏板车" >踏板车</option>
					<option value="折叠式" >折叠式</option>
					<option value="其他" >其他</option>
                  </select>
                </div>
              </div>
            </div>
          </li>
          <li class=""> <span class="c-name left">车龄：</span>
            <div class="spec-moudle left dInline"> 
            <a href="#" id="0-1" >1年以内</a> 
            <a href="#" id="0-2" >2年以内</a> 
            <a href="#" id="0-3" >3年以内</a>  
            <a href="#" id="3-0" >3年以上</a>
              <div class="pro_smore">
                <div class="clearfix ps-b">
                  <table>
                    <tr>
                      <td><input name="age_L" type="text" class="sTxt" id="cheling_L" value="" /></td>
                      <td>-</td>
                      <td><input name="age_R" type="text" class="sTxt" id="cheling_R" value="" /></td>
                      <td>年</td>
                      <td><input type="submit" value="确定" class="sBtn" id="tjcheling" style="line-height:10px" /></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="aWrap clearfix wrap">
    <div class="left dInline aLeft">
      <div class="carSou">
        <div class="cs-tit">
          <div class="clearfix">
            <div class="ctLeft left dInline">
              <div class="ct-a left dInline"> 
              	<a class="on" href="javascript:void(0);" ><i>全部</i></a>
              </div>
              <div class="cs_sub"> 排序： 
	              <a class="cs-a1" href="buyCar.jsp">默认<img src="images/down.gif"/></a> 
	              <a href="sortByPrice.jsp">价格<img src="images/up.gif"/></a> 
	              <a href="sortByAge.jsp">车龄<img src="images/up.gif"/></a> 
              </div>
            </div>
            <div class="right cpages"> <%=(int)session.getAttribute("currentPage")+1 %>/<%=(int)session.getAttribute("pageCount") %> <a href="carPageJump.jsp?cPage=<%=(int)session.getAttribute("currentPage")-1 %>">&lt;</a><a href="carPageJump.jsp?cPage=<%=(int)session.getAttribute("currentPage")+1 %>">&gt;</a> </div>
          </div>
          <div class="cs-tit1"></div>
        </div>
        <div class="cs-list">
          <ul>
          <%if(carList.size()!=0){ %>
            <li class="clearfix" style="position: relative;"> <span class="carImg left dInline">
            <a href="carDetail.jsp?carNumber=<%=cPage*2 %>" target="_blank">
              <div class="car_bg"> </div>
              <img src="images/3.png"  width="300" /></a> </span>
              <div class="carTxt right dInline">
                <h2><a href="carDetail.jsp?carNumber=<%=cPage*2 %>" target="_blank"><%=carList.get(cPage*2).getBrand()+" "+carList.get(cPage*2).getStyle() %></a></h2>
                <p> <span>购买时间：<%=carList.get((int)session.getAttribute("currentPage")*2).getBuy_Time() %></span> <span>已行驶：<%=carList.get((int)session.getAttribute("currentPage")*2).getMile() %>公里</span>   </p>
                <div class="price clearfix" style="margin:8px 0;">
                  <div class="left dInline pNum" style="width:110px;"> <font>价格</font><br/>
                    <span class="num nBlue"><%=carList.get((int)session.getAttribute("currentPage")*2).getPrice() %> </span><font> 元</font> </div>
                  <input type="hidden" class="CarValue_1165" value="{img:'/Uploads/PhotoGalley/2016-02-22/56caabd482cc0.JPG-thumb.JPG',id:'1165',price:'22.8',status:'加入对比',title:'奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型',url:'/Cars/index/channel/2/id/1165.html'}" />
                  </span> </div>
                <div class="cs_bt clearfix" style="padding-top:7px;"> <a href="carDetail.jsp?carNumber=<%=cPage*2 %>" class="cs-q b-login" >立即抢订</a>  </div>
              </div>
            </li>
	           <%if(carList.size()!=(int)session.getAttribute("currentPage")*2+1){ %>
	           <li class="clearfix" style="position: relative;"> <span class="carImg left dInline">
	            <a href="carDetail.jsp?carNumber=<%=cPage*2+1 %>" target="_blank">
	              <div class="car_bg"> </div>
	              <img src="images/3.png"  width="300" /></a> </span>
	              <div class="carTxt right dInline">
	                <h2><a href="carDetail.jsp?carNumber=<%=cPage*2+1 %>" target="_blank"><%=carList.get(cPage*2+1).getBrand()+" "+carList.get(cPage*2+1).getStyle() %></a></h2>
	                <p> <span>购买时间：<%=carList.get(cPage*2+1).getBuy_Time() %></span> <span>已行驶：<%=carList.get(cPage*2+1).getMile() %>公里</span>   </p>
	                <div class="price clearfix" style="margin:8px 0;">
	                  <div class="left dInline pNum" style="width:110px;"> <font>价格</font><br/>
	                    <span class="num nBlue"><%=carList.get(cPage*2+1).getPrice() %> </span><font> 元</font> </div>
	                  <input type="hidden" class="CarValue_1165" value="{img:'/Uploads/PhotoGalley/2016-02-22/56caabd482cc0.JPG-thumb.JPG',id:'1165',price:'22.8',status:'加入对比',title:'奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型',url:'/Cars/index/channel/2/id/1165.html'}" />
	                  </span> </div>
	                <div class="cs_bt clearfix" style="padding-top:7px;"> <a href="carDetail.jsp?carNumber=<%=cPage*2+1 %>" class="cs-q b-login" id="Order_1165">立即抢订</a>  </div>
	              </div>
	            </li>
	            <%} %>
            <%} %>
          </ul>
          <div class="pages"> 
	          <a class="on" href="carPageJump.jsp?cPage=<%=0 %>">1</a>
	          <a class="" href="carPageJump.jsp?cPage=<%=1 %>">2</a>
	          <a href="carPageJump.jsp?cPage=<%=(int)session.getAttribute("currentPage")+1 %>">>></a> 
	          <a href="carPageJump.jsp?cPage=<%=pageCount++ %>"><%=session.getAttribute("pageCount")%></a> 
          </div>
        </div>
      </div>
    </div>
    <div class="right dInline aRight"> 
      <div class="dBox">
        <link rel="stylesheet" type="text/css" href="css/alert.css">
        <style type="text/css">
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {color: #000;}
input:-moz-placeholder, textarea:-moz-placeholder {color:#000;}
input::-moz-placeholder, textarea::-moz-placeholder {color:#000;}
input:-ms-input-placeholder, textarea:-ms-input-placeholder {color:#000;}
</style>
        <form class="dForm" name="dForm" id="dForm" method="post" action="checkUserOnLineSrdzSmall.jsp">
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
        <input type="hidden" id="ckmobile" value="1" />

<script type="text/livescript">
</script> 
      </div>
      <style type="text/css">
			.sameCar{margin-top:20px;padding-bottom:15px;border:1px solid #ccc;border-top:none;}
			.sameCar h4{font-size:14px;color:#fff;padding:10px;background:#3F7DDD;}
			.sameCar ul{}
			.sameCar li{line-height:20px; margin:0px 10px;border-bottom:1px solid #ccc;padding:5px 0;}
			.nav_fixed{position:fixed;top:0px;z-index: 10;}
* html .nav_fixed{position:absolute;bottom:auto;top:expression(eval(document.documentElement.scrollTop));}
			#header{position:absolute;}
			#d_gd,.gd_box{width:253px;overflow:hidden;}
			
			</style>
    </div>
  </div>
</div>
<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
		/*var amNavTop= $('#d_gd').offset().top;*/
		var b=$(window).scrollTop();
		if(b>=amNavTop)
		{
			$('#d_gd').find('.gd_box').addClass('nav_fixed');
		}
		else
		{
			$('#d_gd').find('.gd_box').removeClass('nav_fixed');
		};

	});
})

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
    </div>
  </div>
</div>
<!--右侧搜索加入对比开始-->
<script type="text/javascript" src="js/miniBar.js"></script> 
<script type="text/javascript" src="js/lg_reg.js"></script>
 
<script type="text/javascript" src="js/search_car.js"></script> 
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<!--右侧搜索加入对比结束-->
<!--右侧滚动开始--> 
<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
	})
})
jQuery(".txtMarquee-top").slide({mainCell:".bd ul",autoPlay:true,effect:"topMarquee",vis:5,interTime:50,trigger:"click"});
</script>
<!--右侧滚动结束--> 
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script> 
<script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script> 
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
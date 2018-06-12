<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%@ page import="dao.*" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>关于我们</title>
<meta name="description" content="二手车"/>
<meta name="keywords" content="福州二手车,福大二手车"> 
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" href="css/about.css">
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

<div id="about">
	<div class="mTags wrap">
		<a href="#">福大二手车交易</a>><a href="36">关于我们</a>
	</div>
	<div class="wAbout">
		<div class="a-wa">
			<div class="wrap a-nav">
				<ul class="clearfix">
					<li class="on"><a href="#">团队简介</a></li><li><a href="#">联系我们</a></li></ul>
			</div>
		</div>
		<div class="a-wb">
			<div class="wrap">
				<h1>团队简介</h1>
				<div class="a-div">
					<p style="text-align: center;"><br/></p>
					<p style="text-align: center;"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 14px;">&nbsp; &nbsp;<span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">福大二手车交易为web课程设计，设计此网站的初衷是为福大的同学们提供一个便捷的电动车交易平台，方便即将毕业的同学们处理电动车，同时也给想要买车的同学们一个便捷、优惠的买车平台。</span></span></p>
					<p style="text-align: center;"><span style="font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">&nbsp; &nbsp;网站由团队四人通力协作完成，团队成员有：林、覃、蔡、班</span></p><p><br/></p><p style="text-align: center;"><br/></p><p><br/></p>				</div>
				<div class="a-div" id="dizhi">
					<div class="a-xi clearfix">
					  <p>
						  <strong>联系我们</strong><br/>
							联系电话 ：********* <br/>
							邮箱：******@qq.com<br/>	
							官方微博：@福大二手车交易<br/>
							微信号：福大二手车交易
					  </p>
					</div>
				</div>
			</div>
		</div>
	</div>
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

<!--会员登录与注册开始-->

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
			            <a href="../../../../../Meet/editPass">忘记登录密码？</a>
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

<!--会员登录与注册开始-->



<script type="text/javascript" src="js/miniBar.js"></script>
<script type="text/javascript" src="js/lg_reg.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(113.688899,34.753367);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"亿金汽车",content:"地址：紫荆山东大街裕鸿花园<br/>电话：400-888-666",point:"113.688297|34.753857",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Vector" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>商品详情</title>
<meta name="description" content="二手车"/>
<meta name="keywords" content="福州二手车,福大二手车">
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/pro.css">
<link rel="stylesheet" type="text/css" href="css/alert.css">
<!--<link rel="stylesheet" type="text/css" href="css/jquery.fancybox-1.3.4.css">
<link rel="stylesheet" type="text/css" href="css/jquery.ad-gallery.css">-->
<link rel="stylesheet" href="css/quanju.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>


<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
<script>
        DD_belatedPNG.fix('*');
    </script>
<![endif]-->
</head>

<%
	Vector<Car> carList=new Vector<Car>();
	carList=(Vector<Car>)session.getAttribute("carList");
	Car car=new Car();
	car=carList.get(Integer.parseInt(request.getParameter("carNumber")));
	
%>

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
#header{position:absolute;}
.nav_fixed{position:fixed;top:0px;}
* html .nav_fixed{position:absolute;bottom:auto;top:expression(eval(document.documentElement.scrollTop));}
.mTags span.right{font-size:14px;padding-top:4px;display:inline-block;}
.mTags span.right a{font-size:14px;color:#f60;}
.l_dizhi{height:35px; line-height:35px;}
.l_dizhi img{vertical-align: middle;position:relative;top:-1px;}
#jShow{position:absolute;left:0;top:0;color:#fff;background:#d00;width:20px;text-align: center;z-index: 100;padding:10px;font-size:18px;font-weight: bold;}
</style>
<div id="about">
  <div class="mTags wrap"> <a href="index.jsp">福大二手车交易</a>><a href="buyCar.jsp">我要买车</a>><a href="#">商品详情</a> <span class="right">对这辆车不满意，我要 <a href="srdz.html">私人订制</a></span> </div>
  <div class="wrap clearfix buyTop" style="padding-bottom:40px;">
    <div class="left dInline" style="width:592px;" >
      <!--图片切换部分开始-->
      <div id="play">
  <ul class="img_ul">
    <li style="display:block;"><a class="img_a"><img src="images/4.jpg"></a></li>
    <li><a class="img_a"><img src="images/41.jpg"></a></li>
    <li><a class="img_a"><img src="images/42.jpg"></a></li>
    
  </ul>
  <a href="javascript:void(0)" class="prev_a change_a" title="上一张"> <span></span></a> 
  <a href="javascript:void(0)" class="next_a change_a" title="下一张"> <span style="display: inline; "></span> </a> 
</div>
  
<div class="img_hd">
  <ul class=" clearfix1">
    <li><a class="img_a"><img src="images/4.jpg" onload="imgs_load(this)"></a></li>
    <li><a class="img_a"><img src="images/41.jpg" onload="imgs_load(this)"></a></li>
    <li><a class="img_a"><img src="images/42.jpg" onload="imgs_load(this)"></a></li>
    
  </ul>
  <a class="bottom_a prev_a" style="opacity: 0.7; "></a> 
  <a class="bottom_a next_a" style="opacity: 0.7; "></a> 
</div>
      <!--图片切换部分结束-->
    </div>
    <div class="buyTxt right dInline">
      <h1><%=car.getBrand()+" "+car.getStyle() %></h1>
      <div class="byDl clearfix">
        <div class="price" style="width:235px;">
          <p>
                                价格：</p>
          <span class="num nBlue"> <%=car.getPrice() %> </span> <font>元</font>
        </div>
        
      </div>
      <div class="byDl clearfix byDl_tab"> <span class="left bItem">
        <div> 购买时间
          <p><%=car.getBuy_Time() %></p>
        </div>
        </span> <span class="left bItem">
        <div> 行驶里程
          <p><%=car.getMile() %>公里</p>
        </div>
        </span> </div>
      <div class="byBtn clearfix"> <a class="by_qd b-login" href="setOrder.jsp?car_id=<%=car.getCar_id() %>" >立即抢定</a>
        
        <!--<a href="#">置换</a>--> 
        
        <!--<a href="javascript:void(0)" onclick="tongzhi('2','fs')">发送到手机</a>没有登录调用-->
        
        <input type="hidden" class="CarValue_2" value="{img:'/Uploads/PhotoGalley/2015-08-31/55e40527bdbd9.JPG-thumb.JPG',id:'2',price:'74.8',status:'加入对比',title:'E客 E1S标准版',url:'/Cars/index/channel/2/id/2.html'}">
      </div>
    </div>
  </div>
  <div class="wrap">
    <div class="buyDetail">
      <div class="b_tab_nav">
        <div class="b-tab"> <a class="on b_ta" href="#cBox1" data-scroll data-speed="1000">基本信息<i></i></a> <a href="#cBox3" data-scroll data-speed="1000" class="b_ta">图片赏析<i></i></a> <!--<a href="../../../../../Apply/Index/channel/5/id/2.html#jisuanqi">贷款计算器<i></i></a>--> <span style="float:right;font-size:14px;color: #2e71b8; margin-right:30px;"></span> </div>
      </div>
      <div class="b-cont">
        <div id="cBox1" class="c_box">
          <h2><%=car.getBrand()+" "+car.getStyle() %></h2>
          <div class="cbox-a">
            <div class="ca-dl"> <span class="caItem on">基本信息</span>
              <div class="clearfix">
                <div class="jb_infor left">
                  <table>
                    <tr>
                      <td width="270">购买时间</td>
                      <td><%=car.getBuy_Time() %></td>
                    </tr>
                    <tr>
                      <td class="ca-td1">车身颜色</td>
                      <td class="ca-td1">灰色 </td>
                    </tr>
                  </table>
                </div>
                <div class="jb_infor right">
                  <table>
                    <tr>
                      <td width="270">电池</td>
                      <td>60V26AH电芯电池</td>
                    </tr>
                    <tr>
                      <td class="ca-td1">充电器</td>
                      <td class="ca-td1">普通7H充电器</td>
                    </tr>
                    <tr>
                      <td width="270">价格</td>
                      <td><%=car.getPrice() %>元</td>
                    </tr>
                  </table>
                </div>
                <div class="jb_infor left">
                  <table>
                    <tr>
                      <td width="270">交通事故</td>
						<td  >无</td>
                     
                    </tr>
                    <tr>
                      <td class="ca-td1">行驶里程</td>
                      <td class="ca-td1"><%=car.getMile() %>公里</td>
                    </tr>
                  </table>
                </div>
                
                
              </div>
            </div>
            <div class="ca-dl"> <span class="caItem on">详细描述</span>
              <div class="clearfix">
                <table>
                  <tr>
                    <td colspan="8"><p>临近毕业，想要出手手中的电动车，买了快两年了，平时骑得时间不多，所以车子还是比较新的，没有故障问题，想了解的可以联系我，拒绝鸽子党。</p></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <div id="cBox3" class="c_box">
          <ul class="cPic clearfix">
            <li class="left"><img height="342"  src="images/42.jpg"  /></li>
            <li class="right"><img height="342"  src="images/4.jpg"  /></li>
            <li class="left"><img height="342"  src="images/41.jpg"  /></li>
            <li class="right"><img height="342"  src="images/42.jpg"  /></li>
           
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="wrap">
    <div class="y_like">
      <h1>您可能会喜欢</h1>
      <ul class="clearfix">
        <li style="width:250px; height:333px;"> <a href="carDetail.jsp?carNumber=0" style="width:auto; padding:40px 20px;"> <img src="images/14.png" width="204" height="136" />
          <h3><%=carList.get(0).getBrand()+" "+carList.get(0).getStyle() %></h3>
          <div class="price"> 
            价 <span class="num nBlue"><%=carList.get(0).getPrice() %></span> 元</div>
          <p><%=carList.get(0).getBuy_Time() %> | <%=carList.get(0).getMile() %>公里 </p>
          </a> </li>
        <li style="width:250px; height:333px;"> <a href="carDetail.jsp?carNumber=1" style="width:auto; padding:40px 20px;"> <img src="images/15.png" width="205" height="135" />
          <h3><%=carList.get(1).getBrand()+" "+carList.get(1).getStyle() %></h3>
          <div class="price">价格 <span class="num nBlue"><%=carList.get(1).getPrice() %></span> 元 </div>
          <p><%=carList.get(1).getBuy_Time() %> | <%=carList.get(1).getMile() %>千里 </p>
        </a> </li>
        <li style="width:250px; height:333px;"> <a href="1135.html" style="width:auto; padding:40px 20px;"> <img src="images/13.png" width="191" height="136" />
          <h3><%=carList.get(2).getBrand()+" "+carList.get(2).getStyle() %></h3>
          <div class="price"> 
            价 <span class="num nBlue"><%=carList.get(2).getPrice() %></span> 元 </div>
          <p><%=carList.get(2).getBuy_Time() %> | <%=carList.get(2).getMile() %>公里 </p>
          </a> </li>
        <li style="width:250px; height:333px;"> <a href="946.html" style="width:auto; padding:40px 20px;"> <img src="images/12.png" width="202" height="133" />
          <h3><%=carList.get(3).getBrand()+" "+carList.get(3).getStyle() %></h3>
          <div class="price">价格 <span class="num nBlue"><%=carList.get(3).getPrice() %></span> 元 </div>
          <p><%=carList.get(3).getBuy_Time() %> | <%=carList.get(3).getMile() %>公里 </p>
          </a> </li>
      </ul>
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
            <a href="../../../../../Meet/editPass">忘记登录密码？</a> </div>
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
<script type="text/javascript" src="js/miniBar.js"></script> 
<script type="text/javascript" src="js/lg_reg.js"></script> 
<script type="text/javascript" src="js/smooth-scroll.js"></script> 
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script> 

<script type="text/javascript" src="js/CarLoad.js"></script> 
<!--图片切换-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
	var i=0; //图片标识
var img_num=$(".img_ul").children("li").length; //图片个数
$(".img_ul li").hide(); //初始化图片	
play();
$(function(){
	 $(".img_hd ul").css("width",($(".img_hd ul li").outerWidth(true))*img_num); //设置ul的长度
	 
	 $(".bottom_a").css("opacity",0.7);	//初始化底部a透明度
	 //$("#play").css("height",$("#play .img_ul").height());
	 if (!window.XMLHttpRequest) {//对ie6设置a的位置
	 $(".change_a").css("height",$(".change_a").parent().height());}
	 $(".change_a").focus( function() { this.blur(); } );
	 $(".bottom_a").hover(function(){//底部a经过事件
		 $(this).css("opacity",1);	
		 },function(){
		$(this).css("opacity",0.7);	 
			 });
	 $(".change_a").hover(function(){//箭头显示事件
		 $(this).children("span").show();
		 },function(){
		 $(this).children("span").hide();
			 });
	 $(".img_hd ul li").click(function(){
		 i=$(this).index();
		 play();
		 });
	 $(".prev_a").click(function(){
		 //i+=img_num;
		 i--;
		 //i=i%img_num;
		 i=(i<0?0:i);
		 play();
		 }); 
	 $(".next_a").click(function(){
		 i++;
		 //i=i%img_num;
		 i=(i>(img_num-1)?(img_num-1):i);
		 play();
		 }); 
	 }); 
function play(){//动画移动	
	var img=new Image(); //图片预加载
	img.onload=function(){img_load(img,$(".img_ul").children("li").eq(i).find("img"))};
	img.src=$(".img_ul").children("li").eq(i).find("img").attr("src");
	//$(".img_ul").children("li").eq(i).find("img").(img_load($(".img_ul").children("li").eq(i).find("img")));
	
	$(".img_hd ul").children("li").eq(i).addClass("on").siblings().removeClass("on");
	if(img_num>7){//大于7个的时候进行移动
		if(i<img_num-3){ //前3个
		$(".img_hd ul").animate({"marginLeft":(-($(".img_hd ul li").outerWidth()+4)*(i-3<0?0:(i-3)))});
		}
		else if(i>=img_num-3){//后3个
			$(".img_hd ul").animate({"marginLeft":(-($(".img_hd ul li").outerWidth()+4)*(img_num-7))});
			}
	}
	if (!window.XMLHttpRequest) {//对ie6设置a的位置
	$(".change_a").css("height",$(".change_a").parent().height());}
	}
function img_load(img_id,now_imgid){//大图片加载设置 （img_id 新建的img,now_imgid当前图片）
    
    if(img_id.width/img_id.height>1)
	{
		if(img_id.width >=$("#play").width()) $(now_imgid).width($("#play").width());
		}
	else {
		if(img_id.height>=500) $(now_imgid).height(365);
		}
		$(".img_ul").children("li").eq(i).show().siblings("li").hide(); //大小确定后进行显示
	}
function imgs_load(img_id){//小图片加载设置
	if(img_id.width >=$(".img_hd ul li").width()){img_id.width = 80};
	//if(img_id.height>=$(".img_hd ul li").height()) {img_id.height=$(".img_hd ul li").height();}
	}
	</script>




</body>
</html>
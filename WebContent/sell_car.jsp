<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>卖车页面</title>
<style type="text/css">
#品牌_0 {	color: #000;
}
.a {
	font-family: "Courier New", Courier, monospace;
	font-size: 24px;
}
.a {
	font-size: 24px;
}
.a {
	font-size: 24px;
	font-family: "Courier New", Courier, monospace;
}
.a {
	font-size: 24px;
	font-family: "Courier New", Courier, monospace;
}
.a {
	font-size: 24px;
	font-family: "Courier New", Courier, monospace;
}
.a {
	font-size: 24px;
	font-family: "Courier New", Courier, monospace;
}
</style>
</head>

<body>
<div class="public-header">
        <img src="favicon.ico" />
        <a href="main.jsp">福大二手车</a>
        <a class="function1" href="main.jsp">首页</a>
        <a class="function" href="buy_car.jsp">我要买车</a>
        <a class="function" href="sell_car.jsp">我要卖车</a>
        <a class="function" href="GaofenFilm.jsp">联系我们</a>
        <form class="header-search">
        <div class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
            <button type="button">注册</button>
            <div class="morph-content">
                <div>
                    <div class="content-style-form content-style-form-1">
                        <span class="icon icon-close">Close the dialog</span>
                        <h2>Login</h2>
                        <form  action="loginServlet"   method="get">
                            <p><label>Email</label><input type="text1" /></p>
                            <p><label>Password</label><input type="password" /></p>
                            <p><button type="submit" id="btn_submit" >Login</button></p>
                        
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="morph-button morph-button-modal morph-button-modal-3 morph-button-fixed">
            <button type="button">登录</button>
            <div class="morph-content">
                <div>
                    <div class="content-style-form content-style-form-2">
                        <span class="icon icon-close">Close the dialog</span>
                        <h2>Sign Up</h2>
                        <form>
                            <p><label>Email</label><input type="text1" /></p>
                            <p><label>Password</label><input type="password" /></p>
                            <p><label>Repeat Password</label><input type="password" /></p>
                            <p><button>Sign Up</button></p>
                            <p><button type="submit" id="btn_submit" >Sign Up</button></p>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <a class="function2" href="Play record.html">已下载▼</a>
    </div>
<table width="1024" border="1" align="center">
  <tr>
    <td><img src="1111.jpg" alt="" width="1292" height="260" /></td>
  </tr>
  <tr>
    <td><table width="1309" border="1">
      <tr>
        <td width="167"><div align="center" class="a">首页</div></td>
        <td width="191"><div align="center" class="a">我要卖车</div></td>
        <td width="217"><div align="center" class="a">我要买车</div></td>
        <td width="212"><div align="center" class="a">发布需求</div></td>
        <td width="189"><div align="center" class="a">预约买车</div></td>
        <td width="204"><div align="center" class="a">联系我们</div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" bgcolor="#99CCFF">我要卖车：请在下面选择你的车情况
      <table width="1024" border="1">
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><table width="1280" border="0" cellpadding="0" cellspacing="15">
            <tr>
              <td width="950" height="131"  bgcolor="#FFFFFF" ><form id="form3" name="form3" method="post" action="">
                <p>&nbsp;&nbsp;品牌：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_0" />
                    雅迪</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_1" />
                    新日</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_2" />
                    绿源</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_3" />
                    E客</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_4" />
                    台铃</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_5" />
                    小米</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_6" />
                    小刀</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_7" />
                    立马</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_8" />
                    新大洲</label>
                  <label>
                    <input type="radio" name="品牌" value="单选" id="品牌_9" />
                    小牛</label>
                </p>
              </form></td>
            </tr>
            <tr>
              <td height="60" bgcolor="#FFFFFF"><form id="form2" name="form2" method="post" action="">
                <p>&nbsp;&nbsp;类型：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <label>
                    <input type="radio" name="类型" value="单选" id="类型_0" />
                    电动摩托车</label>
                  <label>
                    <input type="radio" name="类型" value="单选" id="类型_1" />
                    电动自行车</label>
                  <label>
                    <input type="radio" name="类型" value="单选" id="类型_2" />
                    电动滑板车</label>
                  <label>
                    <input type="radio" name="类型" value="单选" id="类型_3" />
                    电动平衡车</label>
                  </p>
                </form></td>
            </tr>
            <tr>
              <td height="195" border="0.5" bgcolor="#FFFFFF"><form id="form1"  name="form1" method="post" action="">
                <p>&nbsp;&nbsp;预售价格：</p>
                <p>
                  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="价格区间" value="单选" id="价格区间_0" />
                    500-1000</label>
                  <br />
                  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="价格区间" value="单选" id="价格区间_1" />
                    1000-1500</label>
                  <br />
                  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="价格区间" value="单选" id="价格区间_2" />
                    1500-2000</label>
                  <br />
                  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="价格区间" value="单选" id="价格区间_3" />
                    2000-2500</label>
                  <br />
                  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="价格区间" value="单选" id="价格区间_4" />
                    2500-3000</label>
                  <br />
                  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="价格区间" value="单选" id="价格区间_5" />
                    3000-3500</label>
                  <br />
                </p>
              </form></td>
            </tr>
             <tr>
              <td height="60" bgcolor="#FFFFFF"><form id="form2" name="form2" method="post" action="">
                <p>&nbsp;&nbsp;车的照片：</p>
                <!--<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="ccc.JPG" width="518" height="405" /></p>-->
                <script>
window.onload =function(){
	var result=document.getElementById("result");
	var file=document.getElementById("file");
	if(typeof FileReader =='underfined')
	{
		result.innerHTML="<h1>当前浏览器不支持FileReader对象</h1>";
		file.setAttribute('disabled','disabled');
	}
}
function readAsDataURL(){
 var file= document.getElementById("file").files[0];
 if(!/image\/\w+/.test(file.type))
 {
	 alert("提交文件不是图像类型");
	 return false;
 }
 var reader=new FileReader();
 reader.readAsDataURL(file);
 reader.onload=function(e)
 {
	 result.innerHTML='<img src="'+this.result+'"alt=""/>'
 }
}
</script>
</head>

<body>
<input type="file" id="file"/>
<input type="button" value="读取图像" onclick="readAsDataURL()"/>
<div name="result" id="result"></div> 
                   <input type="submit" name="1" id="1" value="选择上传" style="width:100px;height:50px;border:1px solid #DCDCDC;background:#999" />
                </form></td>
            </tr>
            <tr bgcolor="#0066FF">
              <td height="141" bgcolor="#FFFFFF"><form id="form4" name="form4" method="post" action="">
                <div align="center">
                  <input type="submit" name="1" id="1" value="发布需求" style="width:100px;height:50px;border:1px solid #DCDCDC;background:#999" />
                  </div>
                </form></td>
            </tr>
          </table></td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>

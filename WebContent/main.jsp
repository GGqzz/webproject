<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>杰哥二手车</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/index.css" />
    <link rel="shortcut icon" href="favicon.ico" />

    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" type="text/css" href="css/content.css" />
    <script src="js/modernizr.custom.js"></script>
</head>

<style>
    input[type=text] {
        width: 18%;
        color: #828282;
        box-sizing: border-box;
        border-radius: 20px;
        border: 1px solid #fff;
        font-weight: bolder;
        font-size: 14px;
        background-color: #fff;
        padding: 8px 10px 8px 10px;
        margin-top: 8px;
        margin-left: 110px;
        float: left;
        outline: none;
        -webkit-autofill {
            -webkit-box-shadow: 0 0 0px 1000px white inset;
        }
    }

    ul,
    ol {
        padding: 0;
    }

    .banner {
        position: relative;
        overflow: auto;
        text-align: center;
    }

    .banner li {
        list-style: none;
    }

    .banner ul li {
        float: left;
    }

    #b04 {
        width: 100%;
    }

    #b04 .dots {
        position: absolute;
        left: 0;
        right: 0;
        bottom: 20px;
    }

    #b04 .dots li {
        display: inline-block;
        width: 10px;
        height: 10px;
        margin: 0 4px;
        text-indent: -999em;
        border: 2px solid #fff;
        border-radius: 6px;
        cursor: pointer;
        opacity: .4;
        -webkit-transition: background .5s, opacity .5s;
        -moz-transition: background .5s, opacity .5s;
        transition: background .5s, opacity .5s;
    }

    #b04 .dots li.active {
        background: #fff;
        opacity: 1;
    }

    #b04 .arrow {
        position: absolute;
        top: 200px;
    }

    #b04 #al {
        left: 15px;
    }

    #b04 #ar {
        right: 15px;
    }
</style>

<body>
    <!-- 引入jQuery和unslider -->
    <script src="./js/jquery-1.11.1.min.js"></script>
    <script src="./js/unslider.min.js"></script>

    <!-- 轮播图js控制 -->
    <script>
        $(document).ready(function(e) {
            var unslider04 = $('#b04').unslider({
                    dots: true
                }),
                data04 = unslider04.data('unslider');

            $('.unslider-arrow04').click(function() {
                var fn = this.className.split(' ')[1];
                data04[fn]();
            });
        });
    
    </script>

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



    <div class="banner" id="b04">
        <ul>
            <li><a href="http://www.iqiyi.com/v_19rrlhpojo.html"><img src="./img/qqq.jpg" alt="" width="100%" height="480"></img></a></li>
            <li><a href="http://vchart.yinyuetai.com/vchart/v"><img src="./img/bbb.JPG" alt="" width="100%" height="480"></img></a></li>
            <li><a href="http://vchart.yinyuetai.com/vchart/v"><img src="./img/ccc.JPG" alt="" width="100%" height="480"></img></a></li>
            <li><a href="http://vchart.yinyuetai.com/vchart/v"><img src="./img/ddd.JPG" alt="" width="100%" height="480"></img></a></li>
            <li><a href="http://vchart.yinyuetai.com/vchart/v"><img src="./img/eee.JPG" alt="" width="100%" height="480"></img></a></li>
        </ul>
        <a href="javascript:void(0);" class="unslider-arrow04 prev"><img class="arrow" id="al" src="./img/arrowl.png" alt="prev" width="20" height="35"></a>
        <a href="javascript:void(0);" class="unslider-arrow04 next"><img class="arrow" id="ar" src="./img/arrowr.png" alt="next" width="20" height="37"></a>
    </div>

    <div class="public-container clearfloat">
        <div class="index-Section1">
            <div class="type"><a href="">最新二手车推荐</a>
                <p>Exclusive</p>
            </div>
            <div class="content">
                <div class="block1">
                    <a href="">Shadows Short ver</a>
                    <p>FTISLAND</p>
                </div>

                <div class="block2">
                    <div class="block3">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                    <div class="block4">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>

                    <div class="block5">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                    <div class="block6">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                </div>
            </div>

        </div>
        <div class="index-Section2">
            <div class="type"><a href="NewFilm.jsp">最新二手车推荐</a>
                <p>Newest</p>
            </div>
            <div class="content">
                <div class="block1">
                    <a href="">Shadows Short ver</a>
                    <p>FTISLAND</p>
                </div>
                <div class="Sketch">
                    <a href="">超新二手车，立刻开回家</a>
                    <b>品牌电动车，你值得拥有</b>
                    <p>快点把电动车开回家吧，隔壁老王家的儿子买了这个电动车都有女朋友了，你还在等什么</p>

                </div>
                <div class="block2">
                    <div class="block3">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                    <div class="block4">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="index-Section2">
            <div class="type"><a href="Newzongyi.jsp">最美二手车推荐</a>
                <p>Newest</p>
            </div>
            <div class="content">
                <div class="block1">
                    <a href="">Shadows Short ver</a>
                    <p>FTISLAND</p>
                </div>
                <div class="Sketch">
                    <a href="">超美二手车</a>
                    <b>这款电动车符合你的少女心</b>
                    <p>快点把电动车开回家吧，隔壁老王家的儿子买了这个电动车都有女朋友了，你还在等什么</p>

                </div>
                <div class="block2">
                    <div class="block3">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                    <div class="block4">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="index-Section2">
            <div class="type"><a href="GuoneiFilm.jsp">最便宜二手车推荐</a>
                <p>Newest</p>
            </div>
            <div class="content">
                <div class="block1">
                    <a href="">Shadows Short ver</a>
                    <p>FTISLAND</p>
                </div>
                <div class="Sketch">
                    <a href="">超便宜二手车</a>
                    <b>用最少的钱，买最好的车 </b>
                    <p>快点把电动车开回家吧，隔壁老王家的儿子买了这个电动车都有女朋友了，你还在等什么</p>

                </div>
                <div class="block2">
                    <div class="block3">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                    <div class="block4">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="index-Section2">
            <div class="type"><a href="RehanFilm.jsp">最实用电动车推荐</a>
                <p>Newest</p>
            </div>
            <div class="content">
                <div class="block1">
                    <a href="">Shadows Short ver</a>
                    <p>FTISLAND</p>
                </div>
                <div class="Sketch">
                    <a href="">超实用电动车</a>
                    <b>开十年都不坏的电动车</b>
                    <p>快点把电动车开回家吧，隔壁老王家的儿子买了这个电动车都有女朋友了，你还在等什么</p>

                </div>
                <div class="block2">
                    <div class="block3">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                    <div class="block4">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="index-Section2">
            <div class="type"><a href="OumeiFilm.jsp">最酷炫电动车推荐</a>
                <p>Newest</p>
            </div>
            <div class="content">
                <div class="block1">
                    <a href="">Shadows Short ver</a>
                    <p>FTISLAND</p>
                </div>
                <div class="Sketch">
                    <a href="">超酷炫电动车</a>
                    <b>有了这个电动车，妈妈再也不用担心我没女朋友了</b>
                    <p>快点把电动车开回家吧，隔壁老王家的儿子买了这个电动车都有女朋友了，你还在等什么</p>

                </div>
                <div class="block2">
                    <div class="block3">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                    <div class="block4">
                        <a href="">Shadows Short ver</a>
                        <p>FTISLAND</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="paging">
            < 1 2 3 4 5 6 7 ... 100&nbsp>
        </div>
    </div>

    <div class="public-footer">Copyright [2017.3.21] by [HowCome & Jay Cai & XueWei Chen]</div>


    <script src="js/classie.js"></script>
    <script src="js/uiMorphingButton_fixed.js"></script>
    <script>
        (function() {
            var docElem = window.document.documentElement,
                didScroll, scrollPosition;

            // trick to prevent scrolling when opening/closing button
            function noScrollFn() {
                window.scrollTo(scrollPosition ? scrollPosition.x : 0, scrollPosition ? scrollPosition.y : 0);
            }

            function noScroll() {
                window.removeEventListener('scroll', scrollHandler);
                window.addEventListener('scroll', noScrollFn);
            }

            function scrollFn() {
                window.addEventListener('scroll', scrollHandler);
            }

            function canScroll() {
                window.removeEventListener('scroll', noScrollFn);
                scrollFn();
            }

            function scrollHandler() {
                if (!didScroll) {
                    didScroll = true;
                    setTimeout(function() {
                        scrollPage();
                    }, 60);
                }
            };

            function scrollPage() {
                scrollPosition = {
                    x: window.pageXOffset || docElem.scrollLeft,
                    y: window.pageYOffset || docElem.scrollTop
                };
                didScroll = false;
            };

            scrollFn();

            [].slice.call(document.querySelectorAll('.morph-button')).forEach(function(bttn) {
                new UIMorphingButton(bttn, {
                    closeEl: '.icon-close',
                    onBeforeOpen: function() {
                        // don't allow to scroll
                        noScroll();
                    },
                    onAfterOpen: function() {
                        // can scroll again
                        canScroll();
                    },
                    onBeforeClose: function() {
                        // don't allow to scroll
                        noScroll();
                    },
                    onAfterClose: function() {
                        // can scroll again
                        canScroll();
                    }
                });
            });

            // for demo purposes only
            [].slice.call(document.querySelectorAll('form button')).forEach(function(bttn) {
                bttn.addEventListener('click', function(ev) {
                    ev.preventDefault();
                });
            });
        })();
    </script>



</body>

</html>
    
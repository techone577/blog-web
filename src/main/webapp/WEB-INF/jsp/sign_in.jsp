<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if IE 6]><html class="ie lt-ie8"><![endif]-->
<!--[if IE 7]><html class="ie lt-ie8"><![endif]-->
<!--[if IE 8]><html class="ie ie8"><![endif]-->
<!--[if IE 9]><html class="ie ie9"><![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">

    <!-- Start of Baidu Transcode -->
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta name="applicable-device" content="pc,mobile">
    <meta name="MobileOptimized" content="width"/>
    <meta name="HandheldFriendly" content="true"/>
    <meta name="mobile-agent" content="format=html5;url=https://www.jianshu.com/sign_in">
    <!-- End of Baidu Transcode -->

    <meta name="description"  content="加入Blogging，打造年轻人的第一个博客！">

    <meta name="360-site-verification" content="604a14b53c6b871206001285921e81d8" />
    <meta property="wb:webmaster" content="294ec9de89e7fadb" />
    <meta property="qc:admins" content="104102651453316562112116375" />
    <meta property="qc:admins" content="11635613706305617" />
    <meta property="qc:admins" content="1163561616621163056375" />
    <meta name="google-site-verification" content="cV4-qkUJZR6gmFeajx_UyPe47GW9vY6cnCrYtCHYNh4" />
    <meta name="google-site-verification" content="HF7lfF8YEGs1qtCE-kPml8Z469e2RHhGajy6JPVy5XI" />
    <meta http-equiv="mobile-agent" content="format=html5; url=https://www.jianshu.com/sign_in">

    <!-- Apple -->
    <meta name="apple-mobile-web-app-title" content="Blogging">



    <title>登录 - Blogging</title>

    <link rel="stylesheet" media="all" href="/css/jianshu/web-bfc15fabb3b20492f7d4.css" />

    <link rel="stylesheet" media="all" href="/css/jianshu/entry-1a3678e27fe77011521b.css" />

    <link rel="stylesheet" media="all" href="/css/liveBackground.css">

    <%--<link rel="stylesheet" href="/css/font-awesome.min.css">--%>
    <%--<link rel="stylesheet" href="/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="/css/demo.css" />--%>
    <%--<link rel="stylesheet" href="/css/templatemo-style.css">--%>

    <link href="/images/logo.jpg" rel="shortcut icon" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="/images/logo.jpg" sizes="57x57" />
    <link rel="apple-touch-icon-precomposed" href="/images/logo.jpg" sizes="72x72" />
    <link rel="apple-touch-icon-precomposed" href="/images/logo.jpg" sizes="76x76" />
    <link rel="apple-touch-icon-precomposed" href="/images/logo.jpg" sizes="114x114" />
    <link rel="apple-touch-icon-precomposed" href="/images/logo.jpg" sizes="120x120" />
    <link rel="apple-touch-icon-precomposed" href="/images/logo.jpg" sizes="152x152" />

    <!-- Start of 访问统计 -->
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?0c0e9d9b1e7d617b3e6842e85b9fb068";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

    <!-- End of 访问统计 -->
</head>

<body class="no-padding reader-black-font" lang="zh-CN">

<ul class="cb-slideshow">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
</ul>
<div class="sign">
    <div class="logo"><a href="/"><img src="/images/logo.jpg" alt="Logo" /></a></div>
    <div class="main">
        <h4 class="title">
            <div class="normal-title" style="position:relative;">
                <a class="active" href="/view/sign/sign_in">登录</a>
                <b>·</b>
                <a id="js-sign-up-btn" class="" href="/view/sign/sign_up"  >注册</a>
            </div>
        </h4>
        <div class="js-sign-in-container">
            <form id="new_session" action="/sessions" accept-charset="UTF-8" method="post" autocomplete="off" ><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="xESv0l10N9ozCTV51jpcRzELH3WtE2HpsGvF07uVmwQVMk761JuIxc1NL+pTI+lb0hPrC0EYagt+mKXXNVvuag==" />

                <!-- 正常登录登录名输入框 -->
                <div class="input-prepend restyle js-normal" style="background-color: #FFFF99;filter: blur(30%)">
                    <input placeholder="手机号或邮箱" type="text"  autocomplete="false" name="session[email_or_mobile_number]" id="session_email_or_mobile_number"/>
                    <i class="iconfont ic-user"></i>
                </div>

                <div class="input-prepend" style="background-color: #FFFF99;filter: blur(30%)">
                    <input placeholder="密码" type="password" autocomplete="new-password" name="session[password]" id="session_password"/>
                    <i class="iconfont ic-password"></i>
                </div>
                <div class="remember-btn">
                    <input type="checkbox" value="true" checked="checked" name="session[remember_me]" id="session_remember_me" /><span>记住我</span>
                </div>
                <div class="forget-btn">
                    <a class="" data-toggle="dropdown" href="">登录遇到问题?</a>
                    <ul class="dropdown-menu">
                        <li><a href="/users/password/mobile_reset">用手机号重置密码</a></li>
                        <li><a href="/users/password/email_reset">用邮箱重置密码</a></li>
                        <li><a target="_blank" href="/p/9058d0b8711d">无法用海外手机号登录</a></li>
                        <li><a target="_blank" href="/p/498a9fa7da08">无法用 Google 帐号登录</a></li>
                    </ul>
                </div>
                <button class="sign-in-button" id="sign-in-form-submit-btn" type="button">
                    <span id="sign-in-loading"></span>
                    登录
                </button>
            </form>
            <!-- 更多登录方式 -->
            <div class="more-sign">
                <h6>社交帐号登录</h6>
                <ul>
                    <%--<li id="weibo-link-wrap" class="weibo-loading">--%>
                        <%--<a class="weibo" id="weibo-link">--%>
                            <%--<i class="iconfont ic-weibo"></i>--%>
                        <%--</a>--%>
                    <%--</li>--%>
                    <li><a id="weixin" class="weixin" target="_blank" href="/users/auth/wechat"><i class="iconfont ic-wechat"></i></a></li>
                    <li><a id="qq" class="qq" target="_blank" href="/users/auth/qq_connect"><i class="iconfont ic-qq_connect"></i></a></li>
                </ul>

                <div class="weibo-geetest-captcha"></div>
            </div>
        </div>

    </div>
</div>

<!-- Javascripts
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="application/json" data-name="page-data">{"user_signed_in":false,"locale":"zh-CN","os":"windows","read_mode":"day","read_font":"font2"}</script>

<script src="/js/jianshu/web-base-e7d171d05887383731d2.js" crossorigin="anonymous"></script>
<script src="/js/jianshu/web-2226b3b5031f5a513d8f.js" crossorigin="anonymous"></script>
<%--<script src="/js/jianshu/entry-f7e14e2f1268430af7b9.js" crossorigin="anonymous"></script>--%>
<%--<script type="text/javascript" src="/js/particles.js"></script>--%>
<%--<script type="text/javascript" src="/js/app.js"></script>--%>
<%--<script type="text/javascript" src="/js/modernizr.custom.86080.js"></script>--%>
<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>

</body>
</html>

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
    <meta name="mobile-agent" content="format=html5;url=https://www.jianshu.com/sign_up">
    <!-- End of Baidu Transcode -->

    <meta name="description"  content="Blogging-年轻人的第一个博客">

    <meta name="360-site-verification" content="604a14b53c6b871206001285921e81d8" />
    <meta property="wb:webmaster" content="294ec9de89e7fadb" />
    <meta property="qc:admins" content="104102651453316562112116375" />
    <meta property="qc:admins" content="11635613706305617" />
    <meta property="qc:admins" content="1163561616621163056375" />
    <meta name="google-site-verification" content="cV4-qkUJZR6gmFeajx_UyPe47GW9vY6cnCrYtCHYNh4" />
    <meta name="google-site-verification" content="HF7lfF8YEGs1qtCE-kPml8Z469e2RHhGajy6JPVy5XI" />
    <meta http-equiv="mobile-agent" content="format=html5; url=https://www.jianshu.com/sign_up">

    <!-- Apple -->
    <meta name="apple-mobile-web-app-title" content="Blogging">



    <title>注册 - Blogging</title>

    <meta name="csrf-param" content="authenticity_token" />
    <meta name="csrf-token" content="o6ETaodw5MTxZIb85sSjoFQSJqRlvMZI6FqwvxKBxUBy1/JCDp9b2w8gnG9j3Ra8twrS2om3zaomqdC7nE+wLg==" />

    <link rel="stylesheet" media="all" href="/css/jianshu/web-bfc15fabb3b20492f7d4.css" />

    <link rel="stylesheet" media="all" href="/css/jianshu/entry-1a3678e27fe77011521b.css" />

    <link rel="stylesheet" media="all" href="/css/liveBackground.css">

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
    <div class="main" style="position: relative">
        <h4 class="title">
            <div class="normal-title">
                <a class="" href="${pageContext.request.contextPath}/view/sign/sign_in">登录</a>
                <b>·</b>
                <a id="js-sign-up-btn" class="active" href="/view/sign/sign_up">注册</a>
            </div>
        </h4>
        <div class="js-sign-up-container">
            <form class="new_user" id="new_user" action="/users/register" accept-charset="UTF-8" method="post" autocomplete="off"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="/t9/+arQuvRZMv49hZ2er1G2V6aU5aVbZAd8n0cO2xwvqZ7RIz8F66d25K4AhCuzsq6j2Hjurrmq9BybycCucg==" />
                <div class="input-prepend restyle" style="background-color: #FFFF99;filter: blur(30%)">
                    <input placeholder="你的昵称" type="text" value="" name="user[nickname]" id="user_nickname"/>
                    <i class="iconfont ic-user"></i>
                </div>
                <div class="input-prepend restyle no-radius js-normal" style="background-color: #FFFF99;filter: blur(30%)">
                    <input type="hidden" value="CN" name="user[mobile_number_country_code]" id="user_mobile_number_country_code" />
                    <input placeholder="手机号" type="tel" name="user[mobile_number]" id="user_mobile_number" />
                    <i class="iconfont ic-phonenumber"></i>
                </div>
                <input type="hidden" name="oversea" id="oversea" value="false" />
                <input type="hidden" name="force_user_nonexist" id="force_user_nonexist" value="true" />
                <div class="input-prepend restyle no-radius security-up-code js-security-number hide" style="background-color: #FFFF99;filter: blur(30%)">
                    <input type="text" name="sms_code" id="sms_code" placeholder="手机验证码" />
                    <i class="iconfont ic-verify"></i>
                    <a tabindex="-1" class="btn-up-resend js-send-code-button disable" href="javascript:void(0);" id="send_code">发送验证码</a>
                    <div class="js-geetest-captcha"></div>
                </div>
                <input type="hidden" name="security_number" id="security_number" />
                <div class="input-prepend" style="background-color: #FFFF99;filter: blur(30%)">
                    <input placeholder="设置密码" type="password" name="user[password]" id="user_password" autocomplete="new-password"/>
                    <i class="iconfont ic-password"></i>
                </div>
                <input type="submit" name="commit" value="注册" class="sign-up-button" id="sign_up_btn" data-disable-with="注册" />
                <p class="sign-up-msg">点击 “注册” 即表示您同意并愿意遵守Blogging<br> <a target="_blank" href="http://www.jianshu.com/p/c44d171298ce">用户协议</a> 和 <a target="_blank" href="http://www.jianshu.com/p/2ov8x3">隐私政策</a> 。</p>
            </form>
            <!-- 更多注册方式 -->
            <div class="more-sign">
                <h6>社交帐号直接注册</h6>
                <ul>
                    <li><a id="weixin" class="weixin" target="_blank" href="/users/auth/wechat"><i class="iconfont ic-wechat"></i></a></li>
                    <li><a id="qq" class="qq" target="_blank" href="/users/auth/qq_connect"><i class="iconfont ic-qq_connect"></i></a></li>
                </ul>

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
<script src="/js/jianshu/entry-5d55473c92d21e013cde.js" crossorigin="anonymous"></script>
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

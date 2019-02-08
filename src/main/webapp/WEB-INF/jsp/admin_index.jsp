<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN" style="width: 100%">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Blogging-年轻人的第一个博客</title>
    <!--
    Letter Template
    http://www.templatemo.com/tm-510-letter
    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">

    <link rel="stylesheet" href="/css/demo.css" />
    <link rel="stylesheet" href="/css/templatemo-style.css">

    <script type="text/javascript" src="/js/modernizr.custom.86080.js"></script>

</head>

<body>

<div id="particles-js"></div>

<ul class="cb-slideshow">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
</ul>

<div class="container-fluid">
    <div class="row cb-slideshow-text-container ">
        <div class= "tm-content col-xl-6 col-sm-8 col-xs-8 ml-auto section">
            <header class="mb-5"><h1>Blogging</h1></header>
            <P class="mb-5">年轻人的第一个博客</P>

            <%--<form action="${pageContext.request.contextPath}/api/index/sign_in" method="post" class="subscribe-form" id="root_sign_in_form">--%>
                <div class="row form-section">

                    <div class="col-md-7 col-sm-7 col-xs-7">
                        <input name="rootUserName" type="text" class="form-control" id="AdminName" placeholder="UserName" required/>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-7" style="margin-top: 10px">
                        <input name="rootPassword" type="text" class="form-control" id="AdminPassword" placeholder="Password" required/>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-7" style="margin-top: 10px;text-align:right">
                        <button type="submit" class="tm-btn-subscribe" id="admin_sign_in_btn">登录</button>
                    </div>

                </div>
            <%--</form>--%>

            <div class="tm-social-icons-container text-xs-center">
                <a href="#" class="tm-social-link"><i class="fa fa-weixin"></i></a>
                <a href="#" class="tm-social-link"><i class="fa fa-weibo"></i></a>
                <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
                <a href="#" class="tm-social-link"><i class="fa fa-github"></i></a>
            </div>

        </div>
    </div>
    <div class="footer-link">
        <p>Copyright © 2018 TechOne
    </div>
</div>
</body>

<script type="text/javascript" src = "/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/particles.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<script type="text/javascript" src="/js/index.js"></script>
</html>
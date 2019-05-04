<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <title>
        TECHONE
    </title>
    <link rel="canonical" href="/view/blog/home">
    <link rel="shortcut icon" href="/images/avatar/avatar.jpeg"/>

    <link href="/css/home/all.min.css" rel="stylesheet">
    <%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Ubuntu+Mono:400,400i,700,700i|Raleway:300,400,500,600">--%>
    <link href="/css/home/font.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/home/mdb.min.css" rel="stylesheet">
    <link href="/css/home/style.min.css" rel="stylesheet">
    <link href="/css/home/main.css" rel="stylesheet">

    <style type="text/css">
        @media (min-width: 800px) and (max-width: 850px) {
            .navbar:not(.top-nav-collapse) {
                background: #1C2331 !important;
            }
        }
    </style>

    <link rel="stylesheet" href="/css/home/github-gist.css">
</head>

<body class="bg-light" data-spy="scroll" data-target="#page-scrollspy" data-offset="90">

<%--导航栏--%>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
    <div class="container">
        <%--商标logo--%>
        <a class="navbar-brand" href="/view/blog/home">
            <img class="avatar" src="" style="width: 40px!important;height: auto;" class="d-inline-block align-top"
                 alt="">
            <strong> TECHONE</strong>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <%--导航栏组件--%>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto ">
                <li class="nav-item  active ">
                    <a class="nav-link" href="/view/blog/home">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="/view/blog/postlist?tag=LeetCode">LeetCode </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="/view/blog/postlist">Blog </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="/view/blog/about">About </a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<%--背景--%>

<div id="site-header" class="carousel slide carousel-fade" data-ride="carousel">


    <ol class="carousel-indicators">

        <li data-target="#site-header" data-slide-to="0" class="active"></li>

        <li data-target="#site-header" data-slide-to="1"></li>

        <li data-target="#site-header" data-slide-to="2"></li>

        <li data-target="#site-header" data-slide-to="3"></li>

        <li data-target="#site-header" data-slide-to="4"></li>

    </ol>

    <%--背景jpg--%>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div class="view"
                 style="background-image: url('/images/bg/fan.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

        <div class="carousel-item">
            <div class="view"
                 style="background-image: url('/images/bg/leaf.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

        <div class="carousel-item">
            <div class="view"
                 style="background-image: url('/images/bg/mirror.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

        <div class="carousel-item">
            <div class="view"
                 style="background-image: url('/images/bg/sea.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>


        <div class="carousel-item">
            <div class="view"
                 style="background-image: url('/images/bg/woods.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

    </div>


    <div class="carousel-content text-center white-text wow fadeIn">
        <div class="row mx-0 headfont mb-5 pb-3">
            <div class="col-12 col-sm-5 align-middle">
                <a href="/view/blog/home">
                    <img class="pull-right avatar avatar-lg " src="/images/avatar/avatar.jpeg" alt="">
                </a>
            </div>
            <div class="col-12 col-sm-7 text-left pl-5">
                <a href="/view/blog/home">
                    <h1 class="display-4 mb-2 mt-2 h1">
                        <strong>TECHONE_DUAN</strong>
                    </h1>
                </a>
                <p class="mb-0 p" style="font-size: 1.250rem; font-weight: 200;">
                    Be myself.
                </p>
                <p class="mb-0 p" style="font-size: 1.250rem; font-weight: 200;">
                    Love the wonderful world.
                </p>
                <p class="mb-0 p" style="font-size: 1.250rem; font-weight: 200;">
                    Do the right things and be a better man.
                </p>

                <%--社交图标--%>
                <div class="mt-2" style="font-size: 2rem; color: white;">

                    <%--github--%>
                    <a href="https://github.com/techone577" target="_blank" rel="noopener"><i class="fab fa-github pr-1"
                                                                                              aria-hidden="true"></i></a>
                    <%--weibo--%>
                    <a href="https://weibo.com/u/2279734863" target="_blank" rel="noopener"><i class="fab fa-weibo pr-1"
                                                                                               aria-hidden="true"></i></a>
                    <%--instagram--%>
                    <a href="mailto:duanyuntian577@gmail.com" target="_blank" rel="noopener"><i
                            class="fab fa-google pr-1" aria-hidden="true"></i></a>
                    <%--envelope--%>
                    <a href="mailto:zhengziou@gmail.com"><i class="far fa-envelope-open pr-1"
                                                            aria-hidden="true"></i></a>

                </div>


            </div>
        </div>
    </div>


    <%--prev--%>
    <a class="carousel-control-prev" href="#site-header" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <%--next--%>
    <a class="carousel-control-next" href="#site-header" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>

</div>


<section class="container pt-5 text-center">
    <h1 class="display-3">Hello, World!</h1>

    <p style="font-size:1.8rem; color: var(--text-light);">~ No Day But Today ~</p>

</section>


<main class="post-main-wrapper px-5">
    <div class="row">

        <%--main 侧边--%>
        <div class="col-md-3">
            <hr>
            <%--tag--%>
            <div class="post-meta">
                <div class="mb-2">
                    <a href="/view/blog/tagShow">
                         <span class="font-weight-bold text-uppercase post-meta">
                            <i class="fas fa-tags pr-1" aria-hidden="true"></i>
                                Featured Tags
                         </span>
                    </a>
                </div>
                <%--tags--%>
                <div class="li-x post-meta tags-md" id="tag_info_list" style="margin-left: -8px;">

                </div>
            </div>
            <hr>
            <%--series card--%>
            <div class="post-meta">
                <div class="mb-2">
                    <a href="/view/blog/categoryShow">
                        <span class="font-weight-bold text-uppercase post-meta">
                            <i class="fas fa-bookmark pr-1" aria-hidden="true"></i>
                                Recommend Series
                        </span>
                    </a>
                </div>

                <%--series card--%>
                <div class="post-meta" id="home_category_container">

                </div>


            </div>
        </div>

        <%--main 文章--%>
        <div class="col-md-9 mt-3">
            <div id="post_container">

            </div>

        </div>


    </div>
</main>

<%-- 文章展示模板 --%>
<div class="post-wrapper white-bg post-card" id="post_template" style="display: none">
    <a class="a">
        <div class="post-header text-center">
            <div class="px-4 post-heading title">题目</div>
            <ul class="post-meta li-x mt-1">
                <li class="date">日期</li>
                <li class="middot"></li>
                <li class="readtime"></li>
            </ul>
        </div>
        <div class="view">
            <%--图片--%>
            <img class="img"/>
        </div>
        <div class="summary">概述</div>

    </a>

    <div class="post-meta li-x mt-2 div-x">
        <%-- 所属series--%>
        <div class="post_categories">
            <li class="category_li"><a class="category_a"><i class="fas fa-folder-open pr-1"
                                                             aria-hidden="true"></i><span></span></a></li>
        </div>
        <%-- 所持有的tag --%>
        <div>
            <div class="li-x div-x post-meta">
                <li class="pr-0"><a href="/view/blog/tagShow"><i class="fas fa-tags"></i></a></li>
                <div class="tags-sm post_tags" id="post_tags">
                </div>
            </div>

        </div>
    </div>

</div>

<%-- card模板 --%>
<div class="card card-cascade wider mb-4 mt-2" id="category_card_template" style="display: none">
    <a class="category_href">
        <div class="view view-cascade overlay">
            <img class="card-img-top">
            <div class="mask rgba-white-slight waves-effect waves-light"></div>
        </div>
        <div class="card-body card-body-cascade text-center">
            <h4 class="card-title"><strong></strong></h4>
            <p class="card-text"></p>
        </div>
    </a>
</div>

<%--tag模板--%>
<li id="tag_template"><a class="home_tag" role="button" style="display: none">名称 </a></li>

<footer class="page-footer text-center font-small mt-4 wow fadeIn">
    <div class="pb-2 mt-5 pt-5">
        <a href="https://github.com/techone577" target="_blank" rel="noopener"><i class="fab fa-github pr-1"
                                                                                  aria-hidden="true"></i></a>

        <a href="https://weibo.com/u/2279734863" target="_blank" rel="noopener"><i class="fab fa-weibo pr-1"
                                                                                   aria-hidden="true"></i></a>

        <a href="mailto:duanyuntian577@gmail.com" target="_blank" rel="noopener"><i
                class="fab fa-google pr-1" aria-hidden="true"></i></a>

        <a href="mailto:1421709476@qq.com"><i class="far fa-envelope-open pr-1"
                                              aria-hidden="true"></i></a>
    </div>
    <div class="copyright py-4">
        <span>  2019 - NOW &copy; | Theme <a href='https://github.com/techone577' target="_blank">Blogging</a> by <a
                href='https://github.com/techone577' target="_blank">TechOne</a>  </span>
    </div>


</footer>

<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/jquery.smooth-scroll.min.js"></script>
<script type="text/javascript" src="/js/home/popper.min.js"></script>
<script type="text/javascript" src="/js/home/holder.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/home/mdb.min.js"></script>
<script type="text/javascript" src="/js/home/main.js"></script>
<script src="/js/home/highlight.pack.js"></script>
<script src="/js/home.js"></script>
<script>hljs.initHighlightingOnLoad();</script>

<script type="text/javascript">

    new WOW().init();
</script>

<script type="text/javascript">
    $(function () {
        $('#site-header').carousel({interval: 3000});
    })
</script>

<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>


</body>
</html>
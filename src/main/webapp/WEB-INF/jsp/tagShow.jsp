<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, maximum-scale=1" />

    <title id="tag_show_head_title">
        标签 | TECHONE
    </title>

    <link rel="canonical" href="">

    <link href="/css/home/all.min.css" rel="stylesheet">
    <link href="/css/home/font.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/home/mdb.min.css" rel="stylesheet">
    <link href="/css/home/style.min.css" rel="stylesheet">
    <link href="/css/home/main.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/home/github-gist.css">

    <link rel="shortcut icon" href="/images/avatar/avatar.jpeg">

    <style type="text/css">
        @media (min-width: 800px) and (max-width: 850px) {
            .navbar:not(.top-nav-collapse) {
                background: #1C2331!important;
            }
        }
    </style>


</head>

<body class="bg-light" data-spy="scroll" data-target="#page-scrollspy" data-offset="90">

<nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
    <div class="container">

        <a class="navbar-brand" href="/view/blog/home">

            <img class="avatar" src="" style="width: 40px!important;height: auto;"  class="d-inline-block align-top" alt="" >

            <strong> TECHONE</strong>
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto ">
                <li class="nav-item ">
                    <a class="nav-link" href="/view/blog/home">Home</a>
                </li>

                <li class="nav-item ">
                    <a class="nav-link" href="/view/blog/postlist?tag=LeetCode" >LeetCode  </a>
                </li>


                <li class="nav-item ">
                    <a class="nav-link" href="/view/blog/postlist" >Blog  </a>
                </li>


                <li class="nav-item ">
                    <a class="nav-link" href="/view/blog/about/" >About  </a>
                </li>
            </ul>

        </div>

    </div>
</nav>

<div id="site-header" class="carousel slide carousel-fade" data-ride="carousel" style="height: 18rem;" >

    <div class="carousel-inner" role="listbox">

        <div class="carousel-item active">
            <div class="view" style="background-image: url('/images/bg/fan.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

        <div class="carousel-item">
            <div class="view" style="background-image: url('/images/bg/leaf.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

        <div class="carousel-item">
            <div class="view" style="background-image: url('/images/bg/mirror.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

        <div class="carousel-item">
            <div class="view" style="background-image: url('/images/bg/sea.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

        <div class="carousel-item">
            <div class="view" style="background-image: url('/images/bg/woods.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                </div>
            </div>
        </div>

    </div>

    <div class="carousel-content text-center white-text wow fadeIn">
        <div class="row mx-0 headfont mt-3 pt-4">

            <div class="col-12 col-sm-5 align-middle">
                <a href="/view/blog/home">

                    <img class="pull-right avatar avatar-md" src="/images/avatar/avatar.jpeg" alt="" >

                </a>
            </div>

            <div class="col-12 col-sm-7 text-left pl-2">
                <a href="/view/blog/home">
                    <h1 class="mb-2 h1" style="font-weight: 300;" >
                        <strong>TECHONE</strong>
                    </h1>
                </a>

                <div class="mt-2" style="font-size: 1rem; color: white;">

                    <a href="https://github.com/techone577" target="_blank" rel="noopener"><i class="fab fa-github pr-1" aria-hidden="true"></i></a>

                    <a href="https://weibo.com/u/2279734863" target="_blank" rel="noopener"><i class="fab fa-weibo pr-1" aria-hidden="true"></i></a>

                    <a href="mailto:duanyuntian577@gmail.com" target="_blank" rel="noopener"><i
                            class="fab fa-google pr-1" aria-hidden="true"></i></a>

                    <a href="mailto:1421709476@qq.com"><i class="far fa-envelope-open pr-1" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
    </div>

</div>


<main class="post-main-wrapper px-5">

    <div class="row">

        <div class="col-md-3">

            <hr>

            <div class="post-meta">
                <div class="mb-2">
                    <a href="/view/blog/tagShow">
                        <span class="font-weight-bold text-uppercase post-meta">
                            <i class="fas fa-tags pr-1" aria-hidden="true"></i>
                                Featured Tags
                        </span>
                    </a>
                </div>

                <div class="li-x post-meta tags-md" id="tag_show_tag_infos" style="margin-left: -8px;">

                </div>
            </div>

            <hr>

            <%--<div class="post-meta">--%>
                <%--<div class="mb-2">--%>
                    <%--<a href="https://orianna-zzo.github.io/series/">--%>
                        <%--<span class="font-weight-bold text-uppercase post-meta">--%>
                            <%--<i class="fas fa-bookmark pr-1" aria-hidden="true"></i>--%>
                                 <%--Recommend Series--%>
                        <%--</span>--%>
                    <%--</a>--%>
                <%--</div>--%>

                <%--<div class="post-meta" id="post_list_series" >--%>
                    <%--<li class="py-1"><a href="https://orianna-zzo.github.io/series/blog%E5%85%BB%E6%88%90%E8%AE%B0"><span>Blog养成记 (16)</span></a></li>--%>
                <%--</div>--%>
            <%--</div>--%>

        </div>

        <div class="col-md-9 mt-3">

            <ul>
                <div class="div-x">
                    <div class='post-heading' id="tag_show_title">
                    </div>
                    <div class="px-2 middot"></div>
                    <div id="tag_show_amount">
                    </div>
                </div>

            </ul>
            <div style="margin-top: 20px">
                <div class="form-inline" id="tag_show_tag_container">
                </div>
            </div>
        </div>


    </div>
</main>

<li id = "tag_show_tag_template"><a class="home_tag" role="button" style="display: none">名称 </a></li>

<button class="layui-btn form-control" style="margin-bottom: 20px;display: none" id="tag_show_btn_template"></button>

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

        <span>  2019 - NOW &copy; | Theme <a href='https://github.com/techone577' target="_blank">Blogging</a> by <a href='https://github.com/orianna-zzo' target="_blank">TECHONE</a>  </span>
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
<script type="text/javascript" src="/layui/layui.all.js"></script>
<script type="text/javascript" src="/js/tagShow.js"></script>
<link rel="stylesheet" href="/layui/css/layui.css"/>

<script>hljs.initHighlightingOnLoad();</script>

<script type="text/javascript">

    new WOW().init();
</script>
<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>

</body>
</html>
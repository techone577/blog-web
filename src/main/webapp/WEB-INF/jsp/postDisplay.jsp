<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, maximum-scale=1"/>

    <title id="blog_head_title">

    </title>


    <link href="/css/home/all.min.css" rel="stylesheet">
    <link href="/css/home/font.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/home/mdb.min.css" rel="stylesheet">
    <link href="/css/home/style.min.css" rel="stylesheet">
    <link href="/css/home/main.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/home/github-gist.css">

    <%--小logo--%>
    <link rel="shortcut icon" href="/images/avatar/avatar.jpeg">

    <style type="text/css">
        @media (min-width: 800px) and (max-width: 850px) {
            .navbar:not(.top-nav-collapse) {
                background: #1C2331 !important;
            }
        }
    </style>

</head>

<body class="bg-light" data-spy="scroll" data-target="#page-scrollspy" data-offset="90">

<nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
    <div class="container">

        <a class="navbar-brand" href="/view/blog/home">
            <img class="avatar" src=""
                 style="width: 40px!important;height: auto;" class="d-inline-block align-top" alt="">
            <strong> TECHONE</strong>
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto ">
                <li class="nav-item ">
                    <a class="nav-link" href="/view/blog/home">Home</a>
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

<div id="site-header" class="carousel slide carousel-fade" data-ride="carousel" style="height: 18rem;">

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
        <div class="row mx-0 headfont mt-3 pt-4">

            <div class="col-12 col-sm-5 align-middle">
                <a href="/view/blog/home">

                    <img class="pull-right avatar avatar-md" src="/images/avatar/avatar.jpeg" alt="">

                </a>
            </div>

            <div class="col-12 col-sm-7 text-left pl-2">
                <a href="/view/blog/home">
                    <h1 class="mb-2 h1" style="font-weight: 300;">
                        <strong>TECHONE</strong>
                    </h1>
                </a>

                <div class="mt-2" style="font-size: 1rem; color: white;">

                    <a href="https://github.com/techone577" target="_blank" rel="noopener"><i class="fab fa-github pr-1"
                                                                                              aria-hidden="true"></i></a>

                    <a href="https://weibo.com/u/2279734863" target="_blank" rel="noopener"><i class="fab fa-weibo pr-1"
                                                                                               aria-hidden="true"></i></a>

                    <a href="mailto:duanyuntian577@gmail.com" target="_blank" rel="noopener"><i
                            class="fab fa-google pr-1" aria-hidden="true"></i></a>

                    <a href="mailto:1421709476@qq.com"><i class="far fa-envelope-open pr-1"
                                                          aria-hidden="true"></i></a>


                </div>
            </div>
        </div>
    </div>

</div>

<main class="post-main-wrapper">


    <div class="row">
        <%--博客主要内容--%>
        <div class="col-md-10">

            <div class="z-depth-1  post-wrapper white-bg single-post">
                <%--blog header--%>
                <div class="post-header text-center">

                    <%--title--%>
                    <div class="px-4 post-heading" id="blog_title"></div>

                    <ul class="post-meta li-x mt-1">

                        <%--时间--%>
                        <li id="blog_date"></li>

                        <li class="middot"></li>
                        <li class="readTime" id="post_display_readtime"></li>

                        <li class="middot"></li>
                        <li class="pageview" id="post_display_pv"></li>
                        <li id="post-display-category"><a class="a"><i
                                class="fas fa-folder-open pr-1" aria-hidden="true"></i><span></span></a></li>

                    </ul>

                    <%--<div class="view">--%>
                    <%--<img src="https://orianna-zzo.github.io/images/series/%E8%A7%82%E5%90%8Erepo/2018-09/les-mis-ad.jpg"/>--%>
                    <%--</div>--%>

                </div>
                <%--md转为html插入--%>
                <div class="post-content markdown" id="blog_content">
                </div>
                <%--tag--%>
                <div class="row">
                    <div class="col-md-8">
                        <div class="mb-5">
                            <div class="li-x div-x post-meta">
                                <li class="pr-0"><a href="https://orianna-zzo.github.io/tags/"><i
                                        class="fas fa-tags"></i></a></li>
                                <%--tags--%>
                                <div class="tags-sm" id="blog_display_tags">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--上一篇、下一篇--%>
                <div class="row pt-3" id="blog_display_nav">
                    <%--上一篇--%>
                    <div class="col-md-6">
                        <a id="previous_href" class="post-meta">上一篇
                            <div class="pt-2 pb-5 d-flex">
                                <i class="fas fa-angle-left text-grey font-weight-bold mr-2 active-color"></i>
                                <span id="previous_blog_title">无</span>
                            </div>
                        </a>
                    </div>
                    <%--下一篇--%>
                    <div class="col-md-6 text-right">
                        <a id="next_href" class="post-meta">下一篇
                            <div class="pt-2 pb-5 flex-reverse">
                                <i class="fas fa-angle-right text-grey font-weight-bold ml-2 active-color"></i>
                                <span id="next_blog_title">无</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>


        </div>

        <%--右侧导航栏--%>
        <div class="col-md-2 pl-0">

            <div id="page-scrollspy" class="toc-nav">

                <ul class="nav nav-pills ml-0" id="post_display_TOC">

                    <li class="nav-item pb-3 text-center">
                        <span class="font-weight-bold mb-2">- CATALOG - </span>
                    </li>
                </ul>
            </div>


        </div>

    </div>

</main>

<li id="blog_dispaly_tag_template"><a class="home_tag" role="button" style="display: none">名称 </a></li>
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

        <span>  2019 - NOW &copy; | Theme <a href='https://github.com/techone577'
                                             target="_blank">Blogging</a> by <a href='https://github.com/techone577'
                                                                                target="_blank">TechOne</a>  </span>
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
<script src="/js/postDisplay.js"></script>

<script>hljs.initHighlightingOnLoad();</script>


<script type="text/javascript">

    new WOW().init();
</script>


<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>


</body>
</html>
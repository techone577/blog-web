<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <title>
        /网站小窗口名字
    </title>
    <link rel="canonical" href="/view/blog/home">
    <link rel="shortcut icon"
    <%--/小窗口旁边logo--%>
    />

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
                background: #1C2331!important;
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
            <img class="avatar" src="" style="width: 40px!important;height: auto;"  class="d-inline-block align-top" alt="" >
            <strong> TECHONE</strong>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
            <%--导航栏组件--%>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto ">
                <li class="nav-item  active ">
                    <a class="nav-link" href="https://orianna-zzo.github.io/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="https://orianna-zzo.github.io/sci-tech/" >Li-Tech  </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="https://orianna-zzo.github.io/blog/" >Blog  </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="https://orianna-zzo.github.io/about/" >About  </a>
                </li>
            </ul>
        </div>
    </div>
</nav>




<%--背景--%>

<div id="site-header" class="carousel slide carousel-fade" data-ride="carousel" >


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
        <div class="row mx-0 headfont mb-5 pb-3">
            <div class="col-12 col-sm-5 align-middle">
                <a href="https://orianna-zzo.github.io/">
                    <img class="pull-right avatar avatar-lg " src="" alt="" >
                </a>
            </div>
            <div class="col-12 col-sm-7 text-left pl-5">
                <a href="https://orianna-zzo.github.io/">
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
                    <a href="//github.com/orianna-zzo" target="_blank" rel="noopener"><i class="fab fa-github pr-1" aria-hidden="true"></i></a>
                    <%--weibo--%>
                    <a href="//linkedin.com/in/ziouzheng" target="_blank" rel="noopener"><i class="fab fa-weibo pr-1" aria-hidden="true"></i></a>
                    <%--instagram--%>
                    <a href="//instagram.com/seagulldreamer/" target="_blank" rel="noopener"><i class="fab fa-instagram pr-1" aria-hidden="true"></i></a>
                    <%--envelope--%>
                    <a href="mailto:zhengziou@gmail.com"><i class="far fa-envelope-open pr-1" aria-hidden="true"></i></a>

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

<script>
    $(function(){
        $('#site-header').carousel({interval:1000});
    })
</script>

<section class="container pt-5 text-center">
    <h1 class="display-3">Hello, World!</h1>

    <p style="font-size:1.8rem; color: var(--text-light);">~ No Day But Today ~</p>

</section>


<main class="post-main-wrapper px-5">
    <div class="row">

        <%--main 侧边--%>
        <div class="col-md-3">
            <hr>
            <%--分类--%>
            <div class="post-meta">
                <div class="mb-2">
                    <a href="https://orianna-zzo.github.io/categories/">
                        <span class="font-weight-bold text-uppercase post-meta">
                             <i class="fas fa-folder-open pr-1" aria-hidden="true"></i>
                                Categories
                        </span>
                    </a>
                </div>
                <div class="li-x post-meta" style="margin-left: -8px;">
               <%--动态加载分类文章--%>

                    <li class="py-1">
                        <a href="https://orianna-zzo.github.io/categories/%E6%9D%82%E6%8A%80%E6%B5%85%E5%B0%9D">
                            <span>杂技浅尝 (29)</span>
                        </a>
                    </li>


                    <li class="middot"></li>

                    <li class="py-1">
                        <a href="https://orianna-zzo.github.io/categories/%E5%93%81%E9%89%B4%E8%AF%84%E8%AE%BA">
                            <span>品鉴评论 (10)</span>
                        </a>
                    </li>


                    <li class="middot"></li>

                    <li class="py-1">
                        <a href="https://orianna-zzo.github.io/categories/%E8%AE%BA%E6%96%87%E7%B2%BE%E8%AF%BB">
                            <span>论文精读 (2)</span>
                        </a>
                    </li>


                    <li class="middot"></li>

                    <li class="py-1">
                        <a href="https://orianna-zzo.github.io/categories/%E5%AD%A6%E6%B5%B7%E6%97%A0%E6%B6%AF">
                            <span>学海无涯 (1)</span>
                        </a>
                    </li>


                    <li class="middot"></li>

                    <li class="py-1">
                        <a href="https://orianna-zzo.github.io/categories/%E5%AF%B9%E9%85%92%E5%BD%93%E6%AD%8C">
                            <span>对酒当歌 (1)</span>
                        </a>
                    </li>

                </div>
            </div>
            <hr>
            <%--tag--%>
            <div class="post-meta">
                <div class="mb-2">
                    <a href="https://orianna-zzo.github.io/tags/">
                         <span class="font-weight-bold text-uppercase post-meta">
                            <i class="fas fa-tags pr-1" aria-hidden="true"></i>
                                Featured Tags
                         </span>
                    </a>
                </div>
                <%--tags--%>
                <div class="li-x post-meta tags-md" style="margin-left: -8px;">

                    <li><a href="https://orianna-zzo.github.io/tags/blog" role="button"><span>blog (16)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/%E5%89%8D%E7%AB%AF" role="button"><span>前端 (9)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/hugo" role="button"><span>hugo (7)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/css" role="button"><span>css (6)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/docker" role="button"><span>docker (6)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/%E6%96%87%E5%B9%BF" role="button"><span>文广 (6)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/musical" role="button"><span>musical (5)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/%E6%9C%9F%E5%BE%85%E7%9A%84show" role="button"><span>期待的show (5)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/%E7%8E%AF%E5%A2%83%E9%85%8D%E7%BD%AE" role="button"><span>环境配置 (5)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/bootstrap" role="button"><span>bootstrap (3)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/mac" role="button"><span>mac (3)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/js" role="button"><span>js (2)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/python" role="button"><span>python (2)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/%E8%88%9E%E5%89%A7" role="button"><span>舞剧 (2)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/alpine" role="button"><span>alpine (1)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/bash" role="button"><span>bash (1)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/bug" role="button"><span>bug (1)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/carousel" role="button"><span>carousel (1)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/conda" role="button"><span>conda (1)</span></a></li>


                    <li><a href="https://orianna-zzo.github.io/tags/dockerfile" role="button"><span>dockerfile (1)</span></a></li>


                </div>
            </div>
            <hr>
            <%--series card--%>
            <div class="post-meta">
                <div class="mb-2">
                    <a href="https://orianna-zzo.github.io/series/">
                        <span class="font-weight-bold text-uppercase post-meta">
                            <i class="fas fa-bookmark pr-1" aria-hidden="true"></i>
                                Recommend Series
                        </span>
                    </a>
                </div>

                <%--series card--%>
                <div class="post-meta" >

                    <div class="card card-cascade wider mb-4 mt-2">
                        <a href="https://orianna-zzo.github.io/series/blog%E5%85%BB%E6%88%90%E8%AE%B0">

                            <div class="view view-cascade overlay">
                                <img class="card-img-top" src="/images/orianna_in_the_wood.jpg" >

                                <div class="mask rgba-white-slight waves-effect waves-light"></div>

                            </div>


                            <div class="card-body card-body-cascade text-center">



                                <h4 class="card-title"><strong>Blog养成记 (16)</strong></h4>



                                <p class="card-text">我是如何一步步建立自己的Blog的。 </p>



                            </div>
                        </a>

                    </div>

                    <div class="card card-cascade wider mb-4 mt-2">
                        <a href="https://orianna-zzo.github.io/series/%E8%A7%82%E5%90%8Erepo">

                            <div class="view view-cascade overlay">
                                <img class="card-img-top" src="/images/bg/fan.jpg" >

                                <div class="mask rgba-white-slight waves-effect waves-light"></div>

                            </div>


                            <div class="card-body card-body-cascade text-center">



                                <h4 class="card-title"><strong>观后repo (10)</strong></h4>



                                <p class="card-text">话剧、舞台剧等观后感。 </p>



                            </div>
                        </a>

                    </div>

                    <div class="card card-cascade wider mb-4 mt-2">
                        <a href="https://orianna-zzo.github.io/series/%E5%89%8D%E7%AB%AF%E8%AF%95%E6%B0%B4">

                            <div class="view view-cascade overlay">
                                <img class="card-img-top" src="/images/bg/fan.jpg" >

                                <div class="mask rgba-white-slight waves-effect waves-light"></div>

                            </div>


                            <div class="card-body card-body-cascade text-center">



                                <h4 class="card-title"><strong>前端试水 (3)</strong></h4>



                                <p class="card-text">前端相关技术以应用为目的浅尝辄止地了解。 </p>



                            </div>
                        </a>

                    </div>

                    <div class="card card-cascade wider mb-4 mt-2">
                        <a href="https://orianna-zzo.github.io/series/%E6%85%A2%E5%AD%A6docker">

                            <div class="view view-cascade overlay">
                                <img class="card-img-top" src="/images/bg/fan.jpg" >

                                <div class="mask rgba-white-slight waves-effect waves-light"></div>

                            </div>


                            <div class="card-body card-body-cascade text-center">



                                <h4 class="card-title"><strong>慢学docker (3)</strong></h4>



                                <p class="card-text">Docker方便部署，也便于保持环境的清洁。这个系列记录学习docker脚步。 </p>



                            </div>
                        </a>

                    </div>

                    <div class="card card-cascade wider mb-4 mt-2">
                        <a href="https://orianna-zzo.github.io/series/mac%E5%B0%8F%E7%99%BD%E6%8E%A2%E7%B4%A2%E8%AE%B0">

                            <div class="view view-cascade overlay">
                                <img class="card-img-top" src="/images/bg/fan.jpg" >

                                <div class="mask rgba-white-slight waves-effect waves-light"></div>

                            </div>


                            <div class="card-body card-body-cascade text-center">



                                <h4 class="card-title"><strong>Mac小白探索记 (2)</strong></h4>



                                <p class="card-text">Mac小白以提高生产力为目标，探索如何高效配置及使用Mac。 </p>



                            </div>
                        </a>

                    </div>

                </div>


            </div>
        </div>

        <%--main 文章--%>
        <div class="col-md-9 mt-3">
            <div id="post_container">

                <div class="post-wrapper white-bg post-card">

                    <a href="https://orianna-zzo.github.io/blog/2018-09/les-miserable%E6%B3%95%E8%AF%AD%E9%9F%B3%E4%B9%90%E4%BC%9Arepo/">
                        <div class="post-header text-center">
                            <%--文章标题、信息、梗概--%>
                            <div class="px-4 post-heading">《Les Miserable》法语音乐会repo</div>
                            <ul class="post-meta li-x mt-1">
                                <li>Sep 30, 2018</li>
                                <li class="middot"></li>
                                <li>2 minutes read</li>

                            </ul>
                        </div>

                        <div class="view">
                            <img src="/images/bg/fan.jpg" />
                        </div>
                        2018年9月28日 19:30 上海文化广场 《Les Miserable》法语音乐会。舞台的灯光还是非常炫的，很有25周年的灯光感觉。各种类型的光交织显得朴素的舞台十分华丽。街口枪战也还原了25周年版感受到的那种无声的硝烟。最惊艳的是沙威身亡那一刻的逆光设计，真是美到爆。法语虽然没英语熟悉，但是也很好听。演员们的演唱功力都特别赞，十分值得。

                    </a>

                    <div class="post-meta li-x mt-2 div-x">
                        <div>

                            <li><a href="https://orianna-zzo.github.io/categories/%E5%93%81%E9%89%B4%E8%AF%84%E8%AE%BA"><i class="fas fa-folder-open pr-1" aria-hidden="true"></i> 品鉴评论 </a></li>

                            <li><a href="https://orianna-zzo.github.io/series/%E8%A7%82%E5%90%8Erepo"><i class="fas fa-bookmark pr-1" aria-hidden="true"></i>观后repo</a></li>

                        </div>

                        <div>

                            <div class="li-x div-x post-meta">
                                <li class="pr-0"><a href="https://orianna-zzo.github.io/tags/"><i class="fas fa-tags"></i></a></li>
                                <div class="tags-sm">

                                    <li><a href="https://orianna-zzo.github.io/tags/%E6%9C%9F%E5%BE%85%E7%9A%84show" role="button">期待的show </a></li>

                                    <li><a href="https://orianna-zzo.github.io/tags/%E6%96%87%E5%B9%BF" role="button">文广 </a></li>

                                </div>
                            </div>

                        </div>
                    </div>

                </div>

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
                <li>One minute read</li>
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
        <div id="home_post_series_container">
            <li><a href="https://orianna-zzo.github.io/categories/%E5%93%81%E9%89%B4%E8%AF%84%E8%AE%BA"><i class="fas fa-folder-open pr-1" aria-hidden="true"></i> 品鉴评论 </a></li>
            <li><a href="https://orianna-zzo.github.io/series/%E8%A7%82%E5%90%8Erepo"><i class="fas fa-bookmark pr-1" aria-hidden="true"></i>观后repo</a></li>

        </div>
        <%-- 所持有的tag --%>
        <div>
            <div class="li-x div-x post-meta">
                <li class="pr-0"><a href="https://orianna-zzo.github.io/tags/"><i class="fas fa-tags"></i></a></li>
                <div class="tags-sm post_tags" id="post_tags">
                </div>
            </div>

        </div>
    </div>

</div>

<%-- card模板 --%>
<div class="card card-cascade wider mb-4 mt-2" id="series_card_template" style="display: none">
    <a href="https://orianna-zzo.github.io/series/%E5%89%8D%E7%AB%AF%E8%AF%95%E6%B0%B4">
        <div class="view view-cascade overlay">
            <img class="card-img-top" src="https://orianna-zzo.github.io/images/series/%E5%89%8D%E7%AB%AF%E8%AF%95%E6%B0%B4/web.jpg" >
            <div class="mask rgba-white-slight waves-effect waves-light"></div>
        </div>
        <div class="card-body card-body-cascade text-center">
            <h4 class="card-title"><strong>前端试水 (3)</strong></h4>
            <p class="card-text">前端相关技术以应用为目的浅尝辄止地了解。 </p>
        </div>
    </a>
</div>

<%--tag模板--%>
<li><a class="home_tag" id = "tag_template" role="button" style="display: none">名称 </a></li>

<footer class="page-footer text-center font-small mt-4 wow fadeIn">
    <div class="pb-2 mt-5 pt-5">
        <a href="//github.com/orianna-zzo " target="_blank" rel="noopener"><i class="fab fa-github mr-3" aria-hidden="true"></i></a>
        <a href="//linkedin.com/in/ziouzheng" target="_blank" rel="noopener"><i class="fab fa-linkedin-in mr-3" aria-hidden="true"></i></a>
        <a href="//instagram.com/seagulldreamer/" target="_blank" rel="noopener"><i class="fab fa-instagram mr-3" aria-hidden="true"></i></a>
        <a href="mailto:zhengziou@gmail.com"><i class="far fa-envelope-open mr-3" aria-hidden="true"></i></a>
    </div>
    <div class="copyright py-4">
        <span>  2019 - NOW &copy; | Theme <a href='https://github.com/techone577' target="_blank">Blogging</a> by <a href='https://github.com/techone577' target="_blank">TechOne</a>  </span>
    </div>


</footer>

<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/jquery.smooth-scroll.min.js"></script>
<script type="text/javascript" src="/js/home/popper.min.js"></script>
<script type="text/javascript" src="/js/home/holder.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js" ></script>
<script type="text/javascript" src="/js/home/mdb.min.js"></script>
<script type="text/javascript" src="/js/home/main.js"></script>
<script src="/js/home/highlight.pack.js"> </script>
<script src="/js/home.js"> </script>
<script>hljs.initHighlightingOnLoad();</script>

<script type="text/javascript">

    new WOW().init();
</script>

<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>





</body>
</html>
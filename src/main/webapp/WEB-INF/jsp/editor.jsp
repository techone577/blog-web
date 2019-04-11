<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="zh-CN" style="width: 100%;height: 100%">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--
    Letter Template
    http://www.templatemo.com/tm-510-letter
    -->
    <link rel="stylesheet" href="/editor/css/editormd.css">
    <%--<link rel="stylesheet" href="//brick.a.ssl.fastly.net/Roboto:400"/>--%>
    <link rel="stylesheet" href="/css/elements/bubbly-button.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/layui/css/layui.css"/>
    <link rel="stylesheet" href="/css/elements/customButton.css"/>
</head>

<body class="body-cus">
<div class="container-fluid">
    <div class="row justify-content-start" style="height: 100%">
        <div class="col-lg-9">
            <div id="my-editormd" style="float: none;">
                <textarea id="my-editormd-markdown-doc" name="my-editormd-markdown-doc"
                          style="display:none;"></textarea>
                <!-- 注意：name属性的值-->
                <textarea id="my-editormd-html-code" name="my-editormd-html-code" style="display:none;"></textarea>
                <%--<textarea></textarea>--%>
            </div>
        </div>
        <div class="col-lg-3" id="right_bar" style="overflow-y: auto;overflow-x:hidden;height: 100%;position: relative">
            <div class="row">
                <div class="col-lg-12" style="float: none;margin-top: 40px">
                    <div class="form-inline">
                        <div class="layui-btn form-control">标题</div>
                        <input class="layui-input form-control" id="release_title" placeholder="标题"/>
                    </div>
                    <div class="form-inline">
                        <div class="layui-btn ">概述</div>
                        <textarea name="desc" placeholder="请输入内容" class="layui-textarea" id="release_summary" style="margin-top: 10px"></textarea>
                    </div>
                    <div class="form-inline">
                        <button class="layui-btn" id="tag_add_btn"><i class="layui-icon layui-icon-add-circle-fine"></i> 添加标签</button>
                    </div>
                    <div class = "form-inline" id="tag_group">
                    </div>
                    <div class="form-inline">
                        <div class="layui-btn form-control">时间</div>
                        <input class="layui-input form-control" placeholder="test"/>
                    </div>
                    <div class="col-lg-12" style="line-height: 50px;margin-top: 40px;">
                        <button class="layui-btn layui-btn-radius"><i class="layui-icon layui-icon-return"></i> 返回
                        </button>
                        <button class="layui-btn layui-btn-radius" id="release_btn"><i
                                class="layui-icon layui-icon-release"></i> 发布
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .col-lg-3{
        background-color: #CCCCCC;
        color: #333;
        height: 100%;
        width: 100%;
        line-height: 200px;
    }
    .col-lg-12{
        background-color: #CCCCCC;
        color: #333;
        height: 100%;
        width: 100%;
        line-height: 100px;
    }

    .body-cus {
        background-color: #333333;
        height: 100%;
        overflow-y: hidden;
        overflow-x: hidden;
    }

    .container-fluid {
        height: 100%;
    }
    .form-inline{
        margin-top: 10px;
    }

</style>
</body>
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/editor/js/editormd.js"></script>
<script type="text/javascript" src="/js/editor.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/layui/layui.all.js"></script>
</html>
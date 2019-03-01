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
        <div class="col-lg-10">
            <div id="my-editormd" style="float: none;">
                <textarea id="my-editormd-markdown-doc" name="my-editormd-markdown-doc"
                          style="display:none;"></textarea>
                <!-- 注意：name属性的值-->
                <textarea id="my-editormd-html-code" name="my-editormd-html-code" style="display:none;"></textarea>
                <%--<textarea></textarea>--%>
            </div>
        </div>
        <div class="col-lg-2" id="right_bar" style="overflow-y: auto;overflow-x:hidden;height: 100%;position: relative">
            <div class="row">
                <div class="col-lg-12" style="float: none">
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>

                </div>
                <div class="col-lg-12" style="line-height: 15px">
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <div class="layui-btn">button</div>
                    <aButton id="admin_sign_in_btn" data-title="返回"></aButton>
                    <button class="bubbly-button" id="back_btn">返回</button>
                    <button class="bubbly-button" id="post_submit_btn">保存</button>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .col-lg-2{
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

</style>


</body>
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/editor/js/editormd.js"></script>
<script type="text/javascript" src="/js/elements/bubbly-button.js"></script>
<script type="text/javascript" src="/js/editor.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/layui/layui.all.js"></script>
<script type="text/javascript" src="/js/elements/customButton.js"></script>
</html>
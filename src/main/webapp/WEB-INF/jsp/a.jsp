
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container-fluid fix-fluid">
    <!-- 操作 -->
    <ul class="list-group">
        <li class="list-group-item query">操作</li>
        <li class="list-group-item">
            <div class="form-inline form-inline-fix query-area">
                <div class="form-group form-group-fix">
                    <label class="cbr-inline label-fix">单笔操作：</label>
                    <input class="btn btn-default" id="single_operation_btn" type="button" value="设置订单">
                </div>
            </div>

            <div class="form-inline form-inline-fix query-area">
                <label class="cbr-inline label-fix">批量操作：</label>
                <div class="form-group form-group-fix">
                    <label class="btn btn-default" for="choose_file_btn">选择文件</label>
                    <input type="text" class="form-control" id="filename_display" readonly="true" placeholder="文件名称">
                    <label class="btn btn-default" for="submit_btn" >上传</label>
                    <input class="btn btn-default" id="download_template_btn" type="button" value="下载模板">
                </div>
                <%--action="${pageContext.request.contextPath}/view/OfflineRepay/uploadCSVFile"--%>
                <form action="${pageContext.request.contextPath}/image/upload" method="POST" enctype="multipart/form-data" id="uploadFileForm">
                    <div class="form-group form-group-fix">
                        <input type="file" name = file id="choose_file_btn" style="position:absolute;clip:rect(0 0 0 0);">
                        <input type="btn btn-default" id="submit_btn"  style="position:absolute;clip:rect(0 0 0 0);">
                    </div>

                </form>

            </div>
        </li>

    </ul>
</div>

</body>
<script type="text/javascript" src = "/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script src="/js/home.js"> </script>
</html>


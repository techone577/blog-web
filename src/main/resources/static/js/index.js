$(function () {
    // $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['zh-CN']);

    function ajaxOption(url, data, callback, option) {
        var defaultOption = {
            contentType: "application/json",
            async: true,
            type: "POST",
            url: url,
            data: data || {},
            dataType: "json",
            cache: false,
            error: function (err) {

            },
            success: function (data) {
                if (callback) {
                    callback(data);
                }
            }
        };
        if (option) {
            $.extend(defaultOption, option);
        }

        $.ajax(defaultOption);
    }

    //系统用户登陆
    $("#admin_sign_in_btn").on("click", function () {
        var rootData = {
            rootUserName: $("#AdminName").val().trim(),
            rootPassword: $("#AdminPassword").val().trim()
        };
        ajaxOption(getAction().adminSignIn,JSON.stringify(rootData),function (json) {
            if(json.success){
                window.location.href = getPage().test;
            }else{

            }
        })
    });


    //下载模板文件
    $("#download_template_btn").on("click", function () {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', getAction().downloadTemplate, true);
        //binary large object
        xhr.responseType = "blob";
        xhr.onload = function () {
            //请求完成("==="严格比较不会进行类型转换)
            if (this.status === 200) {
                var resp = this.response;
                var reader = new FileReader();
                reader.readAsDataURL(resp);
                reader.onload = function (e) {
                    //转换完成，创建一个a标签用于下载
                    var a = document.createElement("a");
                    a.download = "批量操作线下还款-模板.xlsx";
                    a.href = e.target.result;
                    $("body").append(a);    // 修复firefox中无法触发click?
                    a.click();
                    $(a).remove();
                }
            }
        };
        xhr.send();
    });

    //上传文件处理
    $("#submit_btn").on("click", function () {

        //文件格式校验
        var file = $("#choose_file_btn").val();
        if (file == "") {
            notyOption.error("文件不能为空");
            return false;
        }
        var exec = (/[.]/.exec(file)) ? /[^.]+$/.exec(file.toLowerCase()) : '';
        if (exec != "xlsx") {
            notyOption.error("请上传xlsx文件!");
            return false;
        }
        //设置表单
        var form = $("#uploadFileForm");
        var formData = new FormData($('#uploadFileForm')[0]);
        $.ajax({
            type: form.attr('method'),
            url: form.attr('action'),
            data: formData,
            cache: false,
            processData: false,
            contentType: false,
        }).success(function (data) {
            $("#offline_repay_table").bootstrapTable("refresh");
            //重置表单
            $('#uploadFileForm')[0].reset();
            $("#filename_display").val("");
            notyOption.info("上传成功");
        }).error(function () {
            notyOption.info("上传失败");
        });
    });
    //监听选择文件
    $("#choose_file_btn").change(function (e) {
        var file = this.files[0];
        $("#filename_display").val(file.name);

    });

    function getAction() {
        return {
            adminSignIn: "/api/index/sign_in"
        }
    };
    function getPage() {
      return {
          test:"/view/sign/t"
      }
    }
});

//对Date的扩展，将 Date 转化为指定格式的String
//月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
//年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
//例子：
//(new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
//(new Date()).Format("yyyy-M-d h:m:s.S") ==> 2006-7-2 8:9:4.18
Date.prototype.Format = function (fmt) { // author: meizz
    var o = {
        "M+": this.getMonth() + 1, // 月份
        "d+": this.getDate(), // 日
        "h+": this.getHours(), // 小时
        "m+": this.getMinutes(), // 分
        "s+": this.getSeconds(), // 秒
        "q+": Math.floor((this.getMonth() + 3) / 3), // 季度
        "S": this.getMilliseconds()
        // 毫秒
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
            .substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1)
                ? (o[k])
                : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};

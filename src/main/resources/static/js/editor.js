$(function () {
    // $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['zh-CN']);

    var md_editor = editormd("my-editormd", {//注意1：这里的就是上面的DIV的id属性值
        width   : "90%",
        height  : 640,
        syncScrolling : "single",
        path    : "/editor/lib/",//注意2：你的路径
        saveHTMLToTextarea : true,//注意3：这个配置，方便post提交表单

        emoji: true,//emoji表情，默认关闭
        taskList: true,
        tocm: true, // Using [TOCM]
        tex: true,// 开启科学公式TeX语言支持，默认关闭

        flowChart: true,//开启流程图支持，默认关闭
        sequenceDiagram: true,//开启时序/序列图支持，默认关闭,

        dialogLockScreen : false,//设置弹出层对话框不锁屏，全局通用，默认为true
        dialogShowMask : false,//设置弹出层对话框显示透明遮罩层，全局通用，默认为true
        dialogDraggable : false,//设置弹出层对话框不可拖动，全局通用，默认为true
        dialogMaskOpacity : 0.4, //设置透明遮罩层的透明度，全局通用，默认值为0.1
        dialogMaskBgColor : "#000",//设置透明遮罩层的背景颜色，全局通用，默认为#fff

        codeFold: true,

        imageUpload : true,
        imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
        imageUploadURL : "/smart-api/upload/editormdPic/",

        /*上传图片成功后可以做一些自己的处理*/
        onload: function () {
            //console.log('onload', this);
            //this.fullscreen();
            //this.unwatch();
            //this.watch().fullscreen();
            //this.width("100%");
            //this.height(480);
            //this.resize("100%", 640);
        },
        /**设置主题颜色*/
        editorTheme: "pastel-on-dark",
        theme: "gray",
        previewTheme: "dark"

    });
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
    $("#post_submit_btn").on("click", function () {
        var rootData = {
            content: md_editor.getMarkdown()
        };
        ajaxOption(getAction().postSubmit,JSON.stringify(rootData),function (json) {
            if(json.success){
                window.location.href = getPage().test;
            }else{

            }
        })
    });




    function getAction() {
        return {
            adminSignIn: "/api/index/sign_in",
            postSubmit: "/api/index/post_submit"
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

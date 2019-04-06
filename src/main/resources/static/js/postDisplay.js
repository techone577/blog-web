$(function () {
    // $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['zh-CN']);

    function showBlog(data) {
        $("#blog_title").text(data.title);
        $("#blog_date").text(data.addTime);
        $("#blog_content").append(data.htmlContent);
        $('pre code').each(function(i, block) {
            hljs.highlightBlock(block);
        });
        var tagList = data.tagList;
        for (var i in tagList) {
            var tag = $("#blog_tag_template").clone();
            tag.text(tagList[i]);
            tag.attr("href", "www.baidu.com");
            tag.show();
            $("#blog_tags").append(tag);
        }
        $("#previous_blog_title").text(data.previousPost.title);
        $("#next_blog_title").text(data.nextPost.title);
    }


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

    var t = {
        postId: "PO23383038445276364819044"
    }
    //loadHomePage
    ajaxOption(getAction().queryBlog, JSON.stringify(t), function (json) {
        if (json.success) {
            showBlog(json.data);
        } else {
            console.log("load fail");
        }
    });
});



function getAction() {
    return {
        queryBlog: "/post/queryBlog"
    }
};

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

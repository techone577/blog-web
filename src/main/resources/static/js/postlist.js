$(function () {
    // $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['zh-CN']);



    function addPost(data) {
        for(var p in data) {
            var post = data[p];
            var t = $("#post_list_post_template").clone().attr("id",post.postId);
            t.find(".title").text(post.title);
            t.find(".date").text(post.updateTime);
            t.find(".summary").text(post.summary);

            var tagList = post.tagList;
            for (var i in tagList) {
                var tag = $("#post_list_tag_template").clone();
                tag.text(tagList[i]);
                tag.attr("href", "www.baidu.com");
                tag.show();
                t.find(".post_tags").append(tag);
            }
            t.show();
            $("#post_list_post_container").append(t);
            t.on("click", function () {
                window.location.href = getView().display + "?id=" + $(this).attr("id");
            });
        }
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

    //loadPostList
    ajaxOption(getAction().homePageListQuery, JSON.stringify(null), function (json) {
        if (json.success) {
            addPost(json.data);
        } else {
            console.log("load fail");
        }
    });
});



function getAction() {
    return {
        homePageListQuery: "/post/homePageQuery"
    }
};

function getView() {
    return {
        display: "display"
    }
}

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

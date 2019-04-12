$(function () {
    // $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['zh-CN']);

    function addTags(data) {
        for (var t in data) {
            var info = data[t].tagName + "(" + data[t].tagNum + ")";
            var li = buildTag(info);
            $("#tag_show_tag_infos").append(li);
        }
    }

    function addAllTags(data) {
        for (var t in data) {
            var info = data[t].tagName + "(" + data[t].tagNum + ")";
            var btn = buildTagBtn(info,data[t].tagNum);
            $("#tag_show_tag_container").append(btn);
        }
    }

    function buildTagBtn(text,num) {
        var btn = $("#tag_show_btn_template").clone().removeAttr("id");
        if(num>=0 && num<=2){
           btn.addClass("layui-btn-sm");
        }
        if(num>=3 && num<=6){
            btn.addClass("layui-btn-warm");
        }
        if(num>=7 && num<=10){
            btn.addClass("layui-btn-lg layui-btn-normal");
        }
        if(num > 10){
            btn.addClass("layui-btn-lg layui-btn-danger");
        }
        btn.text(text);
        btn.on("click",function () {
            var tagName = $(this).text().trim()
            if (tagName.indexOf("(") >= 0) {
                tagName = tagName.split("(")[0];
            }
            window.location.href = getView().postList + "?tag=" + tagName;
        })
        btn.show();
        return btn;
    }

    function buildTag(text) {
        var li = $("#tag_show_tag_template").clone().removeAttr("id");
        var tag = li.find(".home_tag");
        tag.text(text);
        tag.on("click", function (e) {

            var tagName = $(this).text().trim()
            if (tagName.indexOf("(") >= 0) {
                tagName = tagName.split("(")[0];
            }
            //阻止冒泡
            e.stopPropagation();
            window.location.href = getView().postList + "?tag=" + tagName;

        })
        tag.show();
        return li;
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

    ajaxOption(getAction().tagDisplay, JSON.stringify(null), function (json) {
        if (json.success) {
            addTags(json.data.hotTags);
            $("#tag_show_title").text("标签");
            $("#tag_show_amount").text("共有"+json.data.allTags.length+"个标签");
            addAllTags(json.data.allTags);
        } else {
            console.log("load fail");
        }
    });
});



function getAction() {
    return {
        tagDisplay: "/post/queryAllTags"
    }
};

function getView() {
    return {
        display : "display",
        postList : "postlist"
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

$(function () {
    // $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['zh-CN']);

    function addTags(data) {
        for (var t in data) {
            var info = data[t].tagName + "(" + data[t].tagNum + ")";
            var li = buildTag(info);
            $("#tag_show_tag_infos").append(li);
        }
    }

    function addAllCategories(data) {
        for (var t in data) {
            var card = buildCategoryCard(data[t]);
            $("#category_container").append(card);
        }
    }

    function buildCategoryCard(data) {
        console.log("data", data);
        var category_card = $("#category_show_card_template").clone().removeAttr("id");
        var href = getView().postList + "?category=" + data.name;
        category_card.find(".category_href").attr("href", href);
        category_card.find(".card-img-top").attr("src", data.url);
        var title = data.name + "(" + data.num + ")";
        category_card.find(".card-title strong").text(title);
        category_card.find(".card-text").text(data.summary);
        category_card.show();
        return category_card;
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

    ajaxOption(getAction().categoryDisplay, JSON.stringify(null), function (json) {
        if (json.success) {
            addTags(json.data.hotTags);
            $("#category_show_title").text("分类");
            $("#category_show_amount").text("共有" + json.data.total + "个分类");
            addAllCategories(json.data.categories);
        } else {
            console.log("load fail");
        }
    });
});


function getAction() {
    return {
        categoryDisplay: "/post/queryAllCategories"
    }
};

function getView() {
    return {
        display: "display",
        postList: "postlist"
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

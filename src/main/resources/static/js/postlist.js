$(function () {
    // $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['zh-CN']);


    function addPost(data) {
        for (var p in data) {
            var post = data[p];
            var t = $("#post_list_post_template").clone().attr("id", post.postId);
            t.find(".title").text(post.title);
            t.find(".date").text(post.updateTime);
            t.find(".summary").text(post.summary);
            t.find(".readtime").text(post.statisticInfo.readTime);

            var tagList = post.tagList;
            for (var i in tagList) {
                var li = buildTag(tagList[i])
                t.find(".post_tags").append(li);
            }
            t.find(".category span").text(post.category);
            t.find(".category").on('click', function (e) {
                e.stopPropagation();
                window.location.href = "?category=" + post.category;

            })
            t.show();
            $("#post_list_post_container").append(t);
            t.on("click", function () {
                window.location.href = getView().display + "?id=" + $(this).attr("id");
            });
        }
    }

    function removePost() {
        $("#post_list_post_container").find(".post-card").remove();
    }

    function addTags(data) {
        for (var t in data) {
            var info = data[t].tagName + "(" + data[t].tagNum + ")";
            var li = buildTag(info);
            $("#post_list_tag_infos").append(li);
        }
    }

    function addCategories(data) {
        for (var t in  data) {
            var card = buildCategoryCard(data[t]);
            $("#postList_category_container").append(card);
        }
    }

    function buildCategoryCard(data) {
        var category_card = $("#postList_category_card_template").clone().removeAttr("id");
        var href = "?category=" + data.name;
        category_card.find(".category_href").attr("href", href);
        category_card.find(".card-img-top").attr("src", data.url);
        var title = data.name + "(" + data.num + ")";
        category_card.find(".card-title strong").text(title);
        category_card.find(".card-text").text(data.summary);
        category_card.show();
        return category_card;
    }


    function addPaging(data) {
        layui.use('laypage', function () {
            var laypage = layui.laypage;
            //执行一个laypage实例
            laypage.render({
                elem: 'lay-page',
                count: data,
                limit: 5,
                groups: 2,
                jump: function (obj, first) {
                    //首次不执行
                    if (!first) {
                        param.pageNum = obj.curr;
                        param.pageSize = obj.limit;
                        ajaxOption(getAction().postListQuery, JSON.stringify(param), function (json) {
                            if (json.success) {
                                //最后加载post
                                removePost();
                                addPost(json.data.postList);
                            } else {
                                console.log("load fail");
                            }
                        });
                    }
                }
            });
        });
    }


    function buildTag(text) {
        var li = $("#post_list_tag_template").clone().removeAttr("id");
        var tag = li.find(".home_tag");
        tag.text(text);
        tag.on("click", function (e) {

            var tagName = $(this).text().trim()
            if (tagName.indexOf("(") >= 0) {
                tagName = tagName.split("(")[0];
            }
            //阻止冒泡
            e.stopPropagation();
            window.location.href = "?tag=" + tagName;

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

    var param = {
        pageNum: 1,
        pageSize: 5,
        type: "all"
    };
    var type = window.location.search.split("=")[0].replace("?", "");
    if (null != type && type == "tag") {
        param.type = "tag"
        param.typeValue = decodeURIComponent(window.location.search.split("=")[1]);
        $("#post_list_title").text(param.typeValue.toUpperCase());
        $("#post_list_head_title").text(param.typeValue.toUpperCase() + " | TECHONE")
    }

    if (null != type && type == "category") {
        param.type = "category"
        param.typeValue = decodeURIComponent(window.location.search.split("=")[1]);
        $("#post_list_title").text(param.typeValue.toUpperCase());
        $("#post_list_head_title").text(param.typeValue.toUpperCase() + " | TECHONE")
    }

    if (param.type == "all") {
        $("#post_list_title").text("所有文章");
        $("#post_list_head_title").text(param.type.toUpperCase() + " | TECHONE")
    }
    //loadPostList
    ajaxOption(getAction().postListQuery, JSON.stringify(param), function (json) {
        if (json.success) {
            //最后加载post
            addTags(json.data.tagInfoList);
            addCategories(json.data.categoryInfoList);
            addPaging(json.data.totalNum);
            addPost(json.data.postList);
            $("#post_list_amount").text(json.data.totalNum + " posts");
        } else {
            console.log("load fail");
            if(json.errorCode == 10006)
                window.location.href = "http://www.ixirong.com/404.html"
        }
    });
});


function getAction() {
    return {
        postListQuery: "/post/queryPostList"
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

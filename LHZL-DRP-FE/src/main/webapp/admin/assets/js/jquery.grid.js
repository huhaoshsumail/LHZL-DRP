/**
 * Created by chenhao on 2016/3/31.
 */
(function ($) {
    $.fn.extend({
        "grid": function (options) {
            var opts = $.extend({}, defaluts, options);
            var timestamp = new Date().getTime();
            opts.paginationId = "pagination" + timestamp;
            opts.paginationDesId = "paginationDesId" + timestamp;
            var $this = $(this);
            var html = "<table class='table'><thead><tr>";
            for (var i = 0; i < opts.columns.length; i++) {
                html += "<th>" + opts.columns[i]["display"] + "</th>";
            }
            html += "</tr></thead><tbody></tbody></table>";
            html += "<span id='" + opts.paginationDesId + "' style='float: right'>第 1 / 1 页</span><nav><ul class='pagination' id='" + opts.paginationId + "'>";
            html += "<li><a href='javascript:;' class='firstPage'>首页</a></li>";
            html += "<li><a href='javascript:;' class='prevPage'>向前</a></li>";
            html += "<li><a href='javascript:;' class='nextPage'>向后</a></li>";
            html += "<li><a href='javascript:;' class='lastPage'>末页</a></li>";
            html += "</ul></nav>";
            $this.html(html);
            $("#" + opts.paginationId).find(".firstPage").click(function () {
                if (opts.pagination.pageNo != 1) {
                    opts.pagination.pageNo = 1;
                    loadData($this, opts);
                }
            });
            $("#" + opts.paginationId).find(".prevPage").click(function () {
                if (opts.pagination.pageNo > 1) {
                    opts.pagination.pageNo--;
                    loadData($this, opts);
                }
            });
            $("#" + opts.paginationId).find(".nextPage").click(function () {
                if (opts.pagination.pageNo < Math.ceil(opts.pagination.count / opts.pagination.pageSize)) {
                    opts.pagination.pageNo++;
                    loadData($this, opts);
                }
            });
            $("#" + opts.paginationId).find(".lastPage").click(function () {
                if (opts.pagination.pageNo != Math.ceil(opts.pagination.count / opts.pagination.pageSize)) {
                    opts.pagination.pageNo = Math.ceil(opts.pagination.count / opts.pagination.pageSize);
                    loadData($this, opts);
                }
            });
            loadData($this, opts);
        }
    });
    var defaluts = {
        enableMultiSelect: false,
        ennableSelect: false,
        columns: [],
        data: [],
        pagination: {
            pageSizes: [5, 10, 30, 50, 100],
            pageSize: 5,
            pageNo: 1,
            count: 0
        }
    };

    function loadData(obj, opts) {
        opts.ajax.params.pageSize = opts.pagination.pageSize;
        opts.ajax.params.pageNo = opts.pagination.pageNo;
        $.ajax({
            url: opts.ajax.url,
            type: "post",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify(opts.ajax.params),
            success: function (result) {
                opts.pagination.count = result.count;
                var html = "";
                for (var i = 0; i < result.data.length && i < opts.pagination.pageSize; i++) {
                    html += "<tr>";
                    for (var j = 0; j < opts.columns.length; j++) {
                        if (opts.columns[j]["template"]) {
                            var temp = opts.columns[j]["template"];
                            while (temp.indexOf("value") > -1) {
                                temp = temp.replace("value", "'" + result.data[i][opts.columns[j]["name"]] + "'");
                            }
                            while (temp.indexOf("${") > -1) {
                                temp = temp.replace(temp.substring(temp.indexOf("${"), temp.indexOf("}") + 1), eval(temp.substring(temp.indexOf("${") + 2, temp.indexOf("}"))));
                            }
                            html += "<td>" + temp + "</td>";
                        } else {
                            html += "<td>" + result.data[i][opts.columns[j]["name"]] + "</td>";
                        }
                    }
                    html += "</tr>";
                }
                html += "</tbody></table>";
                obj.find("tbody").html(html);
                $("#" + opts.paginationDesId).html("第 " + opts.pagination.pageNo + " / " + Math.ceil(opts.pagination.count / opts.pagination.pageSize) + " 页")
            }
        });
    }
})(jQuery);
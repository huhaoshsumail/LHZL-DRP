/**
 * Created by chenhao on 2016/3/31.
 */
(function ($) {
    $.fn.extend({
        "grid": function (options) {
            var opts = $.extend({}, defaluts, options);
            var timestamp = new Date().getTime();
            opts.gridId = "gridId" + timestamp;
            opts.paginationId = "pagination" + timestamp;
            opts.paginationDesId = "paginationDesId" + timestamp;
            opts.selectAllId = "selectAllId" + timestamp;
            opts.selectName = "selectName" + timestamp;
            var $this = $(this);
            var html = "<table id='" + opts.gridId + "' class='table'><thead><tr>";
            if (opts.ennableSelect) {
                html += "<th width='50px'><input id='" + opts.selectAllId + "' type='checkbox'></th>";
            }
            for (var i = 0; i < opts.columns.length; i++) {
                if (opts.columns[i]["hidden"]) {
                    html += "<th style='display: none'>" + opts.columns[i]["display"] + "</th>";
                } else {
                    html += "<th>" + opts.columns[i]["display"] + "</th>";
                }
            }
            html += "</tr></thead><tbody></tbody></table>";
            html += "<span id='" + opts.paginationDesId + "' style='float: right'>第 1 / 1 页</span><nav><ul class='pagination' id='" + opts.paginationId + "'>";
            html += "<li><a href='javascript:;' class='firstPage'>首页</a></li>";
            html += "<li><a href='javascript:;' class='prevPage'>向前</a></li>";
            html += "<li><a href='javascript:;' class='nextPage'>向后</a></li>";
            html += "<li><a href='javascript:;' class='lastPage'>末页</a></li>";
            html += "</ul></nav>";
            $this.html(html);
            loadData($this, opts);
            return {
                getGridId: function () {
                    return opts.gridId;
                },
                getSelectedRows: function () {
                    var rows = [];
                    $("#" + opts.gridId + " input[name='" + opts.selectName + "']").each(function (index) {
                        if ($(this).is(':checked')) {
                            rows.push(opts.data[index]);
                        }
                    });
                    return rows;
                }
            };
        }
    });

    var defaluts = {
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

    function initTool(obj, opts) {

        $("#" + opts.selectAllId).removeAttr("checked");

        $("#" + opts.paginationDesId).html("第 " + opts.pagination.pageNo + " / " + Math.ceil(opts.pagination.count / opts.pagination.pageSize) + " 页")

        $("#" + opts.paginationId).find(".firstPage").parent().removeClass("disabled");
        $("#" + opts.paginationId).find(".prevPage").parent().removeClass("disabled");
        $("#" + opts.paginationId).find(".nextPage").parent().removeClass("disabled");
        $("#" + opts.paginationId).find(".lastPage").parent().removeClass("disabled");

        if (opts.pagination.pageNo == 1) {
            $("#" + opts.paginationId).find(".firstPage").parent().addClass("disabled");
            $("#" + opts.paginationId).find(".prevPage").parent().addClass("disabled");
        }

        if (opts.pagination.pageNo == Math.ceil(opts.pagination.count / opts.pagination.pageSize)) {
            $("#" + opts.paginationId).find(".nextPage").parent().addClass("disabled");
            $("#" + opts.paginationId).find(".lastPage").parent().addClass("disabled");
        }

        $("#" + opts.paginationId).find(".firstPage").unbind().click(function () {
            if (opts.pagination.pageNo != 1) {
                opts.pagination.pageNo = 1;
                loadData(obj, opts);
            }
        });
        $("#" + opts.paginationId).find(".prevPage").unbind().click(function () {
            if (opts.pagination.pageNo > 1) {
                opts.pagination.pageNo--;
                loadData(obj, opts);
            }
        });
        $("#" + opts.paginationId).find(".nextPage").unbind().click(function () {
            if (opts.pagination.pageNo < Math.ceil(opts.pagination.count / opts.pagination.pageSize)) {
                opts.pagination.pageNo++;
                loadData(obj, opts);
            }
        });
        $("#" + opts.paginationId).find(".lastPage").unbind().click(function () {
            if (opts.pagination.pageNo != Math.ceil(opts.pagination.count / opts.pagination.pageSize)) {
                opts.pagination.pageNo = Math.ceil(opts.pagination.count / opts.pagination.pageSize);
                loadData(obj, opts);
            }
        });
        $("#" + opts.selectAllId).unbind().click(function () {
            if ($(this).is(':checked')) {
                $("input[name='" + opts.selectName + "']").prop("checked", "checked");
            } else {
                $("input[name='" + opts.selectName + "']").removeAttr("checked");
            }
        });
        $("input[name='" + opts.selectName + "']").unbind().click(function () {
            var allSelected = true;
            $("input[name='" + opts.selectName + "']").each(function () {
                if (!$(this).is(':checked')) {
                    allSelected = false;
                }
            });
            if (allSelected) {
                $("#" + opts.selectAllId).prop("checked", "checked");
            } else {
                $("#" + opts.selectAllId).removeAttr("checked");
            }
        });
    }

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
                opts.data = result.data;
                var html = "";
                for (var i = 0; i < result.data.length && i < opts.pagination.pageSize; i++) {
                    html += "<tr>";
                    if (opts.ennableSelect) {
                        html += "<th><input name='" + opts.selectName + "' type='checkbox'></th>";
                    }
                    for (var j = 0; j < opts.columns.length; j++) {
                        if (opts.columns[j]["hidden"]) {
                            html += "<td style='display: none'>";
                        } else {
                            html += "<td>";
                        }
                        if (opts.columns[j]["template"]) {
                            var temp = opts.columns[j]["template"];
                            while (temp.indexOf("value") > -1) {
                                temp = temp.replace("value", "'" + result.data[i][opts.columns[j]["name"]] + "'");
                            }
                            while (temp.indexOf("${") > -1) {
                                temp = temp.replace(temp.substring(temp.indexOf("${"), temp.indexOf("}") + 1), eval(temp.substring(temp.indexOf("${") + 2, temp.indexOf("}"))));
                            }
                            html += temp;
                        } else {
                            html += result.data[i][opts.columns[j]["name"]];
                        }
                        html += "</td>";
                    }
                    html += "</tr>";
                }
                html += "</tbody></table>";
                obj.find("tbody").html(html);
                initTool(obj, opts);
            }
        });
    }

})(jQuery);
/**
 * Created by chenhao on 2016/3/31.
 */
(function ($) {
    $.fn.extend({
        "grid": function (options) {
            var opts = $.extend({}, defaluts, options);
            var $this = $(this);
            var html = "<table class='table'><thead><tr>";
            for (var i = 0; i < opts.columns.length; i++) {
                html += "<th>" + opts.columns[i]["display"] + "</th>";
            }
            html += "</tr></thead>";
            html += "<tbody>";
            for (var i = 0; i < opts.data.length; i++) {
                html += "<tr>";
                for (var j = 0; j < opts.columns.length; j++) {
                    if (opts.columns[j]["template"]) {
                        html += "<td>" + opts.columns[j]["template"].replace("value", opts.data[i][opts.columns[j]["name"]]) + "</td>";
                    } else {
                        html += "<td>" + opts.data[i][opts.columns[j]["name"]] + "</td>";
                    }
                }
                html += "</tr>";
            }
            html += "</tbody></table>";
            $this.html(html);
        }
    });
    var defaluts = {
        enableMultiSelect: false,
        ennableSelect: false,
        columns: [],
        data: [],
        pagination: {
            pageSize: [10, 20, 30, 50, 100]
        }
    };
})(jQuery);
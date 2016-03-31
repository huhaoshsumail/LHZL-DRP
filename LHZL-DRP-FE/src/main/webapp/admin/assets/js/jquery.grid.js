/**
 * Created by chenhao on 2016/3/31.
 */
(function ($) {
    $.fn.extend({
        "grid": function (options) {
            var opts = $.extend({}, defaluts, options);
            var $this = $(this);
            var html = "<thead><tr>";
            for (var i = 0; i < opts.columns.length; i++) {
                html += "<th>" + opts.columns[i]["display"] + "</th>";
            }
            html += "</tr></thead>";
            html += "<tbody><tr>";
            for (var i = 0; i < opts.columns.length; i++) {
                html += "<td></td>";
            }
            html += "</tr></tbody>";
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
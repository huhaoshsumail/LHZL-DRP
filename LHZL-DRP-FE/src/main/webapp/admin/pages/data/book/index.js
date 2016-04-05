/**
 * Created by chenhao on 2016/3/30.
 */
var initDataBook = function () {
    var gridApi = $("#codeTable").grid({
        ennableSelect: true,
        columns: [
            {name: "codeid", display: "codeid", hidden: true},
            {name: "code", "display": "代码"},
            {name: "description", "display": "描述"},
        ],
        ajax: {
            url: window.serviceUrl + "bookCodeController/queryBookCode?token=" + (localStorage.getItem("token") || ""),
            params: {}
        }
    });

    // 获取选中行
    // gridApi.getSelectedRows();
}
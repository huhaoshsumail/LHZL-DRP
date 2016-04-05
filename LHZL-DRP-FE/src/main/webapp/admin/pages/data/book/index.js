/**
 * Created by chenhao on 2016/3/30.
 */
var initDataBook = function () {
    //初始化grid
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

    //关闭code
    $("#codeModal").on("hidden.bs.modal", function () {
        $(this).find("input,textarea,select").val('').end();
    });

    //保存code
    $("#saveCode").click(function () {
        var data = $("#codeModal form").serializeObject();
        $.ajax({
            url: window.serviceUrl + "bookCodeController/insertBookCode?token=" + localStorage.getItem("token"),
            type: "post",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify(data),
            success: function (result) { //登录成功后返回的数据
                gridApi.reload();
                $('#codeModal').modal('hide');
            }
        })
    });

    // 获取选中行
    // gridApi.getSelectedRows();
}
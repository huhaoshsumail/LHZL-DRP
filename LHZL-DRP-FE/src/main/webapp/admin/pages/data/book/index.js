/**
 * Created by chenhao on 2016/3/30.
 */
var initDataBook = function () {
    //初始化codeGrid
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

    //关闭codeModal
    $("#codeModal").on("hidden.bs.modal", function () {
        $(this).find("input,textarea,select").val('').end();
    });

    //新增codeModal
    $("#insertCode").click(function () {
        $("#codeModal").modal('show');
        //保存codeModal
        $("#saveCode").unbind().click(function () {
            $.ajax({
                url: window.serviceUrl + "bookCodeController/insertBookCode?token=" + localStorage.getItem("token"),
                type: "post",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify($("#codeModal form").form2object()),
                success: function (result) {
                    gridApi.reload();
                    $('#codeModal').modal('hide');
                }
            })
        });
    });

    //修改codeModal
    $("#updateCode").click(function () {
        if (gridApi.getSelectedRows().length != 1) {
            alert("请选择一条数据");
            return false;
        }
        //打开codeModal
        $("#codeModal").modal('show');
        //加载数据
        var data = gridApi.getSelectedRows()[0];
        $("#codeModal form").object2form(data);
        //保存codeModal
        $("#saveCode").unbind().click(function () {
            $.ajax({
                url: window.serviceUrl + "bookCodeController/updateBookCode?token=" + localStorage.getItem("token"),
                type: "post",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify($("#codeModal form").form2object()),
                success: function (result) {
                    gridApi.reload();
                    $('#codeModal').modal('hide');
                }
            })
        });
    });

    //删除code
    $("#deleteCode").click(function () {
        if (gridApi.getSelectedRows().length == 0) {
            alert("请选择至少一条数据");
            return false;
        }
        var ids = [];
        for (var i = 0; i < gridApi.getSelectedRows().length; i++) {
            ids.push(gridApi.getSelectedRows()[i]["codeid"]);
        }
        $.ajax({
            url: window.serviceUrl + "bookCodeController/deleteBookCode?token=" + localStorage.getItem("token"),
            type: "post",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify(ids),
            success: function (result) {
                gridApi.reload();
                $('#codeModal').modal('hide');
            }
        })
    });

}
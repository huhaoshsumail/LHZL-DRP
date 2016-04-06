/**
 * Created by chenhao on 2016/3/30.
 */
var initDataBook = function () {

    //初始化codeGrid
    var codeGridApi = $("#codeTable").grid({
        ennableSelect: true,
        columns: [
            {name: "codeid", display: "codeid", hidden: true},
            {name: "code", "display": "代码"},
            {name: "description", "display": "描述"},
            {
                name: "codeid",
                display: "操作",
                template: "<button class='btn btn-primary' onclick='initDataBookValue(\"${value}\")'>查看值</button>"
            }
        ],
        ajax: {
            url: window.serviceUrl + "bookCodeController/queryBookCode?token=" + (localStorage.getItem("token") || ""),
            params: {}
        }
    });


    //查询code
    $("#queryCode").click(function () {
        codeGridApi.reload($("#codeForm").form2object());
    });


    //新增code
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
                    codeGridApi.reload();
                    $('#codeModal').modal('hide');
                }
            })
        });
    });

    //修改code
    $("#updateCode").click(function () {
        if (codeGridApi.getSelectedRows().length != 1) {
            alert("请选择一条数据");
            return false;
        }
        //打开codeModal
        $("#codeModal").modal('show');
        //加载数据
        var data = codeGridApi.getSelectedRows()[0];
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
                    codeGridApi.reload();
                    $('#codeModal').modal('hide');
                }
            })
        });
    });

    //删除code
    $("#deleteCode").click(function () {
        if (codeGridApi.getSelectedRows().length == 0) {
            alert("请选择至少一条数据");
            return false;
        }
        var ids = [];
        for (var i = 0; i < codeGridApi.getSelectedRows().length; i++) {
            ids.push(codeGridApi.getSelectedRows()[i]["codeid"]);
        }
        $.ajax({
            url: window.serviceUrl + "bookCodeController/deleteBookCode?token=" + localStorage.getItem("token"),
            type: "post",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify(ids),
            success: function (result) {
                codeGridApi.reload();
                $('#codeModal').modal('hide');
            }
        })
    });

    //关闭codeModal
    $("#codeModal").on("hidden.bs.modal", function () {
        $(this).find("input,textarea,select").val('').end();
    });

}

//查询代码对于的值
function initDataBookValue(codeid) {
    var valueGridApi = $("#valueTable").grid({
        ennableSelect: true,
        columns: [
            {name: "valueid", display: "valueid", hidden: true},
            {name: "value", display: "值"},
            {name: "description", display: "描述"},
        ],
        ajax: {
            url: window.serviceUrl + "bookCodeController/queryBookValueByCodeid?token=" + (localStorage.getItem("token") || ""),
            params: {codeid: codeid}
        }
    });
}
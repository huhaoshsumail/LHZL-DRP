///**
// * Created by huhaosumail on 16/4/2.
// */
//var initDataDepAndDes = function () {
//
//    //初始化codeGrid
//    var codeGridApi = $("#codeTable").grid({
//        ennableSelect: true,
//        columns: [
//            {name: "id", display: "id", hidden: true},
//            {name: "stationpid", display: "stationpid", hidden: true},
//            {name: "stationname", "display": "站点名称"},
//            {name: "stationpname", "display": "父站点名称"},
//            {name: "status", "display": "是否启用"},
//        ],
//        ajax: {
//            url: window.serviceUrl + "stationInfoController/queryStationInfo?token=" + (localStorage.getItem("token") || ""),
//            params: {}
//        },
//        callback: function () {
//            $("#valueTable").html("");
//            $("#insertValue").unbind();
//            $("#updateValue").unbind();
//            $("#deleteValue").unbind();
//        }
//    });
//
//
//    //查询code
//    $("#queryCode").click(function () {
//        codeGridApi.reload($("#codeForm").form2object());
//    });
//
//
//    //新增code
//    $("#insertCode").click(function () {
//        $("#codeModal").modal('show');
//        //保存codeModal
//        $("#saveShuttlerule").unbind().click(function () {
//            var formData=$("#codeModal form").form2object();
//            formData.triptype=$("#triptype").val();
//            formData.status=$("#status").val();
//            $.ajax({
//                url: window.serviceUrl + "shuttleruleController/insertShuttlerule?token=" + localStorage.getItem("token"),
//                type: "post",
//                dataType: "json",
//                contentType: "application/json",
//                data: JSON.stringify(formData),
//                success: function (result) {
//                    codeGridApi.reload();
//                    $('#codeModal').modal('hide');
//                }
//            })
//        });
//    });
//
//    //修改code
//    $("#updateCode").unbind().click(function () {
//        if (codeGridApi.getSelectedRows().length != 1) {
//            alert("请选择一条数据");
//            return false;
//        }
//        //打开codeModal
//        $("#codeModal").modal('show');
//        //加载数据
//        var data = codeGridApi.getSelectedRows()[0];
//        $("#codeModal form").object2form(data);
//        $("#triptype").val(data.triptype);
//        $("#status").val(data.status);
//        //保存codeModal
//        $("#saveShuttlerule").unbind().click(function () {
//            var formData=$("#codeModal form").form2object();
//            formData.triptype=$("#triptype").val();
//            formData.status=$("#status").val();
//            $.ajax({
//                url: window.serviceUrl + "shuttleruleController/updateShuttlerule?token=" + localStorage.getItem("token"),
//                type: "post",
//                dataType: "json",
//                contentType: "application/json",
//                data: JSON.stringify(formData),
//                success: function (result) {
//                    codeGridApi.reload();
//                    $('#codeModal').modal('hide');
//                }
//            })
//        });
//    });
//
//    //删除code
//    $("#deleteCode").click(function () {
//        if (codeGridApi.getSelectedRows().length == 0) {
//            alert("请选择至少一条数据");
//            return false;
//        }
//        var ids = [];
//        for (var i = 0; i < codeGridApi.getSelectedRows().length; i++) {
//            ids.push(codeGridApi.getSelectedRows()[i]["tripid"]);
//        }
//        $.ajax({
//            url: window.serviceUrl + "shuttleruleController/deleteShuttlerule?token=" + localStorage.getItem("token"),
//            type: "post",
//            dataType: "json",
//            contentType: "application/json",
//            data: JSON.stringify(ids),
//            success: function (result) {
//                codeGridApi.reload();
//                $('#codeModal').modal('hide');
//            }
//        })
//    });
//
//    //关闭codeModal
//    $("#codeModal").on("hidden.bs.modal", function () {
//        $(this).find("input,textarea,select").val('').end();
//    });
//
//}
//
/**
 * Created by chenhao on 2016/3/30.
 */
var initDataDepAndDes = function () {

    //初始化codeGrid
    var codeGridApi = $("#codeTable").grid({
        ennableSelect: true,
        columns: [
            {name: "id", display: "id", hidden: true},
            {name: "stationname", "display": "站点名称"},
            {name: "status", "display": "是否启用"},
            {
                name: "id",
                display: "操作",
                template: "<button class='btn btn-primary' onclick='initDataDepAndDesSon(\"${value}\")'><span class='btn-span'>查看子站点</span></button>"
            }
        ],
        ajax: {
            url: window.serviceUrl + "stationInfoController/queryStationInfo?token=" + (localStorage.getItem("token") || ""),
            params: {}
        },
        callback: function () {
            $("#valueTable").html("");
            $("#insertValue").unbind();
            $("#updateValue").unbind();
            $("#deleteValue").unbind();
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
            var formData=$("#codeModal form").form2object();
            formData.status=$("#status").val();
            $.ajax({
                url: window.serviceUrl + "stationInfoController/insertStationInfo?token=" + localStorage.getItem("token"),
                type: "post",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify(formData),
                success: function (result) {
                    codeGridApi.reload();
                    $('#codeModal').modal('hide');
                }
            })
        });
    });

    //修改code
    $("#updateCode").unbind().click(function () {
        if (codeGridApi.getSelectedRows().length != 1) {
            alert("请选择一条数据");
            return false;
        }
        //打开codeModal
        $("#codeModal").modal('show');
        //加载数据
        var data = codeGridApi.getSelectedRows()[0];
        $("#codeModal form").object2form(data);
        $("#status").val(data.status);
        //保存codeModal
        $("#saveCode").unbind().click(function () {
            var formData=$("#codeModal form").form2object();
            formData.status=$("#status").val();
            $.ajax({
                url: window.serviceUrl + "stationInfoController/updateStationInfo?token=" + localStorage.getItem("token"),
                type: "post",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify(formData),
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
            ids.push(codeGridApi.getSelectedRows()[i]["id"]);
        }
        $.ajax({
            url: window.serviceUrl + "stationInfoController/deleteStationInfo?token=" + localStorage.getItem("token"),
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

function initDataDepAndDesSon(id) {
    var valueGridApi = $("#valueTable").grid({
        ennableSelect: true,
        columns: [
            {name: "id", display: "id", hidden: true},
            {name: "stationname", "display": "站点名称"},
            {name: "status", "display": "是否启用"},
        ],
        ajax: {
            url: window.serviceUrl + "stationInfoController/querySonStationInfo?token=" + (localStorage.getItem("token") || ""),
            params: {id: id}
        }
    });


    //新增value
    $("#insertValue").unbind().click(function () {
        $("#valueModal").modal('show');
        $("#valueModal form input[name='stationpid']").val(id);

        //保存ValueModal
        $("#saveValue").unbind().click(function () {
            var formData=$("#valueModal form").form2object();
            formData.status=$("#sonstatus").val();
            $.ajax({
                url: window.serviceUrl + "stationInfoController/insertSonStationInfo?token=" + localStorage.getItem("token"),
                type: "post",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify(formData),
                success: function (result) {
                    valueGridApi.reload();
                    $('#valueModal').modal('hide');
                }
            })
        });
    });

    //修改value
    $("#updateValue").unbind().click(function () {
        if (valueGridApi.getSelectedRows().length != 1) {
            alert("请选择一条数据");
            return false;
        }
        //打开codeModal
        $("#valueModal").modal('show');
        //加载数据
        var data = valueGridApi.getSelectedRows()[0];
        $("#valueModal form").object2form(data);
        $("#sonstatus").val(data.status);
        //保存valueModal
        $("#saveValue").unbind().click(function () {
            var formData=$("#valueModal form").form2object();
            formData.status=$("#sonstatus").val();
            $.ajax({
                url: window.serviceUrl + "stationInfoController/updateSonStationInfo?token=" + localStorage.getItem("token"),
                type: "post",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify(formData),
                success: function (result) {
                    valueGridApi.reload();
                    $('#valueModal').modal('hide');
                }
            })
        });
    });

    //删除value
    $("#deleteValue").unbind().click(function () {
        if (valueGridApi.getSelectedRows().length == 0) {
            alert("请选择至少一条数据");
            return false;
        }
        var ids = [];
        for (var i = 0; i < valueGridApi.getSelectedRows().length; i++) {
            ids.push(valueGridApi.getSelectedRows()[i]["id"]);
        }
        $.ajax({
            url: window.serviceUrl + "stationInfoController/deleteStationInfo?token=" + localStorage.getItem("token"),
            type: "post",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify(ids),
            success: function (result) {
                valueGridApi.reload();
                $('#valueModal').modal('hide');
            }
        })
    });

    //关闭codeModal
    $("#valueModal").unbind().on("hidden.bs.modal", function () {
        $(this).find("input,textarea,select").val('').end();
    });

}
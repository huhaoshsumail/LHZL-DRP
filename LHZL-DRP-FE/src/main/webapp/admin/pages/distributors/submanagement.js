/**
 * Created by huhaosumail on 16/4/2.
 */
var initDataSubDistributors = function () {

    //初始化codeGrid
    var codeGridApi = $("#codeTable").grid({
        ennableSelect: true,
        columns: [
            {name: "id", display: "id", hidden: true},
            {name: "userPid", display: "userPid", hidden: true},
            {name: "puserName", "display": "所属分销商"},
            {name: "username", "display": "会员姓名"},
            {name: "mobile", "display": "电话"},
            {name: "idcard", "display": "会员证件"},
        ],
        ajax: {
            url: window.serviceUrl + "supplierController/querySubmanageUser?token=" + (localStorage.getItem("token") || ""),
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
        $.ajax({
            url: window.serviceUrl + "supplierController/queryManagementUser?token=" + localStorage.getItem("token"),
            type: "post",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify($("#codeModal form").form2object()),
            success: function (result) {
               //回显到分销商下拉框
                var innerHTML = "<option value=''>-- 请选择 --</option>";
                for(var i = 0; i < result.data.length; i++){
                    innerHTML += "<option  value="+result.data[i]['id'] +">" +result.data[i]['username'] + "</option>";
                }
                document.getElementById("manage").innerHTML = innerHTML;
            }
        })
        //保存codeModal
        $("#saveSupplier").unbind().click(function () {
            var formData=$("#codeModal form").form2object();
            formData.userpid=$("#manage").val();
            $.ajax({
                url: window.serviceUrl + "supplierController/insertSubmanage?token=" + localStorage.getItem("token"),
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
        $.ajax({
            url: window.serviceUrl + "supplierController/queryManagementUser?token=" + localStorage.getItem("token"),
            type: "post",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify($("#codeModal form").form2object()),
            success: function (result) {
                //回显到分销商下拉框
                var innerHTML = "<option value=''>-- 请选择 --</option>";
                for(var i = 0; i < result.data.length; i++){
                    innerHTML += "<option  value="+result.data[i]['id'] +">" +result.data[i]['username'] + "</option>";
                }
                document.getElementById("manage").innerHTML = innerHTML;
                $("#manage").val(data.userpid);
            }
        })

        //保存codeModal
        $("#saveSupplier").unbind().click(function () {
            var formData=$("#codeModal form").form2object();
            formData.userpid=$("#manage").val();
            $.ajax({
                url: window.serviceUrl + "supplierController/updateSubmanage?token=" + localStorage.getItem("token"),
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
            url: window.serviceUrl + "supplierController/deleteSupplier?token=" + localStorage.getItem("token"),
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


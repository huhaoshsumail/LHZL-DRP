/**
 * Created by chenjinyi on 2016年4月2日15:34:03
 */
var initLineData = function () {
    var gridApi = $("#lineTable").grid({
        ennableSelect: true,
        buttons: [
            {
                type: 'customBtn',
                content: '<input id="addLine" type="button" class="btn btn-default" value="新增" data-toggle="modal" data-target="#addLineDiv"  href="admin/pages/line/lineMant.jsp"/>'
            },
            {id: "updLine", text: '修改', action: function(){
                var selected = gridApi.getSelectedRows()[0];
                if (selected != null) {

                } else {
                    layer.alert(
                        "请先选择一条记录",
                        {
                            title : '提示',
                            icon : 3
                        }
                    )
                }
            }},
            {id: "delLine", text: '删除', action: function(){
                layer.confirm('确定要删除该线路吗？', {
                    btn: ['确定','取消'] //按钮
                }, function(){

                }, function () {
                    layer.close();
                });
            }},
            {id: "onLine", text: '上架', action: function(){
                layer.confirm('确定要上架该线路吗？', {
                    btn: ['确定','取消'] //按钮
                }, function(){

                }, function () {
                    layer.close();
                });
            }},
            {id: "offLine", text: '下架', action: function(){
                layer.confirm('确定要下架该线路吗？', {
                    btn: ['确定','取消'] //按钮
                }, function(){

                }, function () {
                    layer.close();
                });
            }}
        ],
        columns: [
            {name: "id", display: "id", hidden: true},
            {name: "lineNo", "display": "线路编号"},
            {name: "title", "display": "线路名称"},
            {name: "days", "display": "天数"},
            {name: "lineType", "display": "线路类型"},
            {name: "status", "display": "状态"},
            {name: "create", "display": "创建人/时间"},
            {name: "update", "display": "最后编辑/时间"}
        ],
        ajax: {
            url: window.serviceUrl + "lineController/lineList?token=" + (localStorage.getItem("token")||""),
            params: {}
        }
    });

    /**
     * postAjax
     * @param method {POST|GET}
     * @param url url
     * @param data data
     */
    function postAjax(method, url, data) {
        if(method == '') method = 'POST';

        $.ajax({
            type: method,
            url: url,
            data: data,
            dataType: 'json',
            contentType: 'application/json',
            success:function(data) {
                layer.alert(
                    data.meta.message,
                    {
                        title : '提示',
                        icon : 1
                    },
                    function(index) {
                        layer.close(index);
                        gridApi.reload();
                    }
                );
            },
            error : function(data) {
                alert(data.meta.message);
            }
        });
    }
}

$(function () {
    
    // 加载数据
    loadData();

    //保存Line
    $("#saveLineBtn").unbind().click(function () {
        // var validate = $("#myform").validate({
        //     debug: true, //调试模式取消submit的默认提交功能
        //     //errorClass: "label.error", //默认为错误的样式类为：error
        //     focusInvalid: false, //当为false时，验证无效时，没有焦点响应
        //     onkeyup: false,
        //     rules:{
        //         title:{
        //             required:true
        //         },
        //         days:{
        //             required:true,
        //             number:true
        //         },
        //         hotelDays:{
        //             required:true,
        //             number:true
        //         },
        //         min:{
        //             required:true,
        //             number:true
        //         }
        //     },
        //     messages:{
        //         title:{
        //             required:"主标题为必填项."
        //         },
        //         days:{
        //             required:"天数为必填项.",
        //             number:"天数只能为数字."
        //         },
        //         hotelDays:{
        //             required:"住宿天数为必填项.",
        //             number:"住宿天数只能为数字."
        //         },
        //         min:{
        //             required:"最小成团人数为必填项.",
        //             number:"最小成团人数只能为数字."
        //         }
        //     }
        // });
        var result = new Array();
        $("[name = theme]:checkbox").each(function () {
            if ($(this).is(":checked")) {
                result.push($(this).attr("value"));
            }
        });
        $("#linesid").val(result.join(","));

        var formData=$("#lineForm").form2object();
        $.ajax({
            url: window.serviceUrl + "lineController/saveLine?token=" + localStorage.getItem("token"),
            type: "post",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify(formData),
            success: function (result) {
                gridApi.reload();
                //$('#codeModal').modal('hide');
            }
        })
    });

    function loadData() {
        var json = [{"id": 1, "stationPid": 0, "stationName": "上海"}];
        var options = $("#lineend").html();
        if (json == "") {
            options = "<option>--请选择--</option>";
        } else {
            $.each(json, function (n, value) {
                options += "<option value='" + value.id + "'>" + value.stationName + "</option>";
            })
        }
        $("#lineend").html(options);

        json = [{"valueId": 1, "codeId": 1, "value": "纯玩"}, {"valueId": 2, "codeId": 1, "value": "买一送一"}];
        options = $("#keyword").html();
        if (json == "") {
            options = "<option>--请选择--</option>";
        } else {
            $.each(json, function (n, value) {
                options += "<option value='" + value.valueId + "'>" + value.value + "</option>";
            })
        }
        $("#keyword").html(options);
    }
})
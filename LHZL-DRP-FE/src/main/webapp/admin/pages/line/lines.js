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
    


})
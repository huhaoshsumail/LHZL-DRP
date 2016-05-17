/**
 * Created by chenjinyi on 2016年4月2日15:34:03
 */
var initPmsnData = function () {
    var gridApi = $("#pmsnsTable").grid({
        ennableSelect: true,
        buttons: [
            {id: "addRoles", text: "添加", action: function(){
                $('.pmsnForm').show();
                $("#pmsnForm input[name='roleid']").val(0);
                $("#pmsnForm input[name='rolename']").val('');
                $("#pmsnForm input[name='remark']").val('');
            }},
            {id: "updRoles", text: '修改', action: function(){
                var selected = gridApi.getSelectedRows()[0];
                if (selected != null) {
                    $('.pmsnForm').show();
                    //加载数据
                    $("#pmsnForm").object2form(selected);
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
            {id: "delRoles", text: '删除', action: function(){
                layer.confirm('确定要删除该角色吗？', {
                    btn: ['确定','取消'] //按钮
                }, function(){
                    var selected = gridApi.getSelectedRows()[0];
                    if (selected != null) {
                        var data = {id: selected.id};
                        var url = "http://127.0.0.1:8080/LHZL-DRP-BE/rest/securityController/delRole";
                        postAjax('POST', url, JSON.stringify( data ))
                    }
                }, function () {
                    layer.close();
                });
            }}
        ],
        columns: [
            {name: "id", display: "id", hidden: true},
            {name: "pmsnname", "display": "权限名称"},
            {name: "actionname", "display": "操作"},
            {name: "remark", "display": "备注"}
        ],
        ajax: {
            url: "http://127.0.0.1:8080/LHZL-DRP-BE/rest/securityController/pmsnList",
            params: {}
        }
    });

    $("#saveRoleBtn").click(function(){
        var url = "http://127.0.0.1:8080/LHZL-DRP-BE/rest/securityController/saveRole";
        var roleinfo = Roleinfo.getValueText();
        postAjax('POST', url, JSON.stringify( roleinfo ));
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

    var Roleinfo = function() {

        var config = {
            roleIdSelector: '#roleid',
            roleNameSelector: '#rolename',
            remarkSelector: '#remark'
        }

        function getValueText() {
            return {
                id: $( config.roleIdSelector ).val(),
                rolename: $( config.roleNameSelector ).val(),
                remark: $( config.remarkSelector ).val()
            }
        }

        return {
            getValueText: getValueText
        }
    }()
}
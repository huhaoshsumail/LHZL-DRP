/**
 * Created by chenjinyi on 2016年4月2日15:34:03
 */
var initRoleData = function () {
    var gridApi = $("#rolesTable").grid({
        ennableSelect: true,
        buttons: [
            {id: "addRoles", text: "添加", action: function(){
                $('.roleForm').show();
                $("#roleForm input[name='roleid']").val(0);
                $("#roleForm input[name='rolename']").val('');
                $("#roleForm input[name='remark']").val('');
            }},
            {id: "updRoles", text: '修改', action: function(){
                var selected = gridApi.getSelectedRows()[0];
                if (selected != null) {
                    $('.roleForm').show();
                    $("#roleForm input[name='roleid']").val(selected.id);
                    $("#roleForm input[name='rolename']").val(selected.rolename);
                    $("#roleForm input[name='remark']").val(selected.remark);
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
                        postAjax('POST', url, JSON.stringify( data ));
                    }
                }, function(){
                    layer.close();
                });
            }}
        ],
        columns: [
            {name: "roleid", display: "id", hidden: true},
            {name: "rolename", "display": "角色姓名"},
            {name: "remark", "display": "备注"}
        ],
        ajax: {
            url: "http://127.0.0.1:8080/LHZL-DRP-BE/rest/securityController/roleList",
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
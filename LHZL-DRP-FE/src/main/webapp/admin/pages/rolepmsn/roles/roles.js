/**
 * Created by chenjinyi on 2016年4月2日15:34:03
 */
var initRoleData = function () {
    var gridApi = $("#rolesTable").grid({
        ennableSelect: true,
        columns: [
            {name: "roleid", display: "id", hidden: true},
            {name: "rolename", "display": "角色姓名"},
            {name: "remark", "display": "备注"},
        ],
        ajax: {
            url: "http://127.0.0.1:8080/LHZL-DRP-BE/rest/securityController/roleList",
            params: {}
        }
    });

    // 获取选中行
    // gridApi.getSelectedRows();
}
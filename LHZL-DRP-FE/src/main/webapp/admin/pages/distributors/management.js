/**
 * Created by huhaosumail on 16/4/2.
 */
var initDataOperAndUser = function () {
    var gridApi = $("#codeTable").grid({
        ennableSelect: true,
        columns: [
            {name: "id", display: "id", hidden: true},
            {name: "username", "display": "会员姓名"},
            {name: "mobile", "display": "会员电话", template: "<span style='color: red'>${parseInt(value)+1}</span>"},
        ],
        ajax: {
            url: "http://localhost:8080/LHZL-DRP-BE/rest/userController/queryUser",
            params: {}
        }
    });
}

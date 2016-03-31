/**
 * Created by chenhao on 2016/3/30.
 */
var initDataBook = function () {
    $("#codeTable").grid({
        columns: [
            {name: "userid", display: "id", hidden: true},
            {name: "username", "display": "会员姓名"},
            {name: "mobile", "display": "会员电话", template: "<span style='color: red'>${parseInt(value)+1}</span>"},
        ],
        ajax: {
            url: "http://127.0.0.1:8080/LHZL-DRP-BE/rest/userController/queryUser",
            params: {}
        }
    });
}
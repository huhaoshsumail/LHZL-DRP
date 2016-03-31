/**
 * Created by chenhao on 2016/3/30.
 */
var initDataBook = function () {
    $("#codeTable").grid({
        columns: [
            {name: "username", "display": "会员姓名"},
            {name: "mobile", "display": "会员电话"},
        ],
        ajax: {
            url: "http://127.0.0.1:8080/LHZL-DRP-BE/rest/userController/queryUser",
            params: {}
        }
    });
}
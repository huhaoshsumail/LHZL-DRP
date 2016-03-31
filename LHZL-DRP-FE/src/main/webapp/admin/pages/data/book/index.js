/**
 * Created by chenhao on 2016/3/30.
 */
var initDataBook = function () {
    $("#codeTable").grid({
        columns: [
            {name: "code", "display": "代码"},
            {name: "discription", "display": "描述", template: "<span style='color: red'>value</span>"},
        ],
        data: [
            {code: "A", discription: "英文字母A"},
            {code: "B", discription: "英文字母B"}
        ]
    });
}
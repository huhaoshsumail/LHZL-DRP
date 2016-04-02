/**
 * Created by huhaosumail on 16/4/2.
 */
var initDataSubDistributors = function () {
    var gridApi = $("#codeTable").grid({
        ennableSelect: true,
        columns: [
            {name: "id", display: "id", hidden: true},
            {name: "userid", display: "userid", hidden: true},
            {name: "userid", "display": "所属供应商"},
            {name: "oppacct", "display": "操作员账户"},
            {name: "opername", "display": "操作员姓名"},
            {name: "gender", "display": "操作员性别"}
        ],
        ajax: {
            url: "http://localhost:8080/LHZL-DRP-BE/rest/supplierController/queryOper",
            params: {}
        }
    });
    

}

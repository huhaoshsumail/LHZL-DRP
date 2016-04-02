$(function () {
    $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%' // optional
    });
    $("#login").click(function () {
        //登录
        $.ajax
        ({
            url: "http://localhost:8080/LHZL-DRP-BE/rest/operatorInfoController/login",
            type: "post",
            //传送请求数据
            data: {},
            success: function (strValue) { //登录成功后返回的数据
                alert("胡浩长的帅");
            }
        })
    })
});
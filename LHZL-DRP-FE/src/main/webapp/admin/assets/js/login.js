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
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify({
                opername: $("#opername").val(),
                operpwd: $("#operpwd").val()
            }),
            success: function (result) { //登录成功后返回的数据
                if (result.meta.success) {
                    sessionStorage.setItem("token", result.data.token);
                    window.location.href = "index.jsp";
                }
            }
        })
    })
});
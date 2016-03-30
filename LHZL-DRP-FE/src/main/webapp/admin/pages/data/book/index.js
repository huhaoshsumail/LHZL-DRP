/**
 * Created by chenhao on 2016/3/30.
 */
var initDataBook = function () {
    $('#codeTbale').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": ""
    });
    $('#valueTbale').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": ""
    });
}
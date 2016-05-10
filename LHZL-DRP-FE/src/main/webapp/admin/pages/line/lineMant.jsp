<style>
    .form {
        width: 100%;
        clear: both;
        border: 1px solid #c9dae4;
    }
    .form tr th {
        color: #0d487b;
        line-height: 28px;
        border-bottom: 1px solid #9cb6cf;
        border-top: 1px solid #e9edf3;
        font-weight: normal;
        text-shadow: #e6ecf3 1px 1px 0px;
        padding-left: 5px;
        padding-right: 5px;
    }
    .form tr td {
        border-bottom: 1px solid #e9e9e9;
        padding-bottom: 5px;
        padding-top: 5px;
        color: #444;
        border-top: 1px solid #FFFFFF;
        padding-left: 15px;
        padding-right: 5px;
        word-break: break-all;
    }
    td input[type="text"] {
        width: 200px;
    }
    td textarea {
        margin: 0px;
        width: 600px;
        height: 90px;
    }
    .blank {
        margin-left: 20px;
    }
    .btns {
        padding: 15px;
        text-align: center;
    }
    .modal-body{
        padding-bottom: 75px !important;
    }
    .modal-footer{
        position: fixed;
        right: 0;
        bottom: 0;
        width: 800px;
        left: 0;
        background-color: #fff;
        border: 6px solid #424040;
        border-top: 0px;
    }
</style>
<script src="admin/pages/line/lines.js"></script>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
        &times;
    </button>
    <h4 class="modal-title" id="myModalLabel">新增线路</h4>
</div>
<div class="modal-body ">
    <ul id="myTab" class="nav nav-tabs">
        <li class="active">
            <a href="#base" data-toggle="tab">基本信息</a>
        </li>
        <li><a href="#shuttle" data-toggle="tab">接送信息</a></li>
        <li><a href="#extend" data-toggle="tab">扩展规则</a></li>
        <li><a href="#contact " data-toggle="tab">联系方式</a></li>
    </ul>
    <form id="lineForm">
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="base">
                <table class="form">
                    <tr>
                        <td>线路类型</td>
                        <td>短线</td>
                    </tr>
                    <tr>
                        <td>系统编号</td>
                        <td>自动生成</td>
                    </tr>
                    <tr>
                        <td>自定义编号</td>
                        <td><input type="text" id="sysNo" name="sysNo"></td>
                    </tr>
                    <tr>
                        <td>站点</td>
                        <td>
                            上海
                        </td>
                    </tr>
                    <tr>
                        <td>目的地</td>
                        <td>
                            <select id="end_station">
                                <option>--请选择--</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>主标题</td>
                        <td><input type="text" id="title" name="title"></td>
                    </tr>
                    <tr>
                        <td>副标题</td>
                        <td><input type="text" id="sub_title" name="sub_title"></td>
                    </tr>
                    <tr>
                        <td>描述</td>
                        <td><textarea id="desc" name="desc"></textarea></td>
                    </tr>
                    <tr>
                        <td>线路主题</td>
                        <td>
                            <input type="checkbox" name="theme">山水景观<span class="blank"></span>
                            <input type="checkbox" name="theme">田园度假<span class="blank"></span>
                            <input type="checkbox" name="theme">民俗文化<span class="blank"></span>
                            <input type="checkbox" name="theme">都市观光<span class="blank"></span>
                            <input type="checkbox" name="theme">夕阳红
                        </td>
                    </tr>
                    <tr>
                        <td>关键字</td>
                        <td>
                            <select id="keyword">
                                <option>--请选择--</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>天数</td>
                        <td><input type="text" id="days" name="days"></td>
                    </tr>
                    <tr>
                        <td>住宿天数</td>
                        <td><input type="text" id="hotel_days" name="hotelDays"></td>
                    </tr>
                    <tr>
                        <td>应急电话</td>
                        <td><input type="text" id="tel" name="tel"></td>
                    </tr>
                    <tr>
                        <td>最小成团人数</td>
                        <td><input type="text" id="min" name="min"></td>
                    </tr>
                    <tr>
                        <td>下单需确认</td>
                        <td>
                            <select>
                                <option>--请选择--</option>
                                <option>是</option>
                                <option>否</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tab-pane fade" id="shuttle">
                <table class="form">
                    <tr>
                        <td>接送规则</td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div class="tab-pane fade" id="extend">
                <table class="form">
                    <tr>
                        <td>特别提醒</td>
                        <td><textarea id="remind" name="remind"></textarea></td>
                    </tr>
                    <tr>
                        <td>线路特色</td>
                        <td><textarea id="lineFeature" name="lineFeature"></textarea></td>
                    </tr>
                    <tr>
                        <td>费用包含</td>
                        <td><textarea id="include" name="include"></textarea></td>
                    </tr>
                    <tr>
                        <td>费用不包含</td>
                        <td><textarea id="notInclude" name="notInclude"></textarea></td>
                    </tr>
                    <tr>
                        <td>补充说明</td>
                        <td><textarea id="remarks" name="remarks"></textarea></td>
                    </tr>
                    <tr>
                        <td>购物说明</td>
                        <td><textarea id="shopping" name="shopping"></textarea></td>
                    </tr>
                    <tr>
                        <td>注意事项</td>
                        <td><textarea id="note" name="note"></textarea></td>
                    </tr>
                </table>
            </div>
            <div class="tab-pane fade" id="contact">

            </div>
        </div>
    </form>
</div>
<div class="modal-footer btns">
    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
    <button type="button" class="btn btn-primary" id="saveLineBtn">提交更改</button>
</div>


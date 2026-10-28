$(function(){
//	_loadCss("./css/layer.css");
	init();
});
var cn = {
    "fail": "失败",
    "pass": "成功"
};

var en = {
    "fail": "Fail",
    "pass": "Success"
};

function get_lan_operation(m) {
    var lan = getCookie('language');
    var t;
    switch (lan) {
        case 'Chinese':
            t = cn[m];
            break;
        default:
            t = en[m];
    }
    if (t == undefined) t = cn[m];
    if (t == undefined) t = en[m];
    if (t == undefined) t = m;
    return t;
}

function init() {
    document.getElementById("content2").style.display = "none";
    $("#factory").remove();
}

$("#restart").bind('click', function(e) {
    document.getElementById("content2").style.display = "inline";
    var param = {funcNo:1013};
    request(param,function(data){
        var flag = data.flag;
        var error_info = data.error_info;
        if (flag == "1") {
            Alert(mifi_translate('pass'));
            return;
        } else {
            Alert(mifi_translate('fail'));
            Alert(mifi_translate(error_info));
        }
    });
    setTimeout(function() {
        location.reload(true);
    }, 80000);
});

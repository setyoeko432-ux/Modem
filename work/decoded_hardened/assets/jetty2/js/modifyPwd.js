$(function(){
//	_loadCss("./css/layer.css");
	init();
});
var cn = {
    "fail" : "失败",
    "pass" : "成功",
    "inputOldpin": "请输入旧密码!",
    "inputLegalpin": "请输入合法密码!",
    "inputnewpin": "请输入新密码!",
    "inputLenNewPin": "新密码必须为8-64个字符!",
    "cannotSame": "新密码不能与旧密码一样!",
    "modifyOk": "密码修改成功，请重新登录!",
    "INVALID_INPUT:newpwd": "新密码无效 (8-64个字符，不能与旧密码相同)!",
    "INVALID_INPUT:oldpwd": "旧密码错误!",
    "PASSWORD_CHANGE_REQUIRED": "请修改默认初始密码!"
};

var en = {
    "fail": "Fail",
    "pass": "Success",
    "inputOldpin": "Please input old password!",
    "inputLegalpin": "Please input legal password!",
    "inputnewpin": "Please input new password!",
    "inputLenNewPin": "New password must be 8 to 64 characters!",
    "cannotSame": "The new password can not be the same as the old password!",
    "modifyOk": "Password changed, please log in again",
    "INVALID_INPUT:newpwd": "Invalid new password (8-64 characters, different from old password)!",
    "INVALID_INPUT:oldpwd": "Incorrect old password!",
    "PASSWORD_CHANGE_REQUIRED": "Default password change required!"
};

function get_lan_modifypwd(m) {
    var lan = getCookie('language');
    switch (lan) {
        case 'Chinese':
            var t = cn[m];
            break;
        default:
            var t = en[m];
    }

    if (t == undefined) t = cn[m];
    if (t == undefined) t = en[m];
    if (t == undefined) t = m;

    return t;
}

function mifi_translate(key) {
    if (!key) return "";
    var t = get_lan_modifypwd(key);
    if (t === key && typeof lang !== 'undefined' && lang && lang[key]) {
        return lang[key];
    }
    return t;
}

function init(){

}

$("#apply").bind('click', function(e) {

    var oldpwd = $("#oldpwd").val();
    var newpwd = $("#newpwd").val();

    if (oldpwd == "") {
        Alert(mifi_translate('inputOldpin'));
        return;
    }
    if (newpwd == "") {
        Alert(mifi_translate('inputnewpin'));
        return;
    }
    if (newpwd.length < 8 || newpwd.length > 64) {
        Alert(mifi_translate('inputLenNewPin') + "\nNew password: 8 to 64 characters, different from the old password");
        return;
    }
    if (oldpwd == newpwd) {
        Alert(mifi_translate('cannotSame') + "\nNew password: 8 to 64 characters, different from the old password");
        return;
    }

    var param = {
        "funcNo": 1020,
        "oldpwd": oldpwd,
        "newpwd": newpwd
    };

    request(param, function(data) {
        var flag = data.flag;
        var error_info = data.error_info;

        if (flag == "1") {
            Alert(mifi_translate('modifyOk'));
            window.location = "index.html";
            return;
        } else {
            var msg = (mifi_translate(error_info) || error_info || "Modification failed") + "\nNew password: 8 to 64 characters, different from the old password";
            Alert(msg);
        }
    });
});

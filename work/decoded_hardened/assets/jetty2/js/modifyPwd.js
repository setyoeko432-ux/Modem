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
    "inputLenNewPin": "新密码必须为12-64个字符!",
    "cannotSame": "新密码不能与旧密码一样!",
    "modifyOk": "密码修改成功，请重新登录!",
    "INVALID_INPUT:newpwd": "新密码无效!",
    "INVALID_INPUT:newpwd_short": "新密码太短，至少12个字符!",
    "INVALID_INPUT:newpwd_long": "新密码太长，最多64个字符!",
    "INVALID_INPUT:newpwd_chars": "新密码只能包含字母、数字和 _ - . ! @ # % ^ * + = ? ~",
    "INVALID_INPUT:newpwd_weak": "新密码太容易猜到，请避免重复字符以及 admin、password 等词!",
    "INVALID_INPUT:newpwd_same": "新密码不能与旧密码相同!",
    "policy": "新密码：12-64个字符，可用字母、数字和 _ - . ! @ # % ^ * + = ? ~，且不能与旧密码相同",
    "INVALID_INPUT:oldpwd": "旧密码错误!",
    "PASSWORD_CHANGE_REQUIRED": "请修改默认初始密码!"
};

var en = {
    "fail": "Fail",
    "pass": "Success",
    "inputOldpin": "Please input old password!",
    "inputLegalpin": "Please input legal password!",
    "inputnewpin": "Please input new password!",
    "inputLenNewPin": "New password must be 12 to 64 characters!",
    "cannotSame": "The new password can not be the same as the old password!",
    "modifyOk": "Password changed, please log in again",
    "INVALID_INPUT:newpwd": "Invalid new password!",
    "INVALID_INPUT:newpwd_short": "New password is too short: use at least 12 characters!",
    "INVALID_INPUT:newpwd_long": "New password is too long: use at most 64 characters!",
    "INVALID_INPUT:newpwd_chars": "Use only letters, digits and _ - . ! @ # % ^ * + = ? ~",
    "INVALID_INPUT:newpwd_weak": "That password is too easy to guess: avoid repeated characters and words like admin or password!",
    "INVALID_INPUT:newpwd_same": "The new password must differ from the old one!",
    "policy": "New password: 12 to 64 characters; letters, digits and _ - . ! @ # % ^ * + = ? ~; different from the old password",
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
    if (newpwd.length < 12 || newpwd.length > 64) {
        Alert(mifi_translate('inputLenNewPin') + "\n" + mifi_translate('policy'));
        return;
    }
    if (oldpwd == newpwd) {
        Alert(mifi_translate('cannotSame') + "\n" + mifi_translate('policy'));
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
            var msg = (mifi_translate(error_info) || error_info || "Modification failed") + "\n" + mifi_translate('policy');
            Alert(msg);
        }
    });
});

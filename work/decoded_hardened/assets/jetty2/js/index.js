$(function(){
//	_loadCss("./css/layer.css");
	init();
});

function setStyleDisplay(id, val) {
    var el = document.getElementById(id);
    if (el) {
        el.style.display = val;
    }
}

function init(){
	if(getCookie("language") == null)
	{
	    setCookie("language", "English");  //default is English
		window.location = 'index.html';
	}
	var qqq = getCookie("language");
	if(getCookie("language") == "Chinese")
	{
	    $("#zh").html("简体中文");
	    $("#en").html("英文");
	    $("#ru").html("俄文");
	    $("#zh").attr("selected", "selected");
	    $("#en").removeAttr("selected");
	    $("#ru").removeAttr("selected");
	    setStyleDisplay("helpEn", "none");
	    setStyleDisplay("HelpZh", "inline");
	}
	else if (getCookie("language") == "Russion") {
	    $("#zh").html("китайский язык ");
	    $("#en").html("английский");
	    $("#ru").html("русский язык");
	    $("#ru").attr("selected", "selected");
	    $("#en").removeAttr("selected");
	    $("#zh").removeAttr("selected");
	    setStyleDisplay("body6", "inline");
	    setStyleDisplay("body7", "none");
	}
	else {
	    $("#zh").html("Chinese");
	    $("#en").html("English");
	    $("#ru").html("Russion");
	    $("#en").attr("selected", "selected");
	    $("#zh").removeAttr("selected");
	    $("#ru").removeAttr("selected");
	    setStyleDisplay("body6", "inline");
	    setStyleDisplay("body7", "none");
	}
}

$("#select").bind('change', function (e) {
	if($("#en").attr("selected") == "selected"){
		$("#en").attr("selected","selected");
		$("#zh").removeAttr("selected");
		$("#ru").removeAttr("selected");
		setCookie("language","English");
		window.location = 'index.html';
	}else if($("#zh").attr("selected") == "selected"){
		$("#zh").attr("selected","selected");
		$("#en").removeAttr("selected");
		$("#ru").removeAttr("selected");
		setCookie("language","Chinese");
		window.location = 'index.html';
    }
    else {
        $("#ru").attr("selected", "selected");
        $("#zh").removeAttr("selected");
        $("#en").removeAttr("selected");
        setCookie("language", "Russion");
        window.location = 'index.html';
	}
});

$("#frm").bind('keypress', function (e) {
	if (e.keyCode == 13){ 
		if(verify()){
			login();
		}
	}            
});

$("#login").bind('click', function (e) {
	if(verify()){
		login();
	}       
});

function verify(){
	
	var username = $("#username").val();
	var password = $("#password").val();
	
	if(username == ""){
		Alert(mifi_translate('Please input username'));
		return false;
	}
	if(password == ""){
		Alert(mifi_translate('Please input password'));
		return false;
	}
	return true;
}

function login(){

	var user = $("#username").val();
	var pwd = $("#password").val();
	var param = {funcNo:1000,username:user,password:pwd,remember:($("#remember").is(":checked") ? "1" : "0")};
	request(param,function(data){
		var flag = data.flag;
		var error_info = data.error_info;
		
		if(flag == "1"){//正确
			var result = data.results[0];
			//保存需要的数据
			$.session.set("conn_mode", result.conn_mode);//自动连接or手动连接
			$.session.set("net_mode", result.net_mode);//0:Auto,1:3G Only,2:4G Only
			$.session.set("imei", result.imei);//IMEI
			$.session.set("fwversion", result.fwversion);//sw
			
			window.location = "main.html";//跳转到主页面
		}else{//错误
			 Alert(mifi_translate(error_info)); 
		}
	});
	
}


/* ---- session resume (remember-me) and password recovery ---- */
var RM_TEXT = {
	"RECOVERY_FAILED": "That recovery code is not valid. It can be used only once.",
	"INVALID_INPUT:code": "The recovery code looks wrong (20 letters/digits, e.g. ABCDE-FGHJK-LMNPQ-RSTUV).",
	"INVALID_INPUT:newpwd_short": "New password is too short: use at least 12 characters.",
	"INVALID_INPUT:newpwd_long": "New password is too long: use at most 64 characters.",
	"INVALID_INPUT:newpwd_chars": "Use only letters, digits and _ - . ! @ # % ^ * + = ? ~",
	"INVALID_INPUT:newpwd_weak": "That password is too easy to guess.",
	"INVALID_INPUT:newpwd_same": "The new password must differ from the old one.",
	"INVALID_INPUT:newpwd": "Invalid new password.",
	"STORAGE": "Could not save. Try again.",
	"recovered": "Password reset. Please log in with the new password."
};

function rmMsg(key) {
	return RM_TEXT[key] || key;
}

/* whoami with its OWN error handling: the shared handler redirects 401 to index.html, which would loop here. */
function resumeSession() {
	$.ajax({
		url: "/ajax",
		data: JSON.stringify({funcNo: 1060}),
		type: "post",
		dataType: "json",
		timeout: 8000,
		beforeSend: function(xhr) { xhr.setRequestHeader("X-Mifi-Req", "1"); },
		success: function(data) {
			if (data && data.flag == "1" && data.results && data.results[0]) {
				window.location = data.results[0].needsPasswordChange == "1" ? "modifyPwd.html" : "main.html";
			}
		},
		error: function() { /* not signed in: stay on the login form */ }
	});
}

$("#forgotLink").bind('click', function(e) {
	e.preventDefault();
	$(".recoveryRow").toggle();
});

$("#recoverBtn").bind('click', function(e) {
	var code = $("#recoveryCode").val();
	var newpwd = $("#recoveryNewPwd").val();
	if (code == "" || newpwd == "") {
		Alert(rmMsg("INVALID_INPUT:code"));
		return;
	}
	request({funcNo: 1066, code: code, newpwd: newpwd}, function(data) {
		if (data.flag == "1") {
			$("#recoveryCode").val("");
			$("#recoveryNewPwd").val("");
			$(".recoveryRow").hide();
			Alert(rmMsg("recovered"));
		} else {
			Alert(rmMsg(data.error_info));
		}
	});
});

$(function() {
	resumeSession();
});

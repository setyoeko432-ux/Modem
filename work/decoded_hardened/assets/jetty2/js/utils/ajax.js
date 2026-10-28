﻿function securityText(code) {
    if (typeof RM_TEXT !== "undefined" && RM_TEXT && RM_TEXT[code]) {
        return RM_TEXT[code];
    }
    return null;
}

function handleSecurityError(xhr) {
    if (!xhr) {
        return false;
    }
    var body = null;
    try {
        body = xhr.responseJSON || JSON.parse(xhr.responseText || "{}");
    } catch (ignored) {
        body = null;
    }
    var errInfo = (body && body.error_info) ? body.error_info : "";

    if (xhr.status === 400) {
        var msg = errInfo ? (securityText(errInfo) || mifi_translate(errInfo) || errInfo) : "Invalid input";
        Alert(msg);
        return true;
    }
    if (xhr.status === 401) {
        window.location = "index.html";
        return true;
    }
    if (xhr.status === 403) {
        if (errInfo === "PASSWORD_CHANGE_REQUIRED") {
            if (window.location.pathname.indexOf("modifyPwd.html") === -1) {
                window.location = "modifyPwd.html";
            } else {
                Alert("Please change the default admin password.");
            }
        } else {
            var msg = errInfo ? (securityText(errInfo) || mifi_translate(errInfo) || errInfo) : "Access denied";
            Alert(msg);
        }
        return true;
    }
    if (xhr.status === 429) {
        var wait = parseInt(xhr.getResponseHeader ? xhr.getResponseHeader("Retry-After") : "", 10);
        var msg = "Too many attempts. Please wait and try again.";
        if (wait > 0) {
            msg = "Too many attempts. Try again in " + (wait >= 60 ? Math.ceil(wait / 60) + " min" : wait + " s") + ".";
        }
        Alert(msg);
        return true;
    }
    return false;
}

function request(param, callback){
	var iAjax = $.ajax({
		url: "/ajax",
		data: JSON.stringify(param),
		type: "post",
		dataType: "json",
		async: true,
		timeout: 20 * 1000,
		beforeSend: function(XMLHttpRequest) {
			XMLHttpRequest.setRequestHeader("X-Mifi-Req", "1");
		},
		success: function(data, textStatus) {
//			console.log("success");
			if(data) 
			{
				if(callback) 
				{
					callback(data);
				}
			} 
			else 
			{
				Alert("Data error");
			}
		},
		complete: function(XMLHttpRequest, textStatus) {
//			console.log("complete");
		},
		error: function(XMLHttpRequest, textStatus, errorMessage) {
			if(handleSecurityError(XMLHttpRequest))
			{
				return;
			}
			if(textStatus == "timeout")
			{
				iAjax.abort();
				 if(typeof timeOutFunc !== "undefined" && timeOutFunc)
				 {
					 timeOutFunc();
				 } 
				 else 
				 {
					 Alert("Request timeout");
				 }
			}
			else if(textStatus != "abort")
			{
				Alert("Request failed: " + XMLHttpRequest.status);
			}
		}
	});
}

function request2(param, callback) {
    var iAjax = $.ajax({
        url: "/ajax",
        data: JSON.stringify(param),
        type: "post",
        dataType: "json",
        async: true,
        timeout: 25 * 1000,
        beforeSend: function(XMLHttpRequest) {
            XMLHttpRequest.setRequestHeader("X-Mifi-Req", "1");
        },
        success: function(data, textStatus) {
            if (data) {
                if (callback) {
                    callback(data);
                }
            }
            else {
                Alert("Data error");
            }
        },
        complete: function(XMLHttpRequest, textStatus) {
        },
        error: function(XMLHttpRequest, textStatus, errorMessage) {
            if (handleSecurityError(XMLHttpRequest)) {
                return;
            }
            if (textStatus == "timeout") {
                Alert("Request timed out, please try again.");
                iAjax.abort();
            }
            else if (textStatus != "abort") {
                Alert("Request failed: " + XMLHttpRequest.status);
            }
        }
    });
}

function handleSecurityError(xhr) {
    if (!xhr) {
        return false;
    }
    if (xhr.status === 401) {
        window.location = "index.html";
        return true;
    }
    if (xhr.status === 403) {
        var body = null;
        try {
            body = xhr.responseJSON || JSON.parse(xhr.responseText || "{}");
        } catch (ignored) {
            body = null;
        }
        if (body && body.error_info === "PASSWORD_CHANGE_REQUIRED") {
            window.location = "modifyPwd.html";
        } else {
            Alert(body && body.error_info ? mifi_translate(body.error_info) : "Access denied");
        }
        return true;
    }
    if (xhr.status === 429) {
        Alert("Too many login attempts. Please wait and try again.");
        return true;
    }
    return false;
}

function request(param, callback){
	var iAjax = $.ajax({
		url: "http://192.168.100.1:80/ajax",
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
				Alert("��̨�������ݸ�ʽ����ȷ,����ϵ����Ա������������:" + data);
			}
		},
		complete: function(XMLHttpRequest, textStatus) {
//			console.log("complete");
		},
		error: function(XMLHttpRequest, textStatus, errorMessage) { // abort��ִ��error����
			if(handleSecurityError(XMLHttpRequest))
			{
				return;
			}
			if(textStatus == "timeout")
			{
				iAjax.abort();
				 // ���ӳ�ʱ���⴦����
				 if(timeOutFunc)
				 {
					 timeOutFunc();
				 } 
				 else 
				 {
					 Alert("����ʱ,����ӿ��Ƿ��쳣�������粻ͨ��");
				 }
			}
			else if(textStatus != "abort")
			{
				var getNetInfoCallback = function(result){
					if(result && +result.network === 0) // ����
					{
						Alert("����δ����");
					}
					else
					{
						Alert("�������쳣,������:" + XMLHttpRequest.status + ",������Ϣ:" + XMLHttpRequest.statusText);
					}
				};
			}
		}
	});
}

function request2(param, callback) {
    var iAjax = $.ajax({
        url: "http://192.168.100.1:80/ajax",
        data: JSON.stringify(param),
        type: "post",
        dataType: "json",
        async: true,
        timeout: 25 * 1000,
        beforeSend: function(XMLHttpRequest) {
            XMLHttpRequest.setRequestHeader("X-Mifi-Req", "1");
        },
        success: function(data, textStatus) {
            //			console.log("success");
            if (data) {
                if (callback) {
                    callback(data);
                }
            }
            else {
                Alert("��̨�������ݸ�ʽ����ȷ,����ϵ����Ա������������:" + data);
            }
        },
        complete: function(XMLHttpRequest, textStatus) {
            //			console.log("complete");
        },
        error: function(XMLHttpRequest, textStatus, errorMessage) { // abort��ִ��error����
            if (handleSecurityError(XMLHttpRequest)) {
                return;
            }
            if (textStatus == "timeout") {
                Alert("Request timed out, please try again.");
                iAjax.abort();
            }
            else if (textStatus != "abort") {
                var getNetInfoCallback = function(result) {
                    if (result && +result.network === 0) // ����
                    {
                        Alert("����δ����");
                    }
                    else {
                        Alert("�������쳣,������:" + XMLHttpRequest.status + ",������Ϣ:" + XMLHttpRequest.statusText);
                    }
                };
            }
        }
    });
}

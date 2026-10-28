
$(function(){
//	_loadCss("./css/layer.css");
	init();
	$("#progressTR").hide();
	update2();
});
var cn = {
    "fail": "失败",
    "pass": "成功",
    "Name: ": "名称: ",
    "Size: ": "大小: ",
   

};

var en = {
    "fail": "Fail",
    "pass": "Success",
    "Name: ": "Name: ",
    "Size: ": "Size: ",
  

};
function get_lan_operation(m) {
    //获取文字
    var lan = getCookie('language');     //语言版本
    //选取语言文字
    switch (lan) {
        case 'Chinese':
            var t = cn[m];
            break;
        default:
            var t = en[m];
    }

    //如果所选语言的json中没有此内容就选取其他语言显示
    if (t == undefined) t = cn[m];
    if (t == undefined) t = en[m];


    if (t == undefined) t = m; //如果还是没有就返回他的标识

    return t;
}
function init() {
    //document.getElementById("content2").style.display = "none";

}

$("#uploadB,#Upgrade,#Delete").remove();

function uploadFile() {
    Alert("Firmware upgrade is unavailable in this build.");
}
function uploadProgress(evt) {

    if (evt.lengthComputable) {
        var percentComplete = Math.round(evt.loaded * 100 / evt.total);
        var processbar = document.getElementById("processbar"); 
        processbar.style.width = percentComplete + "%";
        processbar.innerHTML = processbar.style.width;  
    }
    else {
        document.getElementById('progress').innerHTML = 'unable to compute';
    }
}
function uploadComplete(evt) {
    /* This event is raised when the server send back a response */
    if (evt.target.responseText= "{\"flag\":\"1\"}") {
        alert(get_lan_operation('pass'));
        document.getElementById("Upgrade").style.display = "inline";
        document.getElementById("Delete").style.display = "inline";
        document.getElementById("uploadB").style.display = "none";
    }
 
}
function uploadFailed(evt) {
    alert("There was an error attempting to upload the file.");
}
function uploadCanceled(evt) {
    alert("The upload has been canceled by the user or the browser dropped the connection.");
}
function fileSelected() {
    //$("#progressTR").show();
    $("#processbar").html("");
    $("#processbar").css("width", 0 + "%");
    document.getElementById('fileName').innerHTML = "";
    document.getElementById('fileSize').innerHTML = "";
    document.getElementById("Upgrade").style.display = "none";
    document.getElementById("Delete").style.display = "none";
    document.getElementById("uploadB").style.display = "inline";
   
}
$("#Delete").bind('click', function(e) {
    var param = { funcNo: 3001 };
    request(param, function(data) {
        var flag = data.flag;
        var error_info = data.error_info;

        if (flag == "1") {//正确
         
            alert(get_lan_operation('pass'));

        } else {//错误
            Alert(error_info);
        }
    });
});
function requestUpgrade(param, timer,callback){
	var iAjax = $.ajax({
		url: "http://192.168.100.1:80/ajax",
		data: JSON.stringify(param),
		type: "post",
		dataType: "json",
		async: true,
		timeout: 20 * 1000,
		beforeSend: function(XMLHttpRequest) {
		},
		success: function(data, textStatus) {

			if(data) 
			{
				if(callback) 
				{
					callback(data);
				}
			} 
			else 
			{
				clearInterval(timer);
				var processbar = document.getElementById("processbar"); 
				processbar.style.width = 0 + "%";
                processbar.innerHTML = processbar.style.width;   
                alert(get_lan_operation('fail'));           
			}
		},
		complete: function(XMLHttpRequest, textStatus) {
//			console.log("complete");
		},
		error: function(XMLHttpRequest, textStatus, errorMessage) { // abort��ִ��error����
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
function update2(){
   var param = { funcNo: 3002 };
    request(param, function(data) {
        var flag = data.flag;
        var error_info = data.error_info;

        if (flag == "1") {//正确
            var result = data.results[0];
            //保存需要的数据
           
             $("#producttype").text(result.device_name);
             $("#firmwareVer").text(result.sw_version);
                 
        } else {//错误
            Alert(error_info);
        }
    });
}

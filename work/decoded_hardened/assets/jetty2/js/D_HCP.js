$(function(){
	init();
});

function init(){
	var param = {funcNo:1011};
	request(param,function(data){
		var flag = data.flag;
		var error_info = data.error_info;
		
		if(flag == "1"){
			var result = data.results[0];
			if(result.ip){
				$("#ip").text(result.ip);
			}
			if(result.dns1){
				$("#dns1").val(result.dns1);
			}
			if (result.dns2) {
			    $("#dns2").val(result.dns2);
			}
			if(result.range_low){
				$("#range_low").val(result.range_low);
			}
			if(result.range_high){
				$("#range_high").val(result.range_high);
			}
			if(result.device_arr){
				showCurrentDev(result.device_arr);
			}
		}else{
		    Alert(mifi_translate(error_info)); 
		}
	});
}

function showCurrentDev(deviceAttr){
	if(!deviceAttr || !deviceAttr.length){
		return;
	}

	var $tbody = $("#table tbody");
	if ($tbody.length === 0) {
		$tbody = $("<tbody>").appendTo("#table");
	} else {
		$tbody.empty();
	}

	for(var i = 0; i < deviceAttr.length; i++){
		var dev = deviceAttr[i] || {};
		var $tr = $("<tr>");
		$("<td>").text(i + 1).appendTo($tr);
		$("<td>").text(dev.name || "-").appendTo($tr);
		$("<td>").text(dev.ip || "-").appendTo($tr);
		$("<td>").text(dev.mac || "-").appendTo($tr);
		$("<td>").text(dev.media || "-").appendTo($tr);
		$tr.appendTo($tbody);
	}

	$("#list").show();
}

$("#apply").bind('click', function (e) {
    e.preventDefault();
    var param = { funcNo: 1012, dns1: $("#dns1").val(), dns2: $("#dns2").val() };
	request(param,function(data){
		var flag = data.flag;
		var error_info = data.error_info;
		
		if(flag == "1"){
			Alert(mifi_translate('pass') || 'Saved');
			return;
		}else{
			Alert(mifi_translate(error_info));
		}
	});
});

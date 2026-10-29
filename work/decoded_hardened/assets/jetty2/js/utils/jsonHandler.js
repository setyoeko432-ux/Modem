var data = (window.self == window.top ? {} : (typeof window.top.data == 'object') ? window.top.data : (window.top.data = {}));

var domain = '',
	  suffix = '.json';

function mifi_get_text(){
	$('[lang]').not('html, body').each(function(){
		var content = mifi_translate($(this).attr('lang'));
		switch(this.tagName.toLowerCase()){
			case 'input':
				$(this).val(content);
				break;
			case 'option':
				$(this).text(content);
				break;
			case 'title':
				document.title = content;
				break;
			default:
				$(this).html(content);
		}
	});
}

function mifi_show_text(){
	$("body").show();
}

function getCurFileName(){
	return location.pathname.substring(1).replace(/\.\w+$/g, '');
}

function ownProp(o, prop) {
    return Object.prototype.hasOwnProperty.call(o, prop);
}

function mifi_translate(k){
	if(!k)
		return '';
	var current_file_name = getCurFileName();
	if(current_file_name == ""){
		current_file_name = "index";
	}
    if (getCookie("language") == "Chinese") {
        current_file_name = "zh";
    }
    else if(getCookie("language") == "English") {
        current_file_name = "en";
    }
    else if(getCookie("language") == "Indonesian") {
        current_file_name = "id";
    }
    else
    {
        current_file_name = "ru";
    }

	if(typeof data[current_file_name] != 'object'){
		$.ajax({
			url: '/json/' + current_file_name + suffix,
			async: false,
			cache: true,
			dataType: 'json',
			success: function(json){
				data[current_file_name] = json;
			},
			error: function(){
				data[current_file_name] = {};
			}
		});
	}

	return ownProp(data[current_file_name],k) ? data[current_file_name][k] : k;
}

$(function(){
	mifi_get_text();
	mifi_show_text();
});

(function () {
	'use strict';
    var paramStr = location.search.split('?')[1];
    var params = paramStr.split('&');
    var data = {};
    params.forEach(function(item) {
        var arr = item.split('='); 
        data[arr[0]] = arr[1];
    });

    function callback (response) {
    	if (response.length > 2) {
    		for (var i = 0; i < response.length; i ++) {
    			response[i].length = response.length;
    		}
    	}
    	refreshReport (response);
    }

    function refreshReport(data) {
    	var html = "";
    	html = $("#report-tmpl").tmpl(data);
    	$('.report-container').html(html);
    	
    }
    OrionReportUtils.getMiniData(data, callback);
    
}());
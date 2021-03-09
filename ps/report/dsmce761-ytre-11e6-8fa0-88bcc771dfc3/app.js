(function () {
	'use strict';
	
	function callback(data){
		OrionReportUtils.linkToCustom("report-subpage", "/detail.html");

		$('#report-name').text(data.name);
		$('#amount').text(data.amount);
		$('#year_growth').text(data.year_growth);
		$('#month_growth').text(data.month_growth);
		$('.app-content-loading').hide();
		
	}

	OrionReportUtils.getDataByDefault(callback);

}());
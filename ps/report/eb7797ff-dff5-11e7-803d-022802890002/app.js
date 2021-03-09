(function () {
	'use strict';
    function callback(data){
        var list = !!data && data.data;
        $('#dsm_1_1').html(data[0]);

        $('#dsm_2_1').html(data[1]);

        $('#dsm_3_1').html(data[2][0]);
        $('#dsm_3_2').html(data[2][1]);
        $('#dsm_3_3').html(data[2][2]);

        $('#dsm_4_1').html((data[3][0]*100).toFixed(0)/100);
        $('#dsm_4_2').html((data[3][1]*100).toFixed(0)/100);

        $('.homepage-date span').append(data[4]);

        $('.app-content-loading').hide();
    }
    OrionReportUtils.getDataByDefault(callback);
    
}());
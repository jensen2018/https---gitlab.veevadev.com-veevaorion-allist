(function () {
	'use strict';
    function callback(data){
        var list = !!data && data.data;
        $('#rep_1_1').html(data[0][0]);
        $('#rep_1_2').html(data[0][1]);

        $('#rep_2_1').html(data[1][0]);

        $('#rep_3_1').html(data[2][0]);
        $('#rep_3_2').html(data[2][1]);
        $('#rep_3_3').html(data[2][2]);

        $('#rep_4_1').html((data[3][0]*100).toFixed(0)/100);
        $('#rep_4_2').html((data[3][1]*100).toFixed(0)/100);

        $('.homepage-date span').append(data[4]);

        $('.app-content-loading').hide();
    }
    OrionReportUtils.getDataByDefault(callback);
    
}());
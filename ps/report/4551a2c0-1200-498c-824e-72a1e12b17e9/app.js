$(document).ready(function(){
    $("#list-report").LoadingOverlay("show");
    function callback(data){
        if (data) {
            $('#week_value').text(data.week_patients_num);
            $('#month_value').text(data.month_patients_num);
        }
        $("#list-report").LoadingOverlay("hide");
    }


    var data = {};
    var _url = parent.document.location.href;
    if (_url !== undefined) {
        var paramStr = _url.split('?')[1];
        if (paramStr !== undefined) {
            var params = paramStr.split('&');
            if (params !== undefined) {
                params.forEach(function(item) {
                    var arr = item.split('='); 
                    data[arr[0]] = arr[1];
                });
            }
        }
    }
    var conditions = OrionReportUtils.getParams("conditions");
    if (conditions){
        conditions = decodeURI(conditions) || [];
    }
    var _data = {};
    _data['conditions'] = conditions;
    _data['page_list_id'] = data['page-list-id'];
    
    OrionReportUtils.getMiniData(_data, callback);
    // OrionReportUtils.getListReportData(data, "detail", callback);
});

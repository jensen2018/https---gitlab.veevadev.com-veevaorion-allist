$(function () {
            var args = window.location.search;
            var month = args.split("&")[1];
            var product = args.split("&")[2];
            var hospital = args.split("&")[3];
            var months =[];
            var products = [];

            var obj = {"month": month,"product":product,"hospital":hospital};

            OrionReportUtils.getDropList("getDropList",callbackDrapList);
            OrionReportUtils.getDataByMethodWithParams("invoice_list",obj,callback);
            function invoice(response) {
                var html = $('#tabPackages').tmpl(response);
    	        $('#tab-invoice').html(html);
            }

            $('#goHome').click(function() {
                window.location = "/#/welcome";
	        });

            function callbackDrapList(data){
		        console.log(data)
    	        months = data.months;
    	        products = data.products;

    	        $("#time").addClass("selected");
                $("#product").addClass("selected");
    }

            function callback(data) {
                var url = OrionReportUtils.getUrl('invoice_list');
                $("#hospital_name").text(data.hospital_name);
                $("#hospital_id").text(data.hospital_id);
                $('#time').text(data.mon)
                $('#product').text(data.package)
                $("#product").attr("proId",data.package_id);

                invoice(data.invoice_list);

                $(".list_name").click(function (){
                    var index =$(this).parent('.tab-invoice-item').index()
                    var is_show = $(".tab-invoice-item").eq(index).children('.list_detail').css('display');
                    if(is_show=='none'){
                     $(".tab-invoice-item").eq(index).children('.list_detail').show();
                     $(".tab-invoice-item").eq(index).children('.list_name').children('.invoice-icon').css("background-image","url(../img/more_unfold.png)");
                    }else{
                     $(".tab-invoice-item").eq(index).children('.list_detail').hide();
                     $(".tab-invoice-item").eq(index).children('.list_name').children('.invoice-icon').css("background-image","url(../img/more.png)");
                }
                })
                $("#time").click(function(){
			    $(this).dropDown(months, months[0], url);
		        });
		        $("#product").click(function(){
			    $(this).dropDown(products, '剂型', url);
		        });


            }


}());
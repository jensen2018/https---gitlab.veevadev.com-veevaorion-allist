$(function(){
	var $subli = $('.tab-bar');
	var tabSuborder = $('#tab-suborder');
	var tabHospital = $('#tab-hospital');
	var timeValue = $("#time").text();
	var productValue = $("#product").text();
	var hospitalValue = $("#hospital").text()
	var months = [];
	var products = [];
	var name = "销售金额(万元)";
	var chart;
	var count = {};
	count.is = 1
	var args = window.location.search;
	var origin = location.origin;
	var reportId = location.pathname.split('/')[3];
	var url = OrionReportUtils.getUrl('sub_detail');


	initChart();
	function showLoading() {
	    chart.showLoading({
			text: 'loading',
			color: '#c23531',
			textColor: '#000',
			maskColor: 'rgba(255, 255, 255, 0.8)',
			zlevel: 0
		});
	}

	function hideLoading() {
		chart.hideLoading();
	}


	function initChart(name) {
		var dom = document.getElementById('rankList');
		chart = echarts.init(dom);
		var option = {
			
			    tooltip : {
			        trigger: 'axis'
			    },
			    calculable : true,
			    grid: {
			    	x: 60,
			    	x2: 15,
			    	y: 10,
			    	y2: 40,
			    },
			    xAxis : [
			        {
			            type : 'category',
			            boundaryGap : false,
			            axisLine : {    
			                show: true,
			                lineStyle: {
			                    color: '#ddd'
			                }
			            },
			            axisTick : {
			                show:false
			            },
			            axisLabel : {
			                interval: 0,    
			                margin: 10,
			                textStyle: {
			                    color: '#999',
			                    fontSize: 6,
			                }
			            },
			            splitLine: {
			            	show: false
			            },
			            data : [ "1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
			        }
			    ],
			    yAxis : [
			        {
			            type : 'value',
			            min: 0,
//			            max: 250,
			            boundaryGap: false,
			            axisLine : {    
			                show: true,
			                lineStyle: {
			                    color: '#fff'
			                }
			            },
			            axisTick : {    
			                show:false
			            },
			            axisLabel : {
			                interval: 'auto',    
			                margin: 10,
			                textStyle: {
			                    color: '#999',
			                    fontSize: 8,
			                }
			            },
			            splitLine: {
			            	show: true,
			            	itemStyle : {  
	                			normal : {  
	                    			lineStyle:{  
	                       				color:'#eee'  
	                    			}  
	                			}  
	            			},  
			            },
			        }
			    ],
			     series : [
			        {
			            name: name,
			            type:'bar',
			            barWidth: '35%',
			            itemStyle: {
	                        //柱形图圆角，鼠标移上去效果
	                        emphasis: {
	                            barBorderRadius: [15, 15, 15, 15]
	                        },
	                         
	                        normal: {
	                            //柱形图圆角，初始化效果
	                            barBorderRadius:[15, 15, 15, 15],
	                            color: "#05c3f9",
	                        }
	                    },
			            data:[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
			        }
			    ]
			};

			chart.setOption(option);
			window.onresize = chart.resize;
		}

	function updateChart(data,is) {
		var option = chart.getOption();
		option.series[0].data = data;
		var maxValue = Math.max.apply(null,data);
//		if (maxValue > 12) {
//			option.yAxis[0].max = null;
//		}
//		else {
//			option.yAxis[0].max = 12;
//		}
		chart.setOption(option);
	}


    $("#li-suborder").click(function(){
		tabSuborder.show();
		tabHospital.hide();
		$(this).addClass("tabBorder");
		$("#li-hospital").removeClass("tabBorder");
	});

	$("#li-hospital").click(function(){
		tabSuborder.hide();
		tabHospital.show();
		$(this).addClass("tabBorder");
		$("#li-suborder").removeClass("tabBorder");
	});

    function refreshSub(data) {
        $('#tab-suborder').html("");
        var subHtml = '';
        for(var i = 0; i < data.length; i++){
            var datetime = data[i].this_month['date']
            var product_id =data[i].package_id
            var position_id = data[i].position_id
            subHtml +=
                '        <li class="tab-detail tab-detail_sub" datetime="'+datetime+'"product_id="'+product_id+'"position_id="'+position_id+'" >\n' +
                '            <div class="tab_rep">\n' +
                '                <div class="title">\n' +
                '                    <span class="title_name">'+data[i].username+'</span>\n' +
                '                    <span class="title_name">'+data[i].positionname+'</span>\n' +
                '                    <span class="title_link"> > </span>\n' +
                '                </div>\n' +
                '                <div class="tab_header">\n' +
                '                    <span class="time_data">日期</span>'
            if(count.is == 0) {
                subHtml += '<span class="number">销量(万元)</span>'
            }else{
                subHtml += '<span class="number">销量</span>'
            }
            subHtml +=
                '                    <span class="reach">A/T</span>\n' +
                '					 <span class="year_growth">同比</span>\n' +
                '                    <span class="month_growth">环比</span>\n' +
                '                </div>\n' +
                '                <div class="tab_month">\n' +
                '                        <span class="time_data">'+ data[i].this_month['date'] +'</span>\n' +
                '					     <span class="number">\n' +
                '                                <label class="an-number">'+data[i].this_month['amount']+'</label>\n' +
                '                        </span>\n' +
                '                        <span class="reach">'+data[i].this_month['reach']+'</span>\n' +
                '                        <span class="year_growth">'+data[i].this_month['year_growth']+'</span>\n' +
                '                        <span class="month_growth">'+data[i].this_month['month_growth']+'</span>\n' +
                '                </div>\n' +
                '                <div class="tab_quarter">\n' +
                '                        <span class="time_data">'+ data[i].this_quarter['date'] +'</span>\n' +
                '					     <span class="number">\n' +
                '                                <label class="an-number">'+data[i].this_quarter['amount']+'</label>\n' +
                '                        </span>\n' +
                '                        <span class="reach">'+data[i].this_quarter['reach']+'</span>\n' +
                '                        <span class="year_growth">'+data[i].this_quarter['year_growth']+'</span>\n' +
                '                        <span class="month_growth">'+data[i].this_quarter['month_growth']+'</span>\n' +
                '                </div>\n' +
                '                <div class="tab_year">\n' +
                '                        <span class="time_data">'+ data[i].this_ytd['date'] +'</span>\n' +
                '					     <span class="number">\n' +
                '                                <label class="an-number">'+data[i].this_ytd['amount']+'</label>\n' +
                '                        </span>\n' +
                '                        <span class="reach">'+data[i].this_ytd['reach']+'</span>\n' +
                '                        <span class="year_growth">'+data[i].this_ytd['year_growth']+'</span>\n' +
                '                        <span class="month_growth">'+data[i].this_ytd['month_growth']+'</span>\n' +
                '                </div>\n'+
                '			</div>\n' +
                '        </li>'
        }
        $('#tab-suborder').html(subHtml);
        }


    function refreshHos(data) {
    	$('#tab-hospital').html("");
        var hosHtml = '';
        for(var i = 0; i < data.length; i++){
            var datetime = data[i].this_month['date']
            var product_id =data[i].product
            var hospital_id = data[i].id
            hosHtml +=
                '        <li class="tab-detail tab-detail_hos" hospital_id="'+hospital_id+'" datetime="'+datetime+'" product_id="'+product_id+'" >\n' +
                '            <div class="tab_rep">\n' +
                '                <div class="title">\n' +
                '                    <span class="title_name">'+data[i].name+'</span>\n' +
                '                    <span class="title_link"> > </span>\n' +
                '                </div>\n' +
                '                <div class="tab_header">\n' +
                '                    <span class="time_data">日期</span>'
            if(count.is == 0) {
                hosHtml += '<span class="number">销量(万元)</span>'
            }else{
                hosHtml += '<span class="number">销量</span>'
            }
            hosHtml +=
                '                    <span class="reach">A/T</span>\n' +
                '					 <span class="year_growth">同比</span>\n' +
                '                    <span class="month_growth">环比</span>\n' +
                '                </div>\n' +
                '                <div class="tab_month">\n' +
                '                        <span class="time_data">'+ data[i].this_month['date'] +'</span>\n' +
                '					     <span class="number">\n' +
                '                                <label class="an-number">'+data[i].this_month['amount']+'</label>\n' +
                '                        </span>\n' +
                '                        <span class="reach">'+data[i].this_month['reach']+'</span>\n' +
                '                        <span class="year_growth">'+data[i].this_month['year_growth']+'</span>\n' +
                '                        <span class="month_growth">'+data[i].this_month['month_growth']+'</span>\n' +
                '                </div>\n' +
                '                <div class="tab_quarter">\n' +
                '                        <span class="time_data">'+ data[i].this_quarter['date'] +'</span>\n' +
                '					     <span class="number">\n' +
                '                                <label class="an-number">'+data[i].this_quarter['amount']+'</label>\n' +
                '                        </span>\n' +
                '                        <span class="reach">'+data[i].this_quarter['reach']+'</span>\n' +
                '                        <span class="year_growth">'+data[i].this_quarter['year_growth']+'</span>\n' +
                '                        <span class="month_growth">'+data[i].this_quarter['month_growth']+'</span>\n' +
                '                </div>\n' +
                '                <div class="tab_year">\n' +
                '                        <span class="time_data">'+ data[i].this_ytd['date'] +'</span>\n' +
                '					     <span class="number">\n' +
                '                                <label class="an-number">'+data[i].this_ytd['amount']+'</label>\n' +
                '                        </span>\n' +
                '                        <span class="reach">'+data[i].this_ytd['reach']+'</span>\n' +
                '                        <span class="year_growth">'+data[i].this_ytd['year_growth']+'</span>\n' +
                '                        <span class="month_growth">'+data[i].this_ytd['month_growth']+'</span>\n' +
                '                </div>\n'+
                '			</div>\n' +
                '        </li>'
        }
        $('#tab-hospital').html(hosHtml);
    }


    $('#goHome').click(function() {
		window.location = "/#/welcome";
	});


	function getdatas(data){
        if(count.is === 1){
            $(".message-text").hide();
            $(".an-text").hide();
        } else {
            $(".message-text").show();
            $(".an-text").show();
        }
        var thisMonth = data.this_month;
        $(".month-time").text(thisMonth.date);
        $("#message").text(thisMonth.amount);
        $("#actual").text(thisMonth.year_growth);
        $("#target").text(thisMonth.month_growth);
        $("#reach").text(thisMonth.reach);
        var thisQuarter = data.this_quarter;
        $(".quarter-time").text(thisQuarter.date);
        $("#quarter-number").text(thisQuarter.amount);
        $("#quarter-contrast-data").text(thisQuarter.year_growth);
        $("#quarter-loop-data").text(thisQuarter.month_growth);
        $("#quarter-reach").text(thisQuarter.reach);
        var thisYear = data.this_ytd;
        $(".year-time").text(thisYear.date);
        $("#year-number").text(thisYear.amount);
        $("#year-contrast-data").text(thisYear.year_growth);
        $("#year-loop-data").text(thisYear.month_growth);
        $("#year-reach").text(thisYear.reach);

    }

	function callbackDrapList(data){
    	months = data.months;
    	products = data.products;
    	$("#time").addClass('selected');
		$("#product").addClass('selected');
    }

    function callback(data){
		obj.is = 0
		var amounts =data.amounts;
		var counts =data.counts;
		var position  = data.position;
		$("#position_id").text(position)
		var datatime = amounts.result.this_month.date
		$("#time").text(datatime)
		$("#time").addClass("select");
		var product = amounts.package_name
		var proId =data.amounts.package_id
		$("#product").text(product);
		$("#product").attr("proId",proId);
		$("#product").addClass("select");
		var pro =$("#product").text()
    	var getProductDorpDownUrl = OrionReportUtils.getProductDropListUrl("getProductDropList");
        // var getProductDorpDownUrl = OrionReportUtils.getDataByMethodName("detail")
    	getdatas(counts.result);
    	initChart(name);
    	hideLoading();
    	updateChart(counts.this_year_detail);
		refreshHos(counts.accounts);
		if (data.is_parent){
        refreshSub(counts.underlings);
        $('.report-analysis .tab').show();
        tabHospital.hide();
        }else{
            $('.report-analysis .tab').hide();
        }

    	$("#tab-hospital").delegate(".tab-detail", "click",function () {
			var datetime = $(this).attr("datetime")
			var product_id =$(this).attr("product_id")
			var hospital_id =$(this).attr("hospital_id")
			var position_id=position
			path ='/invoice-list.html?&'+datetime+'&'+product_id+'&'+hospital_id+'&'+position_id
			parent.location = origin + '/shared/report/' + reportId + path;
        });

        if(data.is_parent){
            $("#tab-suborder").delegate(".tab-detail_sub", "click",function () {
			var datetime = $("#time").text()
			var product_id =$(this).attr("product_id")
			var position =$(this).attr("position_id")
			path ='/sub-detail.html?&'+datetime+'&'+position+'&'+product_id
			parent.location = origin + '/shared/report/' + reportId + path;
            });
        }

		$(".btn1").click(function(){
            $(".btn2").removeClass("active");
            $(this).addClass("active");
            count.is = 0;
            getdatas(amounts.result);
            initChart("销售金额(万元)");
            updateChart(amounts.this_year_detail);
            refreshHos(amounts.accounts);
            if (data.is_parent){
                refreshSub(amounts.underlings);
                $('.report-analysis .tab').show();
                tabHospital.hide();
            }else{
                $('.report-analysis .tab').hide();
            }

			});

        $(".btn2").click(function(){
            $(".btn1").removeClass("active");
            $(this).addClass("active");
            count.is = 1;
            getdatas(counts.result);
            initChart("销售数量");
            updateChart(counts.this_year_detail);
            refreshHos(counts.accounts);
            if (data.is_parent){
            refreshSub(counts.underlings);
            $('.report-analysis .tab').show();
            tabHospital.hide();
            }else{
                $('.report-analysis .tab').hide();
            }
        });

    	$(".btn1").click(function(){
    		count.is = 0;
    	});

    	$(".btn2").click(function(){
    		count.is = 1;
    	});

		$("#time").click(function(){
			$(this).dropDown(months, months[0], url, getProductDorpDownUrl, initChart, updateChart, count.is, showLoading, hideLoading);
		});
		$("#product").click(function(){
			if($("#product").text() == "剂型"){
	    		count.is = 0;
	    	}
			$(this).dropDown(products, '剂型', url, getProductDorpDownUrl, initChart, updateChart, count.is, showLoading, hideLoading);
		});

    }

    
    showLoading();
    OrionReportUtils.getDropList("getDropList",callbackDrapList);

	var month = args.split("&")[1];
	var position = args.split("&")[2];
	var product =args.split('&')[3]

	var obj = {"month" :month,"position":position,"product":product}
	OrionReportUtils.getDataByMethodWithParams("sub_detail",obj,callback)


}());

;(function($){
	$.fn.dropDown = function(data, text, url, getProductDorpDownUrl, initChart, updateChart ,is, showLoading, hideLoading){
		var html='';
		var self = $(this);
		var index = self.index();
		var selfText = text;
		var value = self.text();
		var obj = {};
		obj.is = is;
		var proId = $("#product").attr("proId");
		var paramData = data;
		var origin = location.origin;
		var reportId = location.pathname.split('/')[3];
		if(self.attr("id") == "product" && self.attr("tplData") ){
			paramData = JSON.parse(self.attr("tplData"));
		}
		tpl(paramData);

		if(self.attr("id") == "time"){
			for(var k = 0; k < paramData.length; k++){
				if(paramData[k] == self.text()){
					$(".ul-container ul li").eq(k).addClass("select");
				}
			}
		} else{
			for(var x = 0; x < paramData.length; x ++){
				if(paramData[x].id == self.attr("proId")){
					$(".ul-container ul li").eq(x).addClass("select");

				}
			}
		}

		$(".dropDown").eq(index).show();	
		self.addClass("selected");
		$(".filter-inItem").addClass("selected")


		$(".dropDown li").click(function(){
			$(".dropDown li").removeClass("select");
			if($(this).attr("proId")){
				proId = $(this).attr("proId");
			}
			value = $(this).text();
			$(".filter-inItem").text(value);
			$(this).addClass("select");
		});

		$(".dropDown button").click(btnHandler);


		function tpl(data){
			html ="<div class='dropDown'>"
				 +"<div class='ul-container'>"
				 +"<div class='report-detail-header dropDown-header'>"
			     +"<span id='reportName'>销量统计</span>"
			     +"<a id='goHome' class='home-link'><span class='home-icon'></span></a>"
			     +"</div>"
				 +"<div class='filter-in-item'><span class='filter-item filter-inItem'>"+value+"</span></div>"
				 +"<ul>";
			for( var i=0 ; i < data.length ; i ++){
				if(typeof(data[i]) == "object"){
					html+="<li proId="+ data[i].id +">"+data[i].name+"</li>"
				} else {
					html+="<li>"+data[i]+"</li>"
				}
			}
			html +="</ul>"
				 +"<div class='btn-container'>"
				 +"<button data-text='cancel'>取消</button><button data-text='reset'>重置</button><button data-text='ok' class='btn-select'>确定</button>"
				 +"</div>"
				 +"</div>"
				 +"<div class='mask'></div>"
				 +"</div>";
			$("body").append(html);

			$('.home-icon').click(function() {
				window.location = "/#/welcome";
			});
		};

		function btnHandler(){
			var btn = $(this);
			var btnAttr = btn.attr("data-text");
			$(".dropDown button").removeClass("btn-select");
			$(this).addClass("btn-select");
			if(btnAttr == "cancel"){
				$(".dropDown").remove();
				if(self.text() == "剂型"){
					self.removeClass("selected");
				}	
			}else if(btnAttr == "reset"){
				// self.text(selfText);
				$(".filter-inItem").text(selfText);
				$("li").removeClass("select");
				if(self.attr("id") == "time"){
					$(".dropDown li:eq(0)").addClass("select");
				}
			}else if(btnAttr == "ok"){
				showLoading();
				value = $(".filter-inItem").text();
				self.text(value);
				$(".dropDown").remove();
				var timeValue = $("#time").text();
				var productValue = $("#product").text();
				var position_Id = $("#position_id").text();
				if(self.attr("id") == "product"){
					if(productValue == "剂型"){
						$("#product").attr("proId","");
						productValue = '';
					    var obj='{"month":"'+ timeValue+ '","position":"'+position_Id+'","product":"'+ productValue +'"}';
					} else {
						$("#product").attr("proId",proId);
						var obj='{"month":"'+ timeValue+ '","position":"'+position_Id+'","product":"'+ proId +'"}';
					}
					url += obj;
					getData(url,callback);
				} else if(self.attr("id") == "time"){
					var obj = value;
					var obj = '{"month":"'+ timeValue+ '","position":"'+position_Id+'","product":"'+ proId +'"}';
					url += obj
					getData(url,callback);
				}
			}
		};
		function getdatas(data){
			if(obj.is === 1){
				$(".message-text").hide();
				$(".an-text").hide();
			} else {
				$(".message-text").show();
				$(".an-text").show();
			}
			var thisMonth = data.this_month;
			$("#datetime").text(thisMonth.date);
            $("#message").text(thisMonth.amount);
			$("#actual").text(thisMonth.year_growth);
			$("#target").text(thisMonth.month_growth);
			var thisQuarter = data.this_quarter;
			$("#quartertime").text(thisQuarter.date);
            $("#quarter-number").text(thisQuarter.amount);
			$("#quarter-contrast-data").text(thisQuarter.year_growth);
			$("#quarter-loop-data").text(thisQuarter.month_growth);
			var thisYear = data.this_ytd;
			$("#ytdtime").text(thisYear.date);
            $("#year-number").text(thisYear.amount);
			$("#year-contrast-data").text(thisYear.year_growth);
			$("#year-loop-data").text(thisYear.month_growth);

		}

		function getHos(data){
			$('#tab-hospital').html("");
			var hosHtml = '';
			for(var i = 0; i < data.length; i++){
				var datetime=data[i].this_month['date']
				var product_id=data[i].product
				var hospital_id=data[i].id
				hosHtml +=
					'        <li class="tab-detail tab-detail_hos" hospital_id="'+hospital_id+'" datetime="'+datetime+'" product_id="'+product_id+'" >\n' +
                    '            <div class="tab_rep">\n' +
                    '                <div class="title">\n' +
                    '                    <span class="title_name">'+data[i].name+'</span>\n' +
                    '                    <span class="title_link"> > </span>\n' +
                    '                </div>\n' +
                    '                <div class="tab_header">\n' +
                    '                    <span class="time_data">日期</span>'
                if(obj.is == 0) {
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
                    '					<span class="number">\n' +
                    '                                <label class="an-number">'+data[i].this_month['amount']+'</label>\n' +
                    '                        	</span>\n' +
                    '                        <span class="reach">'+data[i].this_month['reach']+'</span>\n' +
					'                        <span class="year_growth">'+data[i].this_month['year_growth']+'</span>\n' +
                    '                        <span class="month_growth">'+data[i].this_month['month_growth']+'</span>\n' +
                    '                </div>\n' +
                    '                <div class="tab_quarter">\n' +
                    '                        <span class="time_data">'+ data[i].this_quarter['date'] +'</span>\n' +
                    '					<span class="number">\n' +
                    '                                <label class="an-number">'+data[i].this_quarter['amount']+'</label>\n' +
                    '                        	</span>\n' +
                    '                        <span class="reach">'+data[i].this_quarter['reach']+'</span>\n' +
					'                        <span class="year_growth">'+data[i].this_quarter['year_growth']+'</span>\n' +
                    '                        <span class="month_growth">'+data[i].this_quarter['month_growth']+'</span>\n' +
                    '                </div>\n' +
					'                <div class="tab_year">\n' +
                    '                        <span class="time_data">'+ data[i].this_ytd['date'] +'</span>\n' +
                    '					<span class="number">\n' +
                    '                                <label class="an-number">'+data[i].this_ytd['amount']+'</label>\n' +
                    '                        	</span>\n' +
                    '                        <span class="reach">'+data[i].this_ytd['reach']+'</span>\n' +
					'                        <span class="year_growth">'+data[i].this_ytd['year_growth']+'</span>\n' +
                    '                        <span class="month_growth">'+data[i].this_ytd['month_growth']+'</span>\n' +
                    '                </div>\n'+
					'			</div>\n' +
                    '        </li>'
			}
    		$('#tab-hospital').html(hosHtml);
		}


		function getSub(data){
			var subHtml = '';
			$('#tab-suborder').html("");
			for (var j = 0; j < data.length; j++) {
				var datetime=data[j].this_month['date']
				var product_id=data[j].package_id
				var position_id =data[j].position_id
				subHtml +=
					'        <li class="tab-detail tab-detail_sub" datetime="'+datetime+'" product_id="'+product_id+'" position_id="'+position_id+'">\n' +
                    '            <div class="tab_rep">\n' +
                    '                <div class="title">\n' +
					'					<a href= "'+ url +'">\n'+
                    '                    <span class="title_name">'+data[j].username+'</span>\n' +
                    '                    <span class="title_name">'+data[j].positionname+'</span>\n' +
                    '                    <span class="title_link"> > </span>\n' +
					'					</a> \n' +
                    '                </div>\n' +
                    '                <div class="tab_header">\n' +
                    '                    <span class="time_data">日期</span>'
                if(obj.is == 0) {
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
                    '                        <span class="time_data">'+ data[j].this_month['date'] +'</span>\n' +
                    '					     <span class="number">\n' +
                    '                                <label class="an-number">'+data[j].this_month['amount']+'</label>\n' +
                    '                        </span>\n' +
                    '                        <span class="reach">'+data[i].this_month['reach']+'</span>\n' +
					'                        <span class="year_growth">'+data[j].this_month['year_growth']+'</span>\n' +
                    '                        <span class="month_growth">'+data[j].this_month['month_growth']+'</span>\n' +
                    '                </div>\n' +
                    '                <div class="tab_quarter">\n' +
                    '                        <span class="time_data">'+ data[j].this_quarter['date'] +'</span>\n' +
                    '					     <span class="number">\n' +
                    '                                <label class="an-number">'+data[j].this_quarter['amount']+'</label>\n' +
                    '                        </span>\n' +
                    '                        <span class="reach">'+data[i].this_quarter['reach']+'</span>\n' +
					'                        <span class="year_growth">'+data[j].this_quarter['year_growth']+'</span>\n' +
                    '                        <span class="month_growth">'+data[j].this_quarter['month_growth']+'</span>\n' +
                    '                </div>\n' +
					'                <div class="tab_year">\n' +
                    '                        <span class="time_data">'+ data[j].this_ytd['date'] +'</span>\n' +
                    '					     <span class="number">\n' +
                    '                                <label class="an-number">'+data[j].this_ytd['amount']+'</label>\n' +
                    '                        </span>\n' +
                    '                        <span class="reach">'+data[i].this_ytd['reach']+'</span>\n' +
					'                        <span class="year_growth">'+data[j].this_ytd['year_growth']+'</span>\n' +
                    '                        <span class="month_growth">'+data[j].this_ytd['month_growth']+'</span>\n' +
                    '                </div>\n'+
					'			</div>\n' +
                    '        </li>'
			}
    		$('#tab-suborder').html(subHtml);
    		$('#tab-hospital').hide();
		}

		$("#li-suborder").click(function(){
		$('#tab-suborder').show();
		$('#tab-hospital').hide();
		$(this).addClass("tabBorder");
		$("#li-hospital").removeClass("tabBorder");
	});

	$("#li-hospital").click(function(){
		$('#tab-suborder').hide();
		$('#tab-hospital').show();
		$(this).addClass("tabBorder");
		$("#li-suborder").removeClass("tabBorder");
	});

    function callback(data){
        var amounts = data.amounts;
        var counts = data.counts;
        if(data.products){
            $("#product").attr("tplData",JSON.stringify(data.products));
        }

        if(obj.is == 1){
            $(".btn1").removeClass("active");
            $(".btn2").addClass("active");
            obj.is == 1
            getdatas(counts.result);
            initChart("销售数量");
            updateChart(counts.this_year_detail);
            getHos(counts.accounts);
            if (data.is_parent){
                getSub(counts.underlings);
                $('.report-analysis .tab').show();
                }else{
                    $('.report-analysis .tab').hide();
                }

        } else {
            $(".btn2").removeClass("active");
            $(".btn1").addClass("active");
            obj.is = 0;
            getdatas(amounts.result);
            initChart("销售金额(万元)");
            updateChart(amounts.this_year_detail);
            getHos(amounts.accounts);
            if (data.is_parent){
                getSub(amounts.underlings);
                $('.report-analysis .tab').show();
                }else{
                    $('.report-analysis .tab').hide();
                }
        }

        $("#tab-hospital").delegate(".tab-detail", "click",function () {
            var datetime = $(this).attr("datetime")
            var product_id =$(this).attr("product_id")
            var hospital_id =$(this).attr("hospital_id")
            path ='/invoice-list.html?&'+datetime+'&'+product_id+'&'+hospital_id
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
        };

			$(".btn1").click(function(){
				$(".btn2").removeClass("active");
				$(this).addClass("active");
				obj.is = 0;
				getdatas(amounts.result);
				initChart("销售金额(万元)");
				updateChart(amounts.this_year_detail);
				getHos(amounts.accounts);
				if (data.is_parent){
                    getSub(amounts.underlings);
                    $('.report-analysis .tab').show();
                    }else{
                        $('.report-analysis .tab').hide();
                    }
				obj.is = 0;
			});
			$(".btn2").click(function(){
				if($("#product").text() != "剂型"){
					$(".btn1").removeClass("active");
					$(this).addClass("active");
					obj.is = 1;
					getdatas(counts.result);
					initChart("销售数量");
					updateChart(counts.this_year_detail);
					getHos(counts.accounts);
					if (data.is_parent){
                        getSub(counts.underlings);
                        $('.report-analysis .tab').show();
                        }else{
                            $('.report-analysis .tab').hide();
                    }

				}
				
			});
			
		}
		
		function getData(url,callback){
			$.ajax({												
				type: "get",
				url: url,
				xhrFields: {
					withCredentials: true
				},
				success: callback,
				error: function (data) {

				}
			});
		}
	};
	
})(jQuery);
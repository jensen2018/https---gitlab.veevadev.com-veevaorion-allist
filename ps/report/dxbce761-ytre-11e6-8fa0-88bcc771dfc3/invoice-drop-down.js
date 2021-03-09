;(function($){
	$.fn.dropDown = function(data, text , url){

		var html='';
		var self = $(this);
		var index = self.index();
		var selfText = text;
		var value = self.text();
		var url = url
		var obj = {};
		var proId = $("#product").attr("proId");
		var paramData = data;
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
			value = $(this).html();
			$(".filter-inItem").html(value);
			$(this).addClass("select");
		});

		$(".dropDown button").click(btnHandler);


		function tpl(data){

			html ="<div class='dropDown'>"
				 +"<div class='ul-container'>"
				 +"<div class='report-detail-header dropDown-header'>"
			     +"<span id='reportName'>销量</span>"
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
		
		function invoice(data) {
			$('#tab-invoice').html('')
			var invoiceHtml =''
			for(var i =0;i<data.length;i++){
				invoiceHtml+=
					'           <li class="tab-invoice-item">\n'+
					'	 		<div class ="list_name">\n'+
                 	'				<div class ="invoice-icon"></div>\n'+
					'           	<span class="invoice-datatime">'+data[i].datetime+'</span>\n'+
                	'				<span class="invoice-name">'+data[i].package_name+'</span>\n'+
                	'				<span class="invoice-number">'+data[i].quantity+'</span>\n'+
           			'			</div>\n'+
            		'			<div class ="list_detail">\n'+
                	'				<div class="list_header">\n'+
                    '					<span class="context_title">分销商</span>\n'+
                    '					<span class="style-f1" id="dealer">'+data[i].seller+'</span>\n'+
                	'				</div>\n'+
                	/*'				<div class="list_header">\n'+
                    '					<span class="context_title">流向编码</span>\n'+
                    '					<span class="style-f1" id="tth_code">'+data[i].tth_code+'</span>\n'+
                	'				</div>\n'+
                	'				<div class="list_header">\n'+
                    '					<span class="context_title">终端编码</span>\n'+
                    '					<span class="style-f1" id="t_code">'+data[i].t_code+'</span>\n'+
                	'				</div>\n'+
                	'				<div class="list_header">\n'+
                    '				<span class="context_title">终端</span>\n'+
                    '				<span class="style-f1" id ="t_name">'+data[i].t_name+'</span>\n'+
                	'				</div>\n'+
					'				<div class="list_header">\n'+
                    '					<span class="context_title">医院编码</span>\n'+
                    '					<span class="style-f1" id="h_code">'+data[i].h_code+'</span>\n'+
					'				</div>\n'+
					'				<div class="list_header">\n'+
                    '					<span class="context_title">医院</span>\n'+
                    '					<span class="style-f1" id="h_name">'+data[i].h_name+'</span>\n'+
                	'				</div>\n'+
                	'				<div class="list_header">\n'+
                    '					<span class="context_title">支</span>\n'+
                    '					<span class="style-f1" id="number">'+data[i].number+'</span>\n'+
                	'				</div>\n'+
					'				<div class="list_header">\n'+
                    '					<span class="context_title">金额</span>\n'+
                    '					<span class="style-f1" id="number">'+data[i].price+'</span>\n'+
                	'				</div>\n'+*/
            		'			</div>\n'+
     				'			</li>'

			}
			$('#tab-invoice').html(invoiceHtml)
        }

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
				value = $(".filter-inItem").html();
				self.html(value);
				$(".dropDown").remove();
				var timeValue = $("#time").text();
				var productValue = $("#product").text();
				var hospitalValue =$("#hospital_id").text();

				if(self.attr("id") == "product"){
					if(productValue == "剂型"){
						$("#product").attr("proId","");
						productValue = '';
					    var obj='{"month":"'+ timeValue+ '","product":"'+ productValue + '","hospital":"'+ hospitalValue +'"}';
					} else {
						$("#product").attr("proId",proId);
						var obj='{"month":"'+ timeValue+ '","product":"'+ proId + '","hospital":"'+ hospitalValue+'"}';
					}
					url += obj;
					getData(url,callback);
				} else if(self.attr("id") == "time"){
					var obj = value;
					var obj = '{"month":"'+ timeValue+ '","product":"'+ proId + '","hospital":"'+ hospitalValue+'"}';
					url += obj
					getData(url,callback);
				}
			}
		};


		function callback(data){
			var invoice_info = data.invoice_list;
			invoice(invoice_info)

			$(".list_name").click(function (){
                    var index =$(this).parent('.tab-invoice-item').index()
                    var is_show = $(".tab-invoice-item").eq(index).children('.list_detail').css('display');
                    if(is_show=='none'){
                     $(".tab-invoice-item").eq(index).children('.list_detail').show();
                     ($(".tab-invoice-item").eq(index).children('.list_name').children('.invoice-icon').css("background-image","url(../img/more_unfold.png)"));
                    }else{
                     $(".tab-invoice-item").eq(index).children('.list_detail').hide();
                     $(".tab-invoice-item").eq(index).children('.list_name').children('.invoice-icon').css("background-image","url(../img/more.png)");
                }
                })
			
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
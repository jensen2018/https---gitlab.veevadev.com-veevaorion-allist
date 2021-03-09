$(document).ready(function () {

    'use strict';


    $('#add-button').click(function(){
         $('.head-main').hide()
         var html = ''
         $('#searchdata').html(html);
         CustomPageUtils.getDataByMethodName('search_data', function(response) {
            var data = response.data||[];
            var html = $('#search-data').tmpl(data)
            $('#searchdata').html(html);
         })
        $('.select-main').show()
    });

    $('#confirm-btn').click(function(){
        var list = [];
        var $list = $('#searchdata');
        $list.children().each(function () {
            var item = $(this);
            var obj = {};
            if (item.children('.search-item').children('.checkbox').is(':checked')){
                obj.id = parseInt(item.attr('id'));
                obj.name = item.children('.search-item').children('.search-item-title').children('.search-item-name').text();
                list.push(obj);
            }
        });
        CustomPageUtils.saveDataByMethodWithParams('search_save', list, function(response) {
            if (response.result === "success") {
                init();
            } else {
                alert(response.message);
            }
        });
    });

    $('#cancel-btn').click(function(){
            init();
        });

    $('.lookup-search-btn').click(function(){
        var searchData = $('#query').val();
        var search = {}
        search.search = searchData
        CustomPageUtils.getDataByMethodWithParams('search_data',search, function(response) {
            var data = response.data||[];
            var html = $('#search-data').tmpl(data)
            $('#searchdata').html(html);
         })
    })

    function init() {
        $('.head-main').show()
        $('.select-main').hide()
        CustomPageUtils.getDataByMethodName('load_data', function(response) {
            var config = response.config;
            var data = response.data||[];
            var html = $('#view-data').tmpl(data)
            $('#viewdata').html(html);
            if (config.enable_edit_button) {
                $('.editable').show();
            }else{
                $('.editable').hide();
            }
            $('#username').text(response.username);
            $('#positionname').text(response.positionname);

            $('.edit-btn').click(function(){
                var index =$(this).parent('.view-action').parent('.item-action').parent('.view-item').parent('.view-data').index();
                $(".view-data").eq(index).children('.view-item').children('.item-data').children('.item-rate').hide();
                $(".view-data").eq(index).children('.view-item').children('.item-data').children('.input').show();
                $(".view-data").eq(index).children('.view-item').children('.item-action').children('.view-action').hide();
                $(".view-data").eq(index).children('.view-item').children('.item-action').children('.edit-action').show();

            });

            $('.delete-btn').click(function(){
                var index =$(this).parent('.view-action').parent('.item-action').parent('.view-item').parent('.view-data').index();
                var list = []
                var obj = {};
                obj.id=$(".view-data").eq(index).attr('id')
                obj.name=$(".view-data").eq(index).children('.view-item').children('.item-title').children('.item-name').text()
                list.push(obj);
                CustomPageUtils.saveDataByMethodWithParams('delete', list, function(response) {
                    if (response.result === "success") {
                        init();
                    } else {
                        alert(response.message);
                    }
                });
            })

            $('.cancel-btn').click(function(){
                var index =$(this).parent('.edit-action').parent('.item-action').parent('.view-item').parent('.view-data').index();
                $(".view-data").eq(index).children('.view-item').children('.item-data').children('.item-rate').show();
                $(".view-data").eq(index).children('.view-item').children('.item-data').children('.input').hide();
                $(".view-data").eq(index).children('.view-item').children('.item-action').children('.view-action').show();
                $(".view-data").eq(index).children('.view-item').children('.item-action').children('.edit-action').hide();
                $(".view-data").eq(index).children('.view-item').children('.item-data').children('.error-data').hide();
            });

            $('.save-btn').click(function(){
                var index =$(this).parent('.edit-action').parent('.item-action').parent('.view-item').parent('.view-data').index();
                $(".view-data").eq(index).children('.view-item').children('.item-data').children('.error-data').hide();
                var inputData =  $(".view-data").eq(index).children('.view-item').children('.item-data').children('.input').val();
                if (inputData != ""){
                    var reg = /^[0-9][\d]{0,12}/;
                    var pattern = new RegExp(reg);
                    if (!pattern.test(inputData)){
                        $(".view-data").eq(index).children('.view-item').children('.item-data').children('.error-data').text('请输入数字');
                        $(".view-data").eq(index).children('.view-item').children('.item-data').children('.error-data').show();
                    }else if (inputData<0||inputData>100){
                        $(".view-data").eq(index).children('.view-item').children('.item-data').children('.error-data').text('请输入0-100之间数字');
                        $(".view-data").eq(index).children('.view-item').children('.item-data').children('.error-data').show();
                    }else{
//                            $(".view-data").eq(index).children('.view-item').children('.item-data').children('.item-rate').text(inputData);
//                            $(".view-data").eq(index).children('.view-item').children('.item-data').children('.item-rate').show();
//                            $(".view-data").eq(index).children('.view-item').children('.item-data').children('.input').hide();
//                            $(".view-data").eq(index).children('.view-item').children('.item-action').children('.view-action').show();
//                            $(".view-data").eq(index).children('.view-item').children('.item-action').children('.edit-action').hide();
                        var list = []
                        var obj = {};
                        obj.id=$(".view-data").eq(index).attr('id')
                        obj.name=$(".view-data").eq(index).children('.view-item').children('.item-title').children('.item-name').text()
                        obj.rate=inputData;
                        list.push(obj);
                        CustomPageUtils.saveDataByMethodWithParams('rate_save', list, function(response) {
                            if (response.result === "success") {
                                init();
                            } else {
                                alert(response.message);
                            }
                        });
                        init();
                    }
                }else{
                    $(".view-data").eq(index).children('.view-item').children('.item-data').children('.error-data').text('请输入比例');
                    $(".view-data").eq(index).children('.view-item').children('.item-data').children('.error-data').show();
                };
            })


        })
    }
    init();


});
